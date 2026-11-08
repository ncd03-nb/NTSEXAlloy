#!/usr/bin/env python3
"""Rebuild the bridge/runtime from source. Pass official API/interface 102 JARs."""
import argparse, hashlib, os, shutil, subprocess, sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def run(*args): subprocess.run(list(map(str,args)),check=True)

def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('android-jar','d8-jar','api-jar','interface-jar','baksmali-jar'):
        p.add_argument('--'+name,type=Path,required=True)
    a=p.parse_args(); build=ROOT/'build'; build.mkdir(exist_ok=True)
    stubs=build/'stubs';stubs.mkdir(exist_ok=True)
    run('javac','--release','17','-d',stubs,*sorted((ROOT/'compile-stubs').rglob('*.java')))
    legacy=build/'compile-only.jar';run('jar','cf',legacy,'-C',stubs,'.')
    run(sys.executable,ROOT/'scripts/build-modern-bridge.py','--android-jar',a.android_jar,
        '--api-jar',a.api_jar,'--interface-jar',a.interface_jar,'--legacy-api',legacy,'--d8-jar',a.d8_jar)
    shutil.copyfile(build/'modern/NTModernBridge.dex',ROOT/'payload/ntmanager/NTModernBridge.dex')
    shutil.copyfile(ROOT/'metadata/LICENSE-libxposed.txt',ROOT/'payload/ntmanager/LICENSE-libxposed.txt')
    classes=build/'runtime-classes';classes.mkdir(exist_ok=True)
    source=ROOT/'src/android/security/ntmanager/NexAlloyRuntime.java'
    run('javac','--release','17','-cp',a.android_jar,'-d',classes,source)
    dex=build/'runtime-dex';dex.mkdir(exist_ok=True)
    run('java','-cp',a.d8_jar,'com.android.tools.r8.D8','--min-api','34','--output',dex,
        classes/'android/security/ntmanager/NexAlloyRuntime.class')
    smali=ROOT/'smali'
    if smali.exists(): shutil.rmtree(smali)
    run('java','-jar',a.baksmali_jar,'d',dex/'classes.dex','-o',smali)
    shutil.copyfile(source,ROOT.parent/'app/src/main/java/utils/ntmanager/NexAlloyRuntime.java')
    entries=sorted((ROOT/'payload/ntmanager').rglob('*'))
    (ROOT/'payload/SHA256SUMS').write_text(''.join(hashlib.sha256(x.read_bytes()).hexdigest()+'  '+x.relative_to(ROOT/'payload').as_posix()+'\n' for x in entries if x.is_file()),newline='\n')

if __name__=='__main__': main()
