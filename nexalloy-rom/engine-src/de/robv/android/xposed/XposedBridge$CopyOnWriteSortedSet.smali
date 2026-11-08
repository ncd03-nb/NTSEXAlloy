.class public final Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CopyOnWriteSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile transient elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->-$$Nest$sfgetEMPTY_ARRAY()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .registers 4

    .line 324
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 325
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 326
    return v0

    .line 324
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
    :cond_14
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 298
    :try_start_1
    invoke-direct {p0, p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    .line 299
    const/4 v1, 0x0

    if-ltz v0, :cond_a

    .line 300
    monitor-exit p0

    return v1

    .line 302
    :cond_a
    :try_start_a
    iget-object v0, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 303
    iget-object v3, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 305
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 306
    iput-object v0, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    .line 307
    monitor-exit p0

    return v2

    .line 297
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public getSnapshot()[Ljava/lang/Object;
    .registers 2

    .line 332
    iget-object v0, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 312
    :try_start_1
    invoke-direct {p0, p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_27

    .line 313
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b

    .line 314
    monitor-exit p0

    return v1

    .line 316
    :cond_b
    :try_start_b
    iget-object v0, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 317
    iget-object v3, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    invoke-static {v3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    invoke-static {v1, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iput-object v0, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_27

    .line 320
    monitor-exit p0

    return v2

    .line 311
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public size()I
    .registers 2

    .line 293
    iget-object v0, p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
