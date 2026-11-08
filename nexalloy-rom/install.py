#!/usr/bin/env python3
"""Install a module-free NexAlloy ROM bridge and its management-only system app."""
from pathlib import Path
import argparse, hashlib, importlib.util, re, shutil

HERE=Path(__file__).resolve().parent
MIN_SDK=34

def framework_sdk(images, override=None):
    if override is not None:
        sdk=int(override)
        if sdk < 1: raise ValueError('Invalid framework SDK')
        return sdk
    for rel in ('system/system/build.prop','system/build.prop'):
        path=images/rel
        if not path.is_file(): continue
        props=dict(line.split('=',1) for line in path.read_text().splitlines()
                   if '=' in line and not line.lstrip().startswith('#'))
        for key in ('ro.build.version.sdk','ro.system.build.version.sdk'):
            if key in props: return int(props[key].strip())
    raise ValueError('Cannot determine framework SDK; pass --sdk explicitly')

def load(name, path):
    spec=importlib.util.spec_from_file_location(name,path)
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod);return mod

def verify():
    files={}
    for line in (HERE/'payload/SHA256SUMS').read_text().splitlines():
        digest,rel=line.split()
        p=HERE/'payload'/rel
        if not p.resolve().is_relative_to((HERE/'payload').resolve()): raise ValueError('Unsafe payload path')
        data=p.read_bytes()
        if hashlib.sha256(data).hexdigest()!=digest: raise ValueError('Payload checksum mismatch: '+rel)
        files[rel]=p
    required={'ntmanager/NTXposedEngine.dex','ntmanager/NTModernBridge.dex'}
    if not required.issubset(files) or any(rel.endswith('.apk') for rel in files):
        raise ValueError('Module APKs must not be embedded')
    return files

def patch_framework(tree, sdk=MIN_SDK):
    if int(sdk) < MIN_SDK:
        print('[NexAlloy] Skipped: requires Android 14 / API 34+')
        return
    tree=Path(tree).resolve();files=verify()
    transport=list(tree.rglob('android/content/ContentProvider$Transport.smali'))
    hooks=list(tree.rglob('android/security/ntmanager/NTHooks.smali'))
    if len(transport)!=1 or len(hooks)!=1: raise ValueError('Expected exactly one provider transport and NTHooks')
    # Validate the supported provider layout before editing the tree.
    patcher=load('nexalloy_transport',HERE/'scripts/patch-provider-transport.py')
    patcher.patch(transport[0])
    hook=hooks[0];text=hook.read_text(encoding='utf-8')
    signature='.method public static initContext(Landroid/content/Context;)V'
    start=text.index(signature);end=text.index('.end method',start)
    marker='Landroid/security/ntmanager/NexAlloyRuntime;->init(Landroid/content/Context;)V'
    if marker not in text[start:end]:
        # Isolate loader errors from normal application creation.
        insertion='''
    :nt_nexalloy_try_start
    invoke-static {p0}, Landroid/security/ntmanager/NexAlloyRuntime;->init(Landroid/content/Context;)V
    :nt_nexalloy_try_end
    .catch Ljava/lang/Throwable; {:nt_nexalloy_try_start .. :nt_nexalloy_try_end} :nt_nexalloy_error
    goto :nt_nexalloy_continue
    :nt_nexalloy_error
    move-exception v0
    :nt_nexalloy_continue
'''
        # Existing initContext uses locals and is static, so p0 is stable.
        body=text[start:end]
        if not re.search(r'\.(?:locals|registers) [1-9][0-9]*',body): raise ValueError('No temporary register for runtime guard')
        at=start+re.search(r'\.(?:locals|registers) \d+\n',body).end()
        text=text[:at]+insertion+text[at:]
        hook.write_text(text,encoding='utf-8',newline='\n')
    dex=hook.parents[3]
    assert dex.name.endswith('.dex.out'),dex
    for source in (HERE/'smali').rglob('*.smali'):
        target=dex/source.relative_to(HERE/'smali');target.parent.mkdir(parents=True,exist_ok=True)
        target.write_bytes(source.read_bytes())
    for rel,source in files.items():
        target=tree/rel;target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(source.read_bytes())
    print('[NexAlloy] Embedded verified engine/bridge; module APK remains user-installed')

def metadata_dirs(images):
    result=[images/'config']
    if images.name=='images': result.append(images.parent/'config')
    if images.parent.parent.name=='build': result.append(images.parent.parent.parent/'config')
    return list(dict.fromkeys(result))

def remove_manager(images):
    target=images/'system_ext/app/NexAlloyManager'
    if not target.resolve().is_relative_to(images) or target.is_symlink():
        raise ValueError('Unsafe manager removal path')
    if target.is_dir(): shutil.rmtree(target)
    for directory in metadata_dirs(images):
        for name in ('system_ext_fs_config','system_ext_file_contexts'):
            path=directory/name
            if not path.is_file(): continue
            lines=[]
            for line in path.read_text().splitlines():
                key=line.split()[0].replace('\\.','.') if line.split() else ''
                base='system_ext/app/NexAlloyManager'
                key=key.lstrip('/')
                if key == base or key == base+'(/.*)?' or key.startswith(base+'/'): continue
                lines.append(line)
            path.write_text('\n'.join(lines)+'\n',encoding='utf-8',newline='\n')

def install(images, vendor_policy_version=None, sdk=None):
    images=Path(images).resolve()
    sdk=framework_sdk(images,sdk)
    if sdk < MIN_SDK:
        load('remove_vector',HERE/'remove-vector.py').remove(images,vendor_policy_version)
        remove_manager(images)
        print('[NexAlloy] Skipped: requires Android 14 / API 34+')
        return
    manager=HERE/'app/NexAlloyManager.apk'
    expected=(HERE/'app/SHA256SUMS').read_text().split()[0]
    if hashlib.sha256(manager.read_bytes()).hexdigest()!=expected: raise ValueError('Manager checksum mismatch')
    load('remove_vector',HERE/'remove-vector.py').remove(images,vendor_policy_version)
    # Remove old system-installed module/controller copies, never touch user /data packages.
    system=images/'system/system'
    if not system.is_dir(): system=images/'system'
    for rel in ('priv-app/NexAlloyXES','app/NexAlloyXES','etc/permissions/com.hma.nexalloy.xml'):
        target=system/rel
        if not target.resolve().is_relative_to(images) or target.is_symlink(): raise ValueError('Unsafe retired app path')
        if target.is_dir(): shutil.rmtree(target)
        elif target.is_file(): target.unlink()
    ext=images/'system_ext'
    if not ext.is_dir(): raise ValueError('system_ext tree required')
    target=ext/'app/NexAlloyManager/NexAlloyManager.apk';target.parent.mkdir(parents=True,exist_ok=True)
    shutil.copyfile(manager,target)
    for directory in metadata_dirs(images):
        fs=directory/'system_ext_fs_config';fc=directory/'system_ext_file_contexts'
        if not directory.is_dir(): continue
        for path in (fs,fc):
            text=path.read_text() if path.exists() else ''
            lines=[line for line in text.splitlines() if 'system_ext/app/NexAlloyManager' not in line]
            if path==fs: lines+=['system_ext/app/NexAlloyManager 0 0 0755','system_ext/app/NexAlloyManager/NexAlloyManager.apk 0 0 0644']
            else: lines+=['/system_ext/app/NexAlloyManager u:object_r:system_file:s0',
                          '/system_ext/app/NexAlloyManager/NexAlloyManager\\.apk u:object_r:system_file:s0']
            path.write_text('\n'.join(lines)+'\n',encoding='utf-8',newline='\n')
        for name in ('system_fs_config','system_file_contexts'):
            path=directory/name
            if path.is_file():
                text='\n'.join(line for line in path.read_text().splitlines() if not any(x in line for x in ('NexAlloyXES','com.hma.nexalloy.xml')))+'\n'
                path.write_text(text,encoding='utf-8',newline='\n')
    print('[NexAlloy] Manager installed in system_ext; no module APK and no boot-time installer')

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('images',nargs='?',type=Path)
    parser.add_argument('--framework-tree',type=Path)
    parser.add_argument('--vendor-policy-version')
    parser.add_argument('--sdk',type=int,help='Actual framework SDK (Android 14 is API 34)')
    args=parser.parse_args()
    if args.framework_tree: patch_framework(args.framework_tree,args.sdk if args.sdk is not None else MIN_SDK)
    elif args.images: install(args.images,args.vendor_policy_version,args.sdk)
    else: parser.error('Specify images or --framework-tree')
