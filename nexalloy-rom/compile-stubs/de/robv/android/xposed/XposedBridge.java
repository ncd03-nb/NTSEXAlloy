package de.robv.android.xposed;
import java.lang.reflect.Member;
/** Compile-only ABI declaration. The native engine supplies the implementation. */
public final class XposedBridge {
    public static XC_MethodHook.Unhook hookMethod(Member method, XC_MethodHook callback) { throw new UnsupportedOperationException(); }
    public static Object invokeOriginalMethod(Member method, Object receiver, Object[] args) throws Throwable { throw new UnsupportedOperationException(); }
}
