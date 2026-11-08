.class public abstract Lde/robv/android/xposed/callbacks/XCallback$Param;
.super Ljava/lang/Object;
.source "XCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/callbacks/XCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Param"
.end annotation


# instance fields
.field private callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

.field private objectExtras:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

# API 82 hook-local state, shared by the before/after callbacks of this invocation.
# Keep object identity, including non-Serializable values; never store globally.
.method public synchronized getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lde/robv/android/xposed/callbacks/XCallback$Param;->objectExtras:Ljava/util/Map;
    if-eqz v0, :no_extra
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    return-object v0

    :no_extra
    const/4 v0, 0x0
    return-object v0
.end method

.method public synchronized setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lde/robv/android/xposed/callbacks/XCallback$Param;->objectExtras:Ljava/util/Map;
    if-nez v0, :put_extra
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lde/robv/android/xposed/callbacks/XCallback$Param;->objectExtras:Ljava/util/Map;

    :put_extra
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method protected constructor <init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/robv/android/xposed/callbacks/XCallback$Param;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    return-void
.end method
