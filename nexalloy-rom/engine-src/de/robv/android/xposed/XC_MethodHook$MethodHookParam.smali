.class public final Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
.super Lde/robv/android/xposed/callbacks/XCallback$Param;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodHookParam"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Member;

.field private result:Ljava/lang/Object;

.field returnEarly:Z

.field public thisObject:Ljava/lang/Object;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lde/robv/android/xposed/callbacks/XCallback$Param;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 93
    iput-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 81
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .registers 2

    .line 98
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultOrThrowable()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 137
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0

    .line 136
    :cond_7
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 114
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hasThrowable()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 108
    const/4 p1, 0x0

    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 109
    const/4 p1, 0x1

    iput-boolean p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 110
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 129
    const/4 p1, 0x0

    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 130
    const/4 p1, 0x1

    iput-boolean p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 131
    return-void
.end method
