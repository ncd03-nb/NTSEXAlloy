.class public Lde/robv/android/xposed/XposedBridge$HookInfo;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HookInfo"
.end annotation


# instance fields
.field backup:Ljava/lang/reflect/Member;

.field final callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field private final isStatic:Z

.field private final method:Ljava/lang/reflect/Member;

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;)V
    .registers 3

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v0}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    .line 345
    iput-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->method:Ljava/lang/reflect/Member;

    .line 346
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    iput-boolean v0, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->isStatic:Z

    .line 347
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_29

    .line 348
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_29

    .line 350
    iput-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->returnType:Ljava/lang/Class;

    .line 351
    return-void

    .line 354
    :cond_29
    const/4 p1, 0x0

    iput-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->returnType:Ljava/lang/Class;

    .line 355
    return-void
.end method


# virtual methods
.method public callback([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 358
    new-instance v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 359
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->method:Ljava/lang/reflect/Member;

    iput-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 361
    iget-boolean v1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->isStatic:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_15

    .line 362
    iput-object v2, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 363
    iput-object p1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    goto :goto_26

    .line 365
    :cond_15
    aget-object v1, p1, v3

    iput-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 366
    array-length v1, p1

    sub-int/2addr v1, v4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 367
    iget-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v5, p1

    sub-int/2addr v5, v4

    invoke-static {p1, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    :goto_26
    iget-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object p1

    .line 371
    array-length v1, p1

    .line 374
    if-nez v1, :cond_40

    .line 376
    :try_start_2f
    iget-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    iget-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v0, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedBridge;->-$$Nest$sminvokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_39} :catch_3a

    return-object p1

    .line 377
    :catch_3a
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 383
    :cond_40
    const/4 v5, 0x0

    .line 386
    :cond_41
    :try_start_41
    aget-object v6, p1, v5

    check-cast v6, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v6, v0}, Lde/robv/android/xposed/XC_MethodHook;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4f

    .line 393
    nop

    .line 395
    iget-boolean v6, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v6, :cond_59

    .line 396
    add-int/2addr v5, v4

    .line 397
    goto :goto_5d

    .line 387
    :catchall_4f
    move-exception v6

    .line 388
    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 390
    invoke-virtual {v0, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 391
    iput-boolean v3, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 392
    nop

    .line 399
    :cond_59
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v1, :cond_41

    .line 401
    :goto_5d
    iget-boolean v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v1, :cond_77

    .line 403
    :try_start_61
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    iget-object v2, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v3, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->-$$Nest$sminvokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_61 .. :try_end_6e} :catch_6f

    .line 406
    goto :goto_77

    .line 404
    :catch_6f
    move-exception v1

    .line 405
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 409
    :cond_77
    :goto_77
    sub-int/2addr v5, v4

    .line 411
    :cond_78
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 412
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 415
    :try_start_80
    aget-object v3, p1, v5

    check-cast v3, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v3, v0}, Lde/robv/android/xposed/XC_MethodHook;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_88

    .line 423
    goto :goto_95

    .line 416
    :catchall_88
    move-exception v3

    .line 417
    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 419
    if-nez v2, :cond_92

    .line 420
    invoke-virtual {v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_95

    .line 422
    :cond_92
    invoke-virtual {v0, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 424
    :goto_95
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_78

    .line 426
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResultOrThrowable()Ljava/lang/Object;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->returnType:Ljava/lang/Class;

    if-eqz v0, :cond_a7

    .line 428
    iget-object v0, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->returnType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 429
    :cond_a7
    return-object p1
.end method
