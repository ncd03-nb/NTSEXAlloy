.class public Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 517
    const/16 v0, 0x25

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 518
    const/16 v0, 0x11

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 519
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "initialNonZeroOddNumber"    # I
    .param p2, "multiplierNonZeroOddNumber"    # I

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 539
    if-eqz p1, :cond_2f

    .line 542
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_27

    .line 545
    if-eqz p2, :cond_1f

    .line 548
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_17

    .line 551
    iput p2, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 552
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 553
    return-void

    .line 549
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 136
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 151
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 152
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lexternal/org/apache/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_13

    new-instance v1, Lexternal/org/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .registers 11
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "builder"    # Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .param p3, "useTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    return-void

    .line 177
    :cond_7
    :try_start_7
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 179
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 180
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_59

    aget-object v3, v0, v2

    .line 181
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lexternal/org/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 182
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_56

    if-nez p3, :cond_3b

    .line 183
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_56

    .line 184
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_5e

    if-nez v4, :cond_56

    .line 186
    :try_start_45
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 187
    .local v4, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p2, v4}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5e

    .line 192
    .end local v4    # "fieldValue":Ljava/lang/Object;
    goto :goto_56

    .line 188
    :catch_4d
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_4e
    new-instance v2, Ljava/lang/InternalError;

    const-string v4, "Unexpected IllegalAccessException"

    invoke-direct {v2, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .end local p0    # "object":Ljava/lang/Object;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "builder":Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .end local p3    # "useTransients":Z
    .end local p4    # "excludeFields":[Ljava/lang/String;
    throw v2
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_5e

    .line 180
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local p0    # "object":Ljava/lang/Object;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "builder":Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .restart local p3    # "useTransients":Z
    .restart local p4    # "excludeFields":[Ljava/lang/String;
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 196
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    :cond_59
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_5e
    move-exception v0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    .line 197
    throw v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .registers 10
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    .end local p0    # "initialNonZeroOddNumber":I
    .end local p1    # "multiplierNonZeroOddNumber":I
    .end local p2    # "object":Ljava/lang/Object;
    .local v1, "initialNonZeroOddNumber":I
    .local v2, "multiplierNonZeroOddNumber":I
    .local v3, "object":Ljava/lang/Object;
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .registers 11
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z

    .line 282
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    .end local p0    # "initialNonZeroOddNumber":I
    .end local p1    # "multiplierNonZeroOddNumber":I
    .end local p2    # "object":Ljava/lang/Object;
    .end local p3    # "testTransients":Z
    .local v1, "initialNonZeroOddNumber":I
    .local v2, "multiplierNonZeroOddNumber":I
    .local v3, "object":Ljava/lang/Object;
    .local v4, "testTransients":Z
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 9
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p3, "testTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 335
    .local p2, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    if-eqz p2, :cond_23

    .line 338
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    .line 339
    .local v0, "builder":Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 340
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2, v1, v0, p3, p5}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 341
    :goto_e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1e

    if-eq v1, p4, :cond_1e

    .line 342
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 343
    invoke-static {p2, v1, v0, p3, p5}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_e

    .line 345
    :cond_1e
    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2

    .line 336
    .end local v0    # "builder":Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object to build a hash code for must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 417
    .local p1, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .registers 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "testTransients"    # Z

    .line 381
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/16 v1, 0x11

    const/16 v2, 0x25

    const/4 v5, 0x0

    move-object v3, p0

    move v4, p1

    .end local p0    # "object":Ljava/lang/Object;
    .end local p1    # "testTransients":Z
    .local v3, "object":Ljava/lang/Object;
    .local v4, "testTransients":Z
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .line 455
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x11

    const/16 v1, 0x25

    move-object v2, p0

    move-object v5, p1

    .end local p0    # "object":Ljava/lang/Object;
    .end local p1    # "excludeFields":[Ljava/lang/String;
    .local v2, "object":Ljava/lang/Object;
    .local v5, "excludeFields":[Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static register(Ljava/lang/Object;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 467
    const-class v0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v0

    .line 468
    :try_start_3
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_13

    .line 469
    sget-object v1, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 471
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_21

    .line 472
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lexternal/org/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    return-void

    .line 471
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method static unregister(Ljava/lang/Object;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 488
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 489
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lexternal/org/apache/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_28

    .line 490
    new-instance v1, Lexternal/org/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 491
    const-class v1, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v1

    .line 493
    :try_start_11
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 494
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 495
    sget-object v2, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 497
    :cond_23
    monitor-exit v1

    goto :goto_28

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v2

    .line 499
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public append(B)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # B

    .line 613
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 614
    return-object p0
.end method

.method public append(C)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # C

    .line 649
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 650
    return-object p0
.end method

.method public append(D)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "value"    # D

    .line 683
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # F

    .line 716
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 717
    return-object p0
.end method

.method public append(I)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # I

    .line 750
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 751
    return-object p0
.end method

.method public append(J)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 6
    .param p1, "value"    # J

    .line 788
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 789
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 822
    if-nez p1, :cond_c

    .line 823
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto/16 :goto_82

    .line 826
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 829
    instance-of v0, p1, [J

    if-eqz v0, :cond_21

    .line 830
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([J)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 831
    :cond_21
    instance-of v0, p1, [I

    if-eqz v0, :cond_2c

    .line 832
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([I)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 833
    :cond_2c
    instance-of v0, p1, [S

    if-eqz v0, :cond_37

    .line 834
    move-object v0, p1

    check-cast v0, [S

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([S)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 835
    :cond_37
    instance-of v0, p1, [C

    if-eqz v0, :cond_42

    .line 836
    move-object v0, p1

    check-cast v0, [C

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([C)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 837
    :cond_42
    instance-of v0, p1, [B

    if-eqz v0, :cond_4d

    .line 838
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([B)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 839
    :cond_4d
    instance-of v0, p1, [D

    if-eqz v0, :cond_58

    .line 840
    move-object v0, p1

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([D)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 841
    :cond_58
    instance-of v0, p1, [F

    if-eqz v0, :cond_63

    .line 842
    move-object v0, p1

    check-cast v0, [F

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([F)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 843
    :cond_63
    instance-of v0, p1, [Z

    if-eqz v0, :cond_6e

    .line 844
    move-object v0, p1

    check-cast v0, [Z

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([Z)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 847
    :cond_6e
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_82

    .line 850
    :cond_75
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 853
    :goto_82
    return-object p0
.end method

.method public append(S)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # S

    .line 886
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 887
    return-object p0
.end method

.method public append(Z)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # Z

    .line 577
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    xor-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 578
    return-object p0
.end method

.method public append([B)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [B

    .line 629
    if-nez p1, :cond_b

    .line 630
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 632
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-byte v2, p1, v1

    .line 633
    .local v2, "element":B
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(B)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 632
    .end local v2    # "element":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 636
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([C)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [C

    .line 663
    if-nez p1, :cond_b

    .line 664
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 666
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-char v2, p1, v1

    .line 667
    .local v2, "element":C
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(C)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 666
    .end local v2    # "element":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 670
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([D)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 6
    .param p1, "array"    # [D

    .line 696
    if-nez p1, :cond_b

    .line 697
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 699
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-wide v2, p1, v1

    .line 700
    .local v2, "element":D
    invoke-virtual {p0, v2, v3}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(D)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 699
    .end local v2    # "element":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 703
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([F)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [F

    .line 730
    if-nez p1, :cond_b

    .line 731
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 733
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget v2, p1, v1

    .line 734
    .local v2, "element":F
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(F)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 733
    .end local v2    # "element":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 737
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([I)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [I

    .line 764
    if-nez p1, :cond_b

    .line 765
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 767
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget v2, p1, v1

    .line 768
    .local v2, "element":I
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(I)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 767
    .end local v2    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 771
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([J)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 6
    .param p1, "array"    # [J

    .line 802
    if-nez p1, :cond_b

    .line 803
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 805
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-wide v2, p1, v1

    .line 806
    .local v2, "element":J
    invoke-virtual {p0, v2, v3}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 805
    .end local v2    # "element":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 809
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;

    .line 866
    if-nez p1, :cond_b

    .line 867
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 869
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 870
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 869
    .end local v2    # "element":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 873
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([S)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [S

    .line 900
    if-nez p1, :cond_b

    .line 901
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 903
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-short v2, p1, v1

    .line 904
    .local v2, "element":S
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(S)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 903
    .end local v2    # "element":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 907
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([Z)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [Z

    .line 591
    if-nez p1, :cond_b

    .line 592
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 594
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-boolean v2, p1, v1

    .line 595
    .local v2, "element":Z
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(Z)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    .line 594
    .end local v2    # "element":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 598
    :cond_17
    :goto_17
    return-object p0
.end method

.method public appendSuper(I)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "superHashCode"    # I

    .line 921
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 922
    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    .line 944
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 100
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 958
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toHashCode()I
    .registers 2

    .line 933
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
