.class public final Landroid/app/AndroidAppHelper;
.super Ljava/lang/Object;
.source "AndroidAppHelper.java"

# Xposed application-context ABI used by the original module's download hooks.
# Query ActivityThread each time: do not retain an Activity or stale Application.
.method private constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static currentApplication()Landroid/app/Application;
    .registers 1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;
    move-result-object v0
    return-object v0
.end method

.method public static currentApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;
    move-result-object v0
    if-eqz v0, :no_application
    const-string v1, "mBoundApplication"
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :no_application
    const-string v1, "appInfo"
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/pm/ApplicationInfo;
    return-object v0
    :no_application
    const/4 v0, 0x0
    return-object v0
.end method

.method public static currentPackageName()Ljava/lang/String;
    .registers 1
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    if-eqz v0, :system_package
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    return-object v0
    :system_package
    const-string v0, "android"
    return-object v0
.end method

.method public static currentProcessName()Ljava/lang/String;
    .registers 1
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;
    move-result-object v0
    if-nez v0, :return_name
    const-string v0, "android"
    :return_name
    return-object v0
.end method
