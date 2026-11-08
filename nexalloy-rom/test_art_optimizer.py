"""Exercise the real optimizer against isolated JVM versions of ART's public contracts."""
from pathlib import Path
import os, shutil, subprocess, tempfile, unittest
ROOT=Path(__file__).resolve().parent

FIXTURES={
'android/content/Context.java':'package android.content; public class Context {}',
'android/os/Build.java':'package android.os; public class Build { public static class VERSION { public static int SDK_INT=37; } }',
'android/os/CancellationSignal.java':'package android.os; public class CancellationSignal { public void cancel() {} }',
'android/util/Log.java':'package android.util; public class Log { public static int i(String t,String m) {return 0;} }',
'android/app/AppGlobals.java':'''package android.app;
 public class AppGlobals { public static final PM pm=new PM(); public static PM getPackageManager(){return pm;}
 public static class PM {public boolean legacy;
 public boolean performDexOptMode(String pkg,boolean profiles,String filter,boolean force,boolean boot,String split){
 legacy=pkg.equals("test.app")&&!profiles&&filter.equals("verify")&&force;return legacy;}}
 }''',
'com/android/server/LocalManagerRegistry.java':'''package com.android.server;
 public class LocalManagerRegistry {private static final java.util.Map<Class<?>,Object> sManagers=new java.util.HashMap<>();
 static {sManagers.put(com.android.server.pm.PackageManagerLocal.class,new com.android.server.pm.PackageManagerLocal());
 sManagers.put(com.android.server.art.ArtManagerLocal.class,new com.android.server.art.ArtManagerLocal());}
 public static Object getManager(Class<?> c){return sManagers.get(c);}
 public static void removeArt(){sManagers.remove(com.android.server.art.ArtManagerLocal.class);}}
''',
'com/android/server/pm/PackageManagerLocal.java':'''package com.android.server.pm;
 public class PackageManagerLocal {public static int closed=0;
 public interface FilteredSnapshot extends AutoCloseable {void close();}
 public FilteredSnapshot withFilteredSnapshot(){return () -> {closed++;};}}
''',
'com/android/server/art/model/ArtFlags.java':'''package com.android.server.art.model;
 public class ArtFlags {public static int FLAG_FOR_PRIMARY_DEX=1,FLAG_FOR_SECONDARY_DEX=2,FLAG_FORCE=16,FLAG_FORCE_COMPILER_FILTER=512;}
''',
'com/android/server/art/model/DexoptParams.java':'''package com.android.server.art.model;
 public class DexoptParams {public int flags;public String filter;
 public static class Builder {private final DexoptParams p=new DexoptParams();
 public Builder(String reason){if(!reason.equals("cmdline"))throw new AssertionError();}
 public Builder setCompilerFilter(String s){p.filter=s;return this;} public Builder setFlags(int i){p.flags=i;return this;}
 public DexoptParams build(){return p;}}}
''',
'com/android/server/art/model/DexoptResult.java':'''package com.android.server.art.model;
 public class DexoptResult {public static int DEXOPT_PERFORMED=7,DEXOPT_SKIPPED=8; public int value;
 public DexoptResult(int value){this.value=value;} public int getFinalStatus(){return value;}}
''',
'com/android/server/art/ArtManagerLocal.java':'''package com.android.server.art;
 public class ArtManagerLocal {public static String pkg;public static com.android.server.art.model.DexoptParams params;public static boolean fail;
 public com.android.server.art.model.DexoptResult dexoptPackage(com.android.server.pm.PackageManagerLocal.FilteredSnapshot snap,String name,
 com.android.server.art.model.DexoptParams p,android.os.CancellationSignal signal){pkg=name;params=p;
 return new com.android.server.art.model.DexoptResult(fail?9:7);}}
''',
'com/nothingsvn/nexalloy/OptimizerTest.java':'''package com.nothingsvn.nexalloy;
 public class OptimizerTest {public static void main(String[]args)throws Exception {
 ArtOptimizer.optimize(new android.content.Context(),"test.app");
 if(!com.android.server.art.ArtManagerLocal.pkg.equals("test.app"))throw new AssertionError("Wrong package");
 var p=com.android.server.art.ArtManagerLocal.params;
 if(!p.filter.equals("verify")||p.flags!=(1|2|16|512))throw new AssertionError("Unsafe ART flags/filter");
 if(com.android.server.pm.PackageManagerLocal.closed!=1)throw new AssertionError("Snapshot leak");
 com.android.server.art.ArtManagerLocal.fail=true;
 try{ArtOptimizer.optimize(new android.content.Context(),"test.app");throw new AssertionError("Failed status accepted");}
 catch(IllegalStateException expected){}
 if(com.android.server.pm.PackageManagerLocal.closed!=2)throw new AssertionError("Failure snapshot leak");
 com.android.server.LocalManagerRegistry.removeArt();
 try{ArtOptimizer.optimize(new android.content.Context(),"test.app");throw new AssertionError("Missing manager accepted");}
 catch(ClassNotFoundException expected){}
 android.os.Build.VERSION.SDK_INT=33;ArtOptimizer.optimize(new android.content.Context(),"test.app");
 if(!android.app.AppGlobals.pm.legacy)throw new AssertionError("Legacy arguments differ");
 System.out.println("PASS: modern ART, scoped flags, failure status, snapshot closure, missing registry, legacy API");}}
'''
}

class OptimizerTest(unittest.TestCase):
    def test_real_optimizer_reflection_and_cleanup(self):
        home=os.environ.get('JAVA_HOME')
        javac=str(Path(home)/'bin/javac') if home else shutil.which('javac')
        java=str(Path(home)/'bin/java') if home else shutil.which('java')
        self.assertTrue(javac and java,'JDK required')
        with tempfile.TemporaryDirectory() as temp:
            root=Path(temp)
            for name,text in FIXTURES.items():
                p=root/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text)
            shutil.copyfile(ROOT/'modern-src/com/nothingsvn/nexalloy/ArtOptimizer.java',root/'com/nothingsvn/nexalloy/ArtOptimizer.java')
            subprocess.run([javac,'--release','17','-d',str(root/'classes'),*map(str,root.rglob('*.java'))],check=True,capture_output=True)
            out=subprocess.check_output([java,'-cp',str(root/'classes'),'com.nothingsvn.nexalloy.OptimizerTest'],text=True)
            self.assertIn('PASS:',out);print(out.strip())

if __name__=='__main__':unittest.main()
