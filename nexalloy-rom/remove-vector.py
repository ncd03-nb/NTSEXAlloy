# SPDX-License-Identifier: GPL-3.0-only
# Derived from the NTVector installer removal helper; does not modify /data.
from pathlib import Path
import hashlib, re, shutil
BEGIN = '; NTVector begin'
END = '; NTVector end'
CONTEXT_PATHS = (
    '/system_ext/etc/ntvector(/.*)?', '/system_ext/etc/init/ntvector[.]rc',
    '/system_ext/app/Vector(/.*)?', '/data/misc/ntlsposed(/.*)?',
    '/data/adb/modules/zygisk_vector(/.*)?',
)
ROM_PATHS = ('system_ext/etc/ntvector', 'system_ext/etc/init/ntvector.rc', 'system_ext/app/Vector')

def owned_context(path):
    # Kitchen exports regex-escaped concrete paths as well as installer patterns.
    path = path.replace('\\.', '.').replace('[.]', '.')
    prefixes = tuple('/' + rel for rel in ROM_PATHS) + (
        '/data/misc/ntlsposed', '/data/adb/modules/zygisk_vector')
    return any(path == base or path == base + '(/.*)?' or path.startswith(base + '/')
               for base in prefixes)
def metadata_directories(images):
    result = [images.parent / 'config'] if images.name == 'images' else []
    if images.parent.parent.name == 'build':
        result.append(images.parent.parent.parent / 'config')
    return result


def remove(images, vendor_policy_version=None):
    """Remove the ROM-owned Vector integration, independently of Android version."""
    # Validate every deletion target before changing the extracted tree.
    for rel in ROM_PATHS:
        path = images / rel
        if not path.resolve().is_relative_to(images):
            raise ValueError('Vector removal path escapes image tree: ' + rel)
        if path.is_symlink() or any(p.is_symlink() for p in path.parents if p != images and p.is_relative_to(images)):
            raise ValueError('Vector removal refuses symlink path: ' + rel)
    selinux = images / 'system_ext/etc/selinux'
    vf = images / 'vendor/etc/selinux/plat_sepolicy_vers.txt'
    version = vendor_policy_version or (vf.read_text().strip() if vf.exists() else '')
    if version and not re.fullmatch(r'[0-9]{2,8}(?:[.][0-9]+)?', version):
        raise ValueError('Invalid vendor mapping version')
    mapping = selinux / 'mapping' / (version + '.cil')
    mapping_bytes = mapping.read_bytes() if mapping.is_file() else b''
    for rel in ROM_PATHS:
        path = images / rel
        if path.is_dir():
            shutil.rmtree(path)
        elif path.is_file():
            path.unlink()
    for suffix in ('', '_debug'):
        path = selinux / ('system_ext_sepolicy' + suffix + '.cil')
        if not path.is_file():
            continue
        old = path.read_text()
        new = re.sub(re.escape(BEGIN) + r'.*?' + re.escape(END) + r'\n?', '', old, flags=re.S)
        if new != old:
            path.write_text(new, encoding='utf-8', newline='\n')
            digest = hashlib.sha256(path.read_bytes() + mapping_bytes).hexdigest() + '\n'
            (selinux / ('system_ext_sepolicy_and_mapping' + suffix + '.sha256')).write_text(digest, newline='\n')
    directories = metadata_directories(images) + [images / 'config']
    contexts = {selinux / 'system_ext_file_contexts'}
    contexts.update(d / 'system_ext_file_contexts' for d in directories)
    for path in contexts:
        if not path.is_file():
            continue
        old = path.read_text()
        lines = [line for line in old.splitlines()
                 if not line.split() or not owned_context(line.split()[0])]
        new = '\n'.join(lines) + ('\n' if lines else '')
        if new != old:
            path.write_text(new, encoding='utf-8', newline='\n')
    for directory in directories:
        path = directory / 'system_ext_fs_config'
        if not path.is_file():
            continue
        old = path.read_text()
        lines = [line for line in old.splitlines() if not line.split() or not any(
            line.split()[0] == rel or line.split()[0].startswith(rel + '/') for rel in ROM_PATHS)]
        new = '\n'.join(lines) + ('\n' if lines else '')
        if new != old:
            path.write_text(new, encoding='utf-8', newline='\n')
    print('[NexAlloy] Removed ROM-owned Vector loader, manager and SELinux policy')
