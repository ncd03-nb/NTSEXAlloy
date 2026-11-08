#!/usr/bin/env python3
"""Patch affected framework DEX files, preserving all other framework entries."""
import argparse, copy, hashlib, importlib.util, json, re, subprocess, zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parent

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('framework',type=Path)
    parser.add_argument('--work',type=Path,required=True)
    parser.add_argument('--baksmali',type=Path,required=True)
    parser.add_argument('--smali',type=Path,required=True)
    parser.add_argument('--api',default='37')
    args=parser.parse_args();work=args.work.resolve();work.mkdir(parents=True,exist_ok=True)
    spec=importlib.util.spec_from_file_location('integration',ROOT/'install.py')
    integration=importlib.util.module_from_spec(spec);spec.loader.exec_module(integration)
    integration.verify()
    spec=importlib.util.spec_from_file_location('inventory',ROOT/'scripts/dex-inventory.py')
    inventory=importlib.util.module_from_spec(spec);spec.loader.exec_module(inventory)
    targets={'Landroid/security/ntmanager/NTHooks;','Landroid/content/ContentProvider$Transport;',
             'Landroid/app/Instrumentation;'}
    tree=work/'framework.jar.out';tree.mkdir(exist_ok=False)
    with zipfile.ZipFile(args.framework) as src:
        assert len(src.namelist())==len(set(src.namelist())), 'Duplicate framework ZIP entries'
        affected={}
        for name in src.namelist():
            if not re.fullmatch(r'classes(?:[0-9]+)?\.dex',name): continue
            classes=inventory.dex_classes(src.read(name))
            if classes & targets:
                affected[name]=classes
                dex=work/name;dex.write_bytes(src.read(name))
                subprocess.run(['java','-jar',str(args.baksmali),'d','--api',args.api,str(dex),'-o',str(tree/(name+'.out'))],check=True)
        if set.union(set(),*(classes & targets for classes in affected.values()))!=targets:
            raise ValueError('NTManager hook or provider transport missing')
        integration.patch_framework(tree,int(args.api))
        replacements={}
        for name,classes in affected.items():
            result=work/('patched-'+name)
            subprocess.run(['java','-jar',str(args.smali),'a','--api',args.api,str(tree/(name+'.out')),'-o',str(result)],check=True)
            data=result.read_bytes();new_classes=inventory.dex_classes(data)
            added=new_classes-classes
            assert not classes-new_classes and added <= {'Landroid/security/ntmanager/NexAlloyRuntime;'},added
            replacements[name]=data
        result=work/'framework.jar'
        with zipfile.ZipFile(result,'w') as dst:
            for info in src.infolist():
                if info.filename.startswith('ntmanager/') and info.filename in integration.verify(): continue
                dst.writestr(copy.copy(info),replacements.get(info.filename,src.read(info.filename)))
            for rel,p in integration.verify().items(): dst.writestr(rel,p.read_bytes(),compress_type=zipfile.ZIP_STORED)
        with zipfile.ZipFile(result) as dst:
            assert dst.testzip() is None
            for name in src.namelist():
                if name not in replacements and name not in integration.verify(): assert src.read(name)==dst.read(name),name
    report={'original_sha256':hashlib.sha256(args.framework.read_bytes()).hexdigest(),
            'patched_sha256':hashlib.sha256(result.read_bytes()).hexdigest(),
            'affected_dex':list(affected),'result':str(result)}
    (work/'report.json').write_text(json.dumps(report,indent=2))
    print(json.dumps(report,indent=2))

if __name__=='__main__':main()
