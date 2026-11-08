package com.nothingsvn.nexalloy;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.nothingsvn.nexalloy.BridgeContract;
import io.github.libxposed.service.HookedProcess;
import io.github.libxposed.service.IHotReloadCallback;
import io.github.libxposed.service.IXposedScopeCallback;
import io.github.libxposed.service.IXposedService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** Hosts the upstream module's settings without modifying its signed APK. */
public final class NexAlloyService {
    private static NexAlloyService instance;
    private final android.content.Context context;
    private NexAlloyService(android.content.Context context) {
        this.context = context.createDeviceProtectedStorageContext();
        android.content.IntentFilter filter = new android.content.IntentFilter(android.content.Intent.ACTION_PACKAGE_REPLACED);
        filter.addAction(android.content.Intent.ACTION_PACKAGE_REMOVED);
        filter.addDataScheme("package");
        context.registerReceiver(new android.content.BroadcastReceiver() {
            @Override public void onReceive(android.content.Context unused, android.content.Intent intent) {
                if (intent.getData() != null && BridgeContract.MODULE.equals(intent.getData().getSchemeSpecificPart())) {
                    try { forceStop(config().getStringSet("selected", Collections.emptySet())); }
                    catch (Exception error) { Log.w("NTOriginalModule", "Module update unavailable", error); }
                }
            }
        }, filter, android.content.Context.RECEIVER_NOT_EXPORTED);

    }
    private android.content.Context getContext() { return context; }
    public static Bundle call(android.content.Context context, String method, String arg, Bundle extras) {
        NexAlloyService service;
        synchronized (NexAlloyService.class) {
            if (instance == null) {
                long token = Binder.clearCallingIdentity();
                try { instance = new NexAlloyService(context); }
                finally { Binder.restoreCallingIdentity(token); }
            }
            service = instance;
        }
        // Compilation may take seconds. Never hold the service-wide lock during
        // requests: unrelated app startup/preferences must remain responsive.
        return service.dispatch(method, arg, extras);
    }
    private void forceStop(java.util.Collection<String> packages) {
        // Execute outside the incoming Binder identity. Only signed-module scope is accepted.
        new Thread(() -> {
            android.app.ActivityManager am = (android.app.ActivityManager) context.getSystemService(android.content.Context.ACTIVITY_SERVICE);
            for (String pkg : packages) try {
                android.content.pm.ApplicationInfo target = context.getPackageManager().getApplicationInfo(pkg, 0);
                if (target.uid % 100000 < 10000 || target.uid == context.getApplicationInfo().uid) continue;
                android.app.ActivityManager.class.getMethod("forceStopPackage", String.class).invoke(am, pkg);
            } catch (Exception error) { Log.w("NTOriginalModule", "Cannot restart " + pkg, error); }
        }, "nexalloy-app-restart").start();
    }

    private Bundle module() {
        long token = Binder.clearCallingIdentity();
        try { return BridgeContract.inspect(getContext()); }
        catch (Exception error) { throw new SecurityException("Original NexAlloy unavailable", error); }
        finally { Binder.restoreCallingIdentity(token); }
    }

    private boolean moduleCaller() {
        int uid = Binder.getCallingUid();
        long token = Binder.clearCallingIdentity();
        try {
            PackageInfo info = getContext().getPackageManager().getPackageInfo(BridgeContract.MODULE,
                    PackageManager.GET_SIGNING_CERTIFICATES);
            return info.applicationInfo != null && info.applicationInfo.uid == uid && BridgeContract.trusted(info);
        } catch (Exception unavailable) { return false; }
        finally { Binder.restoreCallingIdentity(token); }
    }

    private void enforceModuleCaller() {
        if (!moduleCaller()) throw new SecurityException("Only the signed original module may change its settings");
    }

    private SharedPreferences config() {
        return getContext().getSharedPreferences("original-module-scope", 0);
    }
    private List<String> selected() {
        List<String> declared = module().getStringArrayList("scope");
        Set<String> selected = config().getStringSet("selected", new HashSet<>(declared));
        ArrayList<String> result = new ArrayList<>(declared);
        result.retainAll(selected);
        return result;
    }
    private List<String> scope() {
        return config().getBoolean("enabled", false) ? selected() : Collections.emptyList();
    }
    private void enforceManager() {
        int uid = Binder.getCallingUid();
        long token = Binder.clearCallingIdentity();
        try {
            PackageInfo info = context.getPackageManager().getPackageInfo("com.hma.nexalloy",
                    PackageManager.GET_SIGNING_CERTIFICATES);
            if (uid / 100000 != context.getApplicationInfo().uid / 100000 ||
                info.applicationInfo == null || info.applicationInfo.uid != uid ||
                (info.applicationInfo.flags & android.content.pm.ApplicationInfo.FLAG_SYSTEM) == 0 ||
                !BridgeContract.signedBy(info, "9f9c6da451bfbf5fa9633eb852e62438f751cf4dd34a85b814a50d711ff9fcfe"))
                throw new SecurityException("Only the signed ROM manager is authorized");
        } catch (PackageManager.NameNotFoundException missing) { throw new SecurityException(missing); }
        finally { Binder.restoreCallingIdentity(token); }
    }
    private Bundle managerState() {
        Bundle result = new Bundle();
        try {
            Bundle metadata = module();
            result.putAll(metadata);
            result.putBoolean("installed", true);
            result.putStringArrayList("selected", new ArrayList<>(selected()));
        } catch (SecurityException unavailable) {
            result.putBoolean("installed", false);
            result.putString("error", unavailable.getMessage());
        }
        result.putBoolean("enabled", config().getBoolean("enabled", false));
        return result;
    }
    private void checkTarget(String pkg) {
        if (pkg == null || !module().getStringArrayList("scope").contains(pkg))
            throw new SecurityException("Package outside the signed module scope");
    }
    private Bundle manage(String operation, String pkg, Bundle extras) {
        enforceManager();
        long token = Binder.clearCallingIdentity();
        try {
            if ("manager".equals(operation)) return managerState();
            if ("enabled".equals(operation)) {
                List<String> affected = selected();
                if (extras == null || !config().edit().putBoolean("enabled", extras.getBoolean("value")).commit())
                    throw new IllegalStateException("Cannot save master switch");
                forceStop(affected);
            } else {
                checkTarget(pkg);
                if ("selected".equals(operation)) {
                    Set<String> keep = new HashSet<>(selected());
                    if (extras == null) throw new IllegalArgumentException("Missing selection");
                    if (extras.getBoolean("value")) keep.add(pkg); else keep.remove(pkg);
                    if (!config().edit().putStringSet("selected", keep).commit())
                        throw new IllegalStateException("Cannot save scope");
                    forceStop(Collections.singletonList(pkg));
                } else if ("stop".equals(operation) || "optimize".equals(operation)) {
                    android.content.pm.ApplicationInfo target;
                    try { target = context.getPackageManager().getApplicationInfo(pkg, 0); }
                    catch (PackageManager.NameNotFoundException error) { throw new IllegalArgumentException("App is not installed"); }
                    if (target.uid % 100000 < 10000 || target.uid == context.getApplicationInfo().uid)
                        throw new SecurityException("System UID targets are not supported");
                    android.app.ActivityManager.class.getMethod("forceStopPackage", String.class).invoke(
                            context.getSystemService(android.content.Context.ACTIVITY_SERVICE), pkg);
                    if ("optimize".equals(operation)) {
                        ArtOptimizer.optimize(context, pkg);
                    }
                } else throw new IllegalArgumentException("Unknown manager operation");
            }
            return managerState();
        } catch (ReflectiveOperationException error) { throw new IllegalStateException(error); }
        finally { Binder.restoreCallingIdentity(token); }
    }

    private void enforceRead(String group) {
        if (Binder.getCallingUid() / 100000 != context.getApplicationInfo().uid / 100000)
            throw new SecurityException("Cross-user module preferences are not supported");
        if (moduleCaller()) return;
        String[] packages = getContext().getPackageManager().getPackagesForUid(Binder.getCallingUid());
        if (packages != null) for (String pkg : packages) {
            if (scope().contains(pkg) && (pkg.equals(group) || "prefs".equals(group))) return;
        }
        throw new SecurityException("Preferences outside caller scope");
    }

    private SharedPreferences preferences(String group) {
        if (group == null || !group.matches("[A-Za-z0-9._-]{1,180}")) throw new IllegalArgumentException("Invalid preference group");
        if (!"prefs".equals(group) && !module().getStringArrayList("scope").contains(group))
            throw new IllegalArgumentException("Unknown preference group");
        return getContext().getSharedPreferences("original-module-" + group, 0);
    }

    private Bundle read(String group) {
        Bundle result = new Bundle();
        result.putSerializable("map", new HashMap<>(preferences(group).getAll()));
        return result;
    }

    private void update(String group, Bundle changes) {
        if (changes == null || changes.size() > 8) throw new IllegalArgumentException("Invalid preferences update");
        SharedPreferences.Editor editor = preferences(group).edit();
        if (changes.getBoolean("clear")) editor.clear();
        Object deleted = changes.getSerializable("delete");
        if (deleted instanceof Set) for (Object key : (Set<?>) deleted) editor.remove(validKey(key));
        Object put = changes.getSerializable("put");
        if (put instanceof Map) {
            if (((Map<?, ?>) put).size() > 1024) throw new IllegalArgumentException("Too many preference values");
            for (Map.Entry<?, ?> e : ((Map<?, ?>) put).entrySet()) {
                String key = validKey(e.getKey()); Object value = e.getValue();
                if (value instanceof Boolean) editor.putBoolean(key, (Boolean) value);
                else if (value instanceof Integer) editor.putInt(key, (Integer) value);
                else if (value instanceof Long) editor.putLong(key, (Long) value);
                else if (value instanceof Float) editor.putFloat(key, (Float) value);
                else if (value instanceof String && ((String) value).length() <= 32768) editor.putString(key, (String) value);
                else if (value instanceof Set) {
                    Set<String> set = new HashSet<>();
                    for (Object item : (Set<?>) value) set.add(validKey(item));
                    editor.putStringSet(key, set);
                } else throw new IllegalArgumentException("Unsupported preference value");
            }
        }
        if (!editor.commit()) throw new IllegalStateException("Cannot persist module preferences");
        Log.i("NTOriginalModule", "preferences saved for " + group);
        if (scope().contains(group)) forceStop(Collections.singletonList(group));
    }

    private static String validKey(Object value) {
        if (!(value instanceof String) || ((String) value).length() > 512) throw new IllegalArgumentException("Invalid preference key");
        return (String) value;
    }

    private Bundle dispatch(String method, String arg, Bundle extras) {
        if (method.equals("manager") || method.equals("enabled") || method.equals("selected") ||
                method.equals("stop") || method.equals("optimize")) return manage(method, arg, extras);
        if ("module".equals(method)) {
            Bundle result = module(); // APK metadata is public; preferences are scoped below.
            result.putStringArrayList("enabledScope", new ArrayList<>(scope()));
            return result;
        }
        if ("prefs".equals(method)) { enforceRead(arg); return read(arg); }
        if ("service".equals(method)) {
            enforceModuleCaller();
            Bundle result = new Bundle(); result.putBinder("binder", new Service()); return result;
        }
        throw new IllegalArgumentException("Unknown bridge operation");
    }

    private final class Service extends IXposedService.Stub {
        private void authorize() { enforceModuleCaller(); }
        @Override public int getApiVersion() { authorize(); return 102; }
        @Override public String getFrameworkName() { authorize(); return "NTFramework"; }
        @Override public String getFrameworkVersion() { authorize(); return "original-apk-1"; }
        @Override public long getFrameworkVersionCode() { authorize(); return 1; }
        @Override public long getFrameworkProperties() { authorize(); return PROP_CAP_REMOTE; }
        @Override public List<String> getScope() { authorize(); return scope(); }
        @Override public void requestScope(List<String> requested, IXposedScopeCallback callback) throws RemoteException {
            authorize();
            Set<String> approved = new HashSet<>(selected());
            for (String pkg : requested) if (module().getStringArrayList("scope").contains(pkg)) approved.add(pkg);
            getContext().getSharedPreferences("original-module-scope", 0).edit().putStringSet("selected", approved).commit();
            if (callback != null) callback.onScopeRequestApproved(new ArrayList<>(approved));
        }
        @Override public void removeScope(List<String> removed) {
            authorize();
            List<String> affected = new ArrayList<>(scope()); affected.retainAll(removed);
            Set<String> keep = new HashSet<>(selected()); keep.removeAll(affected);
            getContext().getSharedPreferences("original-module-scope", 0).edit().putStringSet("selected", keep).commit();
            forceStop(affected);
        }
        @Override public List<HookedProcess> getRunningTargets() { authorize(); return Collections.emptyList(); }
        @Override public void hotReloadModule(long token, Bundle data, IHotReloadCallback callback) throws RemoteException {
            authorize(); if (callback != null) callback.onHotReloadResult(HOT_RELOAD_UNSUPPORTED, "Restart the target app to load the installed APK");
        }
        @Override public Bundle requestRemotePreferences(String name) { authorize(); return read(name); }
        @Override public void updateRemotePreferences(String name, Bundle changes) { authorize(); update(name, changes); }
        @Override public void deleteRemotePreferences(String name) { authorize(); preferences(name).edit().clear().commit(); }
        @Override public String[] listRemoteFiles() { authorize(); return new String[0]; }
        @Override public ParcelFileDescriptor openRemoteFile(String name) { authorize(); throw new UnsupportedOperationException("No shared module files"); }
        @Override public boolean deleteRemoteFile(String name) { authorize(); return false; }
    }

}
