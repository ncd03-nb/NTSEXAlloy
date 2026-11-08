package de.robv.android.xposed;
/** Compile-only ABI declaration. Never dex this stub into the ROM. */
public abstract class XC_MethodHook {
    public XC_MethodHook(int priority) {}
    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {}
    public static class MethodHookParam {
        public Object thisObject;
        public Object[] args;
        public void setResult(Object value) {}
        public void setThrowable(Throwable error) {}
    }
    public class Unhook { public void unhook() {} }
}
