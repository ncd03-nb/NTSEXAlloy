// SPDX-License-Identifier: GPL-3.0-only
package com.nothingsvn.nexalloy.test;

import android.app.Application;
import android.content.pm.ApplicationInfo;
import android.os.Looper;
import java.lang.reflect.Field;

/** Android-only probe. All synthetic ActivityThread state stays in this process. */
public final class AppHelperProbe {
    private static Field field(Class<?> type, String name) throws Exception {
        Field value = type.getDeclaredField(name);
        value.setAccessible(true);
        return value;
    }

    public static void main(String[] args) throws Exception {
        ClassLoader loader = (ClassLoader) Class.forName("dalvik.system.DexClassLoader")
                .getConstructor(String.class, String.class, String.class, ClassLoader.class)
                .newInstance(args[0], null, null, AppHelperProbe.class.getClassLoader());
        Class<?> helper = Class.forName("android.app.AndroidAppHelper", true, loader);
        Class<?> threadType = Class.forName("android.app.ActivityThread");
        Field current = field(threadType, "sCurrentActivityThread");
        Object previous = current.get(null);
        try {
            current.set(null, null);
            if (helper.getMethod("currentApplication").invoke(null) != null) throw new AssertionError("No app");
            if (helper.getMethod("currentApplicationInfo").invoke(null) != null) throw new AssertionError("No info");
            if (!"android".equals(helper.getMethod("currentPackageName").invoke(null))) throw new AssertionError("Fallback");
            if (Looper.myLooper() == null) Looper.prepare();
            var constructor = threadType.getDeclaredConstructor();
            constructor.setAccessible(true);
            Object thread = constructor.newInstance();
            Class<?> bindType = Class.forName("android.app.ActivityThread$AppBindData");
            var bindConstructor = bindType.getDeclaredConstructor();
            bindConstructor.setAccessible(true);
            Object bound = bindConstructor.newInstance();
            ApplicationInfo info = new ApplicationInfo();
            info.packageName = "test.nexalloy.helper";
            field(bindType, "appInfo").set(bound, info);
            field(bindType, "processName").set(bound, "test.nexalloy.helper:worker");
            field(threadType, "mBoundApplication").set(thread, bound);
            current.set(null, thread);
            if (helper.getMethod("currentApplicationInfo").invoke(null) != info) throw new AssertionError("Bound info before Application");
            if (!info.packageName.equals(helper.getMethod("currentPackageName").invoke(null))) throw new AssertionError("Package");
            Application app = new Application();
            field(threadType, "mInitialApplication").set(thread, app);
            if (helper.getMethod("currentApplication").invoke(null) != app) throw new AssertionError("Application identity");
            if (!Application.getProcessName().equals(helper.getMethod("currentProcessName").invoke(null))) throw new AssertionError("Process name");
            System.out.println("PASS: helper resolution, null defaults, bound info, package, process and Application identity");
        } finally {
            current.set(null, previous);
        }
    }
}
