.class public Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

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


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 105
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p3, "builder"    # Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 313
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 314
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_57

    iget v2, p3, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v2, :cond_57

    .line 316
    aget-object v2, v0, v1

    .line 317
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lexternal/org/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 318
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_54

    if-nez p4, :cond_35

    .line 319
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_54

    .line 320
    :cond_35
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_54

    .line 322
    :try_start_3f
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_4a} :catch_4b

    .line 327
    goto :goto_54

    .line 323
    :catch_4b
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 315
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 330
    .end local v1    # "i":I
    :cond_57
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 200
    .local p2, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z

    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 16
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 275
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p0, p1, :cond_4

    .line 276
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_4
    if-eqz p0, :cond_42

    if-eqz p1, :cond_42

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 282
    .local v3, "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 285
    new-instance v4, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v4}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    .line 286
    .local v4, "compareToBuilder":Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p4

    .end local p0    # "lhs":Ljava/lang/Object;
    .end local p1    # "rhs":Ljava/lang/Object;
    .end local p2    # "compareTransients":Z
    .end local p4    # "excludeFields":[Ljava/lang/String;
    .local v1, "lhs":Ljava/lang/Object;
    .local v2, "rhs":Ljava/lang/Object;
    .local v5, "compareTransients":Z
    .local v6, "excludeFields":[Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 287
    :goto_1e
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_36

    if-eq v3, p3, :cond_36

    .line 288
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 289
    .end local v3    # "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v8, v4

    move v9, v5

    move-object v10, v6

    move-object v5, v1

    move-object v6, v2

    .end local v1    # "lhs":Ljava/lang/Object;
    .end local v2    # "rhs":Ljava/lang/Object;
    .end local v4    # "compareToBuilder":Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .local v5, "lhs":Ljava/lang/Object;
    .local v6, "rhs":Ljava/lang/Object;
    .local v8, "compareToBuilder":Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .local v9, "compareTransients":Z
    .local v10, "excludeFields":[Ljava/lang/String;
    invoke-static/range {v5 .. v10}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    move-object v3, v7

    move v5, v9

    move-object v6, v10

    .end local v8    # "compareToBuilder":Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .end local v9    # "compareTransients":Z
    .end local v10    # "excludeFields":[Ljava/lang/String;
    .restart local v1    # "lhs":Ljava/lang/Object;
    .restart local v2    # "rhs":Ljava/lang/Object;
    .restart local v4    # "compareToBuilder":Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .local v5, "compareTransients":Z
    .local v6, "excludeFields":[Ljava/lang/String;
    goto :goto_1e

    .line 291
    .end local v7    # "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    invoke-virtual {v4}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result p0

    return p0

    .line 283
    .end local v1    # "lhs":Ljava/lang/Object;
    .end local v2    # "rhs":Ljava/lang/Object;
    .end local v4    # "compareToBuilder":Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .end local v5    # "compareTransients":Z
    .end local v6    # "excludeFields":[Ljava/lang/String;
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    .restart local p2    # "compareTransients":Z
    .restart local p4    # "excludeFields":[Ljava/lang/String;
    :cond_3b
    move-object v1, p0

    .end local p0    # "lhs":Ljava/lang/Object;
    .restart local v1    # "lhs":Ljava/lang/Object;
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    .line 278
    .end local v1    # "lhs":Ljava/lang/Object;
    .end local v3    # "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "lhs":Ljava/lang/Object;
    :cond_42
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p4

    .line 279
    .end local p0    # "lhs":Ljava/lang/Object;
    .end local p1    # "rhs":Ljava/lang/Object;
    .end local p2    # "compareTransients":Z
    .end local p4    # "excludeFields":[Ljava/lang/String;
    .restart local v1    # "lhs":Ljava/lang/Object;
    .restart local v2    # "rhs":Ljava/lang/Object;
    .restart local v5    # "compareTransients":Z
    .restart local v6    # "excludeFields":[Ljava/lang/String;
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 527
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 528
    return-object p0

    .line 530
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 531
    return-object p0
.end method

.method public append(CC)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 511
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 512
    return-object p0

    .line 514
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 515
    return-object p0
.end method

.method public append(DD)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 548
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 549
    return-object p0

    .line 551
    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 552
    return-object p0
.end method

.method public append(FF)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 569
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 570
    return-object p0

    .line 572
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 573
    return-object p0
.end method

.method public append(II)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 479
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 480
    return-object p0

    .line 482
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 483
    return-object p0
.end method

.method public append(JJ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 463
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 464
    return-object p0

    .line 466
    :cond_5
    cmp-long v0, p1, p3

    if-gez v0, :cond_b

    const/4 v0, -0x1

    goto :goto_12

    :cond_b
    cmp-long v0, p1, p3

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 467
    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 399
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 400
    return-object p0

    .line 402
    :cond_5
    if-ne p1, p2, :cond_8

    .line 403
    return-object p0

    .line 405
    :cond_8
    if-nez p1, :cond_e

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 407
    return-object p0

    .line 409
    :cond_e
    if-nez p2, :cond_14

    .line 410
    const/4 v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 411
    return-object p0

    .line 413
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 417
    instance-of v0, p1, [J

    if-eqz v0, :cond_2d

    .line 418
    move-object v0, p1

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([J[J)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_ad

    .line 419
    :cond_2d
    instance-of v0, p1, [I

    if-eqz v0, :cond_3c

    .line 420
    move-object v0, p1

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([I[I)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_ad

    .line 421
    :cond_3c
    instance-of v0, p1, [S

    if-eqz v0, :cond_4a

    .line 422
    move-object v0, p1

    check-cast v0, [S

    move-object v1, p2

    check-cast v1, [S

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([S[S)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 423
    :cond_4a
    instance-of v0, p1, [C

    if-eqz v0, :cond_58

    .line 424
    move-object v0, p1

    check-cast v0, [C

    move-object v1, p2

    check-cast v1, [C

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([C[C)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 425
    :cond_58
    instance-of v0, p1, [B

    if-eqz v0, :cond_66

    .line 426
    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([B[B)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 427
    :cond_66
    instance-of v0, p1, [D

    if-eqz v0, :cond_74

    .line 428
    move-object v0, p1

    check-cast v0, [D

    move-object v1, p2

    check-cast v1, [D

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([D[D)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 429
    :cond_74
    instance-of v0, p1, [F

    if-eqz v0, :cond_82

    .line 430
    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([F[F)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 431
    :cond_82
    instance-of v0, p1, [Z

    if-eqz v0, :cond_90

    .line 432
    move-object v0, p1

    check-cast v0, [Z

    move-object v1, p2

    check-cast v1, [Z

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 436
    :cond_90
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p3}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 440
    :cond_9a
    if-nez p3, :cond_a6

    .line 442
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 443
    .local v0, "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 444
    .end local v0    # "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    goto :goto_ad

    .line 446
    :cond_a6
    move-object v0, p3

    .line 447
    .local v0, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 450
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    :goto_ad
    return-object p0
.end method

.method public append(SS)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 495
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 496
    return-object p0

    .line 498
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 499
    return-object p0
.end method

.method public append(ZZ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 585
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 586
    return-object p0

    .line 588
    :cond_5
    if-ne p1, p2, :cond_8

    .line 589
    return-object p0

    .line 591
    :cond_8
    if-nez p1, :cond_e

    .line 592
    const/4 v0, -0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_11

    .line 594
    :cond_e
    const/4 v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 596
    :goto_11
    return-object p0
.end method

.method public append([B[B)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 848
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 849
    return-object p0

    .line 851
    :cond_5
    if-ne p1, p2, :cond_8

    .line 852
    return-object p0

    .line 854
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 855
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 856
    return-object p0

    .line 858
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 859
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 860
    return-object p0

    .line 862
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 863
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 864
    return-object p0

    .line 866
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 867
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(BB)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 869
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([C[C)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 808
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 809
    return-object p0

    .line 811
    :cond_5
    if-ne p1, p2, :cond_8

    .line 812
    return-object p0

    .line 814
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 815
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 816
    return-object p0

    .line 818
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 819
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 820
    return-object p0

    .line 822
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 823
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 824
    return-object p0

    .line 826
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 827
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(CC)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 829
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([D[D)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 888
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 889
    return-object p0

    .line 891
    :cond_5
    if-ne p1, p2, :cond_8

    .line 892
    return-object p0

    .line 894
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 895
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 896
    return-object p0

    .line 898
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 899
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 900
    return-object p0

    .line 902
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 903
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 904
    return-object p0

    .line 906
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 907
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(DD)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 909
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([F[F)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 928
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 929
    return-object p0

    .line 931
    :cond_5
    if-ne p1, p2, :cond_8

    .line 932
    return-object p0

    .line 934
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 935
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 936
    return-object p0

    .line 938
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 939
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 940
    return-object p0

    .line 942
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 943
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 944
    return-object p0

    .line 946
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 947
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(FF)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 949
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([I[I)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 728
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 729
    return-object p0

    .line 731
    :cond_5
    if-ne p1, p2, :cond_8

    .line 732
    return-object p0

    .line 734
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 735
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 736
    return-object p0

    .line 738
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 739
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 740
    return-object p0

    .line 742
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 743
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 744
    return-object p0

    .line 746
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 747
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(II)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 749
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([J[J)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 688
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 689
    return-object p0

    .line 691
    :cond_5
    if-ne p1, p2, :cond_8

    .line 692
    return-object p0

    .line 694
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 695
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 696
    return-object p0

    .line 698
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 699
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 700
    return-object p0

    .line 702
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 703
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 704
    return-object p0

    .line 706
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 707
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(JJ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 709
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 648
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 649
    return-object p0

    .line 651
    :cond_5
    if-ne p1, p2, :cond_8

    .line 652
    return-object p0

    .line 654
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 655
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 656
    return-object p0

    .line 658
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 659
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 660
    return-object p0

    .line 662
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 663
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 664
    return-object p0

    .line 666
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 667
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 669
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([S[S)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 768
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 769
    return-object p0

    .line 771
    :cond_5
    if-ne p1, p2, :cond_8

    .line 772
    return-object p0

    .line 774
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 775
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 776
    return-object p0

    .line 778
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 779
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 780
    return-object p0

    .line 782
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 783
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 784
    return-object p0

    .line 786
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 787
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(SS)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 789
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public append([Z[Z)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 968
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 969
    return-object p0

    .line 971
    :cond_5
    if-ne p1, p2, :cond_8

    .line 972
    return-object p0

    .line 974
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 975
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 976
    return-object p0

    .line 978
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 979
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 980
    return-object p0

    .line 982
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 983
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 984
    return-object p0

    .line 986
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 987
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 989
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public appendSuper(I)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 3
    .param p1, "superCompareTo"    # I

    .line 342
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 343
    return-object p0

    .line 345
    :cond_5
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 346
    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    .line 1017
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .registers 2

    .line 1003
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
