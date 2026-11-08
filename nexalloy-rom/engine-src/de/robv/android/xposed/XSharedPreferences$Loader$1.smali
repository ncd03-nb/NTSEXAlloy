.class Lde/robv/android/xposed/XSharedPreferences$Loader$1;
.super Ljava/lang/Thread;
.source "XSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XSharedPreferences$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$pref:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method constructor <init>(Ljava/lang/String;Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lde/robv/android/xposed/XSharedPreferences$Loader$1;->val$pref:Lde/robv/android/xposed/XSharedPreferences;

    iput-object p3, p0, Lde/robv/android/xposed/XSharedPreferences$Loader$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 53
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences$Loader$1;->val$pref:Lde/robv/android/xposed/XSharedPreferences;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lde/robv/android/xposed/XSharedPreferences$Loader$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
