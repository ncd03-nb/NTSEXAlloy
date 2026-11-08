// SPDX-License-Identifier: GPL-3.0-only
package com.nothingsvn.nexalloy.test;

/** Runs on Android via app_process against a freshly rebuilt API shim DEX. */
public final class HookExtrasProbe {
    public static void main(String[] args) throws Exception {
        ClassLoader loader = (ClassLoader) Class.forName("dalvik.system.DexClassLoader")
                .getConstructor(String.class, String.class, String.class, ClassLoader.class)
                .newInstance(args[0], null, null, HookExtrasProbe.class.getClassLoader());
        Class<?> param = Class.forName("de.robv.android.xposed.XC_MethodHook$MethodHookParam", true, loader);
        Object first = param.getConstructor().newInstance();
        Object second = param.getConstructor().newInstance();
        var get = param.getMethod("getObjectExtra", String.class);
        var set = param.getMethod("setObjectExtra", String.class, Object.class);
        if (get.invoke(first, "key") != null) throw new AssertionError("Missing value");
        Object value = new Object(); // Deliberately not Serializable.
        set.invoke(first, "key", value);
        if (get.invoke(first, "key") != value) throw new AssertionError("Lost object identity");
        if (get.invoke(second, "key") != null) throw new AssertionError("Cross-invocation leak");
        set.invoke(first, "other", Boolean.TRUE);
        if (get.invoke(first, "other") != Boolean.TRUE) throw new AssertionError("Independent key");
        set.invoke(first, "key", (Object) null);
        if (get.invoke(first, "key") != null) throw new AssertionError("Null overwrite");
        if (get.invoke(first, "other") != Boolean.TRUE) throw new AssertionError("Overwrote other key");
        System.out.println("PASS: inherited API, object identity, invocation isolation, keys and null values");
    }
}
