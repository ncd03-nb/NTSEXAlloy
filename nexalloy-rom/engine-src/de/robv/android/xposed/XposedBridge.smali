.class public Lde/robv/android/xposed/XposedBridge;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/XposedBridge$HookInfo;,
        Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;
    }
.end annotation


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "AliuHook-XposedBridge"

.field private static final callbackMethod:Ljava/lang/reflect/Method;

.field private static final hookRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Member;",
            "Lde/robv/android/xposed/XposedBridge$HookInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetEMPTY_ARRAY()[Ljava/lang/Object;
    .registers 1

    sget-object v0, Lde/robv/android/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sminvokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 20
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 25
    :try_start_6
    const-class v0, Lde/robv/android/xposed/XposedBridge$HookInfo;

    const-string v1, "callback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/XposedBridge;->callbackMethod:Ljava/lang/reflect/Method;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_25

    .line 28
    nop

    .line 32
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lde/robv/android/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    return-void

    .line 26
    :catchall_25
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 262
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->allocateInstance0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static native allocateInstance0(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private static checkMethod(Ljava/lang/reflect/Member;)V
    .registers 2

    .line 76
    if-eqz p0, :cond_26

    .line 78
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_b

    goto :goto_13

    .line 79
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "method must be a Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    .line 82
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 84
    return-void

    .line 83
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "method must not be abstract"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "method must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native deoptimize0(Ljava/lang/reflect/Member;)Z
.end method

.method public static deoptimizeMethod(Ljava/lang/reflect/Member;)Z
    .registers 1

    .line 114
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->checkMethod(Ljava/lang/reflect/Member;)V

    .line 115
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->deoptimize0(Ljava/lang/reflect/Member;)Z

    move-result p0

    return p0
.end method

.method public static native disableHiddenApiRestrictions()Z
.end method

.method public static native disableProfileSaver()Z
.end method

.method private static native hook0(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    .line 176
    invoke-static {v3, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 177
    :cond_19
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 159
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_23

    aget-object v3, p0, v2

    .line 160
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 161
    invoke-static {v3, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 162
    :cond_23
    return-object v0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 5

    .line 126
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->checkMethod(Ljava/lang/reflect/Member;)V

    .line 127
    if-eqz p1, :cond_41

    .line 130
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    monitor-enter v0

    .line 131
    :try_start_8
    sget-object v1, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/XposedBridge$HookInfo;

    .line 132
    if-nez v1, :cond_2f

    .line 133
    new-instance v1, Lde/robv/android/xposed/XposedBridge$HookInfo;

    invoke-direct {v1, p0}, Lde/robv/android/xposed/XposedBridge$HookInfo;-><init>(Ljava/lang/reflect/Member;)V

    .line 134
    sget-object v2, Lde/robv/android/xposed/XposedBridge;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, v2}, Lde/robv/android/xposed/XposedBridge;->hook0(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_27

    .line 136
    iput-object v2, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    .line 137
    sget-object v2, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 135
    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to hook method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_2f
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3e

    .line 141
    iget-object v0, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v0, p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;-><init>(Lde/robv/android/xposed/XC_MethodHook;Ljava/lang/reflect/Member;)V

    return-object v0

    .line 139
    :catchall_3e
    move-exception p0

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0

    .line 127
    :cond_41
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs invokeConstructor(Ljava/lang/Object;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:TS;>(TT;",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 277
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    if-nez v0, :cond_15

    .line 280
    array-length v0, p2

    if-nez v0, :cond_10

    const/4 p2, 0x0

    .line 281
    :cond_10
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeConstructor0(Ljava/lang/Object;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 279
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "varargs parameters are not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native invokeConstructor0(Ljava/lang/Object;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method private static invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 244
    instance-of v0, p0, Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 245
    check-cast p0, Ljava/lang/reflect/Method;

    .line 246
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 247
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 249
    :cond_f
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 250
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 251
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 226
    if-nez p2, :cond_4

    .line 227
    sget-object p2, Lde/robv/android/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 229
    :cond_4
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/XposedBridge$HookInfo;

    .line 232
    if-eqz v0, :cond_15

    .line 233
    :try_start_e
    iget-object p0, v0, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 235
    :cond_15
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->checkMethod(Ljava/lang/reflect/Member;)V

    .line 236
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1c} :catch_1d

    return-object p0

    .line 237
    :catch_1d
    move-exception p0

    .line 239
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The class this Constructor belongs to is abstract and cannot be instantiated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isHooked(Ljava/lang/reflect/Member;)Z
    .registers 2

    .line 92
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static native isHooked0(Ljava/lang/reflect/Member;)Z
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    .line 438
    const-string v0, "AliuHook-XposedBridge"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .registers 3

    .line 434
    const-string v0, "AliuHook-XposedBridge"

    const-string v1, "Uncaught Exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    return-void
.end method

.method public static makeClassInheritable(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_7

    .line 104
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->makeClassInheritable0(Ljava/lang/Class;)Z

    move-result p0

    return p0

    .line 102
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "class must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native makeClassInheritable0(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method private static native unhook0(Ljava/lang/reflect/Member;)Z
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    monitor-enter v0

    .line 192
    :try_start_3
    sget-object v1, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/XposedBridge$HookInfo;

    .line 193
    if-eqz v1, :cond_22

    .line 194
    iget-object v2, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v2, p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object p1, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 196
    sget-object p1, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->unhook0(Ljava/lang/reflect/Member;)Z

    .line 200
    :cond_22
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method
