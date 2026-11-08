.class public final synthetic Lde/robv/android/xposed/XSharedPreferences$Loader$-CC;
.super Ljava/lang/Object;
.source "XSharedPreferences.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lde/robv/android/xposed/XSharedPreferences$Loader;->SYNC:Lde/robv/android/xposed/XSharedPreferences$Loader;

    return-void
.end method

.method public static synthetic lambda$static$0(Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "pref"    # Lde/robv/android/xposed/XSharedPreferences;
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 44
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 46
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 48
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 49
    nop

    .line 50
    return-void

    .line 48
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 49
    throw v1
.end method

.method public static synthetic lambda$static$1(Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "pref"    # Lde/robv/android/xposed/XSharedPreferences;
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences$Loader$1;

    const-string v1, "XSharedPreferences-load"

    invoke-direct {v0, v1, p0, p1}, Lde/robv/android/xposed/XSharedPreferences$Loader$1;-><init>(Ljava/lang/String;Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences$Loader$1;->start()V

    .line 51
    return-void
.end method
