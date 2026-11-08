// SPDX-License-Identifier: GPL-3.0-only
package com.nothingsvn.nexalloy;

import android.content.Context;
import android.os.CancellationSignal;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/** Uses the existing system-server ART manager, never a shell-only CLI or a new service loader. */
final class ArtOptimizer {
    private ArtOptimizer() {}

    private static Class<?> registeredType(Class<?> registry, String name) throws ReflectiveOperationException {
        Field field = registry.getDeclaredField("sManagers");
        field.setAccessible(true);
        Map<?, ?> managers = (Map<?, ?>) field.get(null);
        // ART is loaded from a standalone system-server JAR. Find its already-registered
        // Class token instead of loading another copy with an empty manager registry.
        synchronized (managers) {
            for (Object key : new ArrayList<>(managers.keySet())) {
                if (key instanceof Class && ((Class<?>) key).getName().equals(name)) return (Class<?>) key;
            }
        }
        throw new ClassNotFoundException("System manager not registered: " + name);
    }

    static void optimize(Context context, String pkg) throws ReflectiveOperationException {
        Object pm = Class.forName("android.app.AppGlobals").getMethod("getPackageManager").invoke(null);
        if (android.os.Build.VERSION.SDK_INT < 34) {
            java.lang.reflect.Method method = pm.getClass().getMethod("performDexOptMode",
                    String.class, boolean.class, String.class, boolean.class, boolean.class, String.class);
            method.setAccessible(true);
            if (!Boolean.TRUE.equals(method.invoke(pm, pkg, false, "verify", true, true, null)))
                throw new IllegalStateException("Package manager could not optimize " + pkg);
            return;
        }
        Class<?> registry = Class.forName("com.android.server.LocalManagerRegistry", false, pm.getClass().getClassLoader());
        Class<?> packageType = registeredType(registry, "com.android.server.pm.PackageManagerLocal");
        Class<?> artType = registeredType(registry, "com.android.server.art.ArtManagerLocal");
        Object packageManager = registry.getMethod("getManager", Class.class).invoke(null, packageType);
        Object art = registry.getMethod("getManager", Class.class).invoke(null, artType);
        ClassLoader loader = artType.getClassLoader();
        Class<?> paramsType = Class.forName("com.android.server.art.model.DexoptParams", false, loader);
        Class<?> builderType = Class.forName("com.android.server.art.model.DexoptParams$Builder", false, loader);
        Class<?> flagsType = Class.forName("com.android.server.art.model.ArtFlags", false, loader);
        int flags = flagsType.getField("FLAG_FOR_PRIMARY_DEX").getInt(null)
                | flagsType.getField("FLAG_FOR_SECONDARY_DEX").getInt(null)
                | flagsType.getField("FLAG_FORCE").getInt(null);
        try { flags |= flagsType.getField("FLAG_FORCE_COMPILER_FILTER").getInt(null); }
        catch (NoSuchFieldException oldApi) { /* Optional before newer ART releases. */ }
        Object builder = builderType.getConstructor(String.class).newInstance("cmdline");
        builderType.getMethod("setCompilerFilter", String.class).invoke(builder, "verify");
        builderType.getMethod("setFlags", int.class).invoke(builder, flags);
        Object params = builderType.getMethod("build").invoke(builder);
        Class<?> snapshotType = Class.forName("com.android.server.pm.PackageManagerLocal$FilteredSnapshot", false, packageType.getClassLoader());
        CancellationSignal cancellation = new CancellationSignal();
        FutureTask<Object> work = new FutureTask<>(() -> {
            Object snapshot = packageType.getMethod("withFilteredSnapshot").invoke(packageManager);
            try {
                return artType.getMethod("dexoptPackage", snapshotType, String.class, paramsType, CancellationSignal.class)
                        .invoke(art, snapshot, pkg, params, cancellation);
            } finally { ((AutoCloseable) snapshot).close(); }
        });
        new Thread(work, "nexalloy-art-optimize").start();
        Object result;
        try { result = work.get(45, TimeUnit.SECONDS); }
        catch (java.util.concurrent.TimeoutException timeout) {
            cancellation.cancel();
            throw new IllegalStateException("ART optimization timed out", timeout);
        } catch (InterruptedException interrupted) {
            cancellation.cancel(); Thread.currentThread().interrupt();
            throw new IllegalStateException("ART optimization interrupted", interrupted);
        } catch (java.util.concurrent.ExecutionException failure) {
            Throwable cause = failure.getCause();
            if (cause instanceof InvocationTargetException && cause.getCause() != null) cause = cause.getCause();
            throw new IllegalStateException("ART optimization failed: " + cause, cause);
        }
        Class<?> resultType = Class.forName("com.android.server.art.model.DexoptResult", false, loader);
        int status = (Integer) resultType.getMethod("getFinalStatus").invoke(result);
        if (status != resultType.getField("DEXOPT_PERFORMED").getInt(null)
                && status != resultType.getField("DEXOPT_SKIPPED").getInt(null))
            throw new IllegalStateException("ART optimization did not complete, status=" + status);
        android.util.Log.i("NTOriginalModule", "ART optimize completed package=" + pkg + " status=" + status);
    }
}
