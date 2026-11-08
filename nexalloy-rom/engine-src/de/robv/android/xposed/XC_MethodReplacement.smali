.class public abstract Lde/robv/android/xposed/XC_MethodReplacement;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XC_MethodReplacement.java"


# static fields
.field public static final DO_NOTHING:Lde/robv/android/xposed/XC_MethodReplacement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    new-instance v0, Lde/robv/android/xposed/XC_MethodReplacement$1;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Lde/robv/android/xposed/XC_MethodReplacement$1;-><init>(I)V

    sput-object v0, Lde/robv/android/xposed/XC_MethodReplacement;->DO_NOTHING:Lde/robv/android/xposed/XC_MethodReplacement;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lde/robv/android/xposed/XC_MethodHook;-><init>(I)V

    .line 34
    return-void
.end method

.method public static returnConstant(ILjava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;
    .registers 3

    .line 95
    new-instance v0, Lde/robv/android/xposed/XC_MethodReplacement$2;

    invoke-direct {v0, p0, p1}, Lde/robv/android/xposed/XC_MethodReplacement$2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;
    .registers 2

    .line 85
    const/16 v0, 0x32

    invoke-static {v0, p0}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    return-void
.end method

.method protected final beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/XC_MethodReplacement;->replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 46
    goto :goto_c

    .line 44
    :catchall_8
    move-exception v0

    .line 45
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 47
    :goto_c
    return-void
.end method

.method protected abstract replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
