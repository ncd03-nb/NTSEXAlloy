.class public Lexternal/org/apache/commons/lang3/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/ObjectUtils$Null;
    }
.end annotation


# static fields
.field public static final NULL:Lexternal/org/apache/commons/lang3/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lexternal/org/apache/commons/lang3/ObjectUtils$Null;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/ObjectUtils$Null;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/ObjectUtils;->NULL:Lexternal/org/apache/commons/lang3/ObjectUtils$Null;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 511
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_c1

    .line 513
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 515
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_24

    .line 516
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "result":Ljava/lang/Object;
    goto :goto_3a

    .line 518
    .end local v1    # "result":Ljava/lang/Object;
    :cond_24
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 519
    .local v1, "length":I
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 520
    .local v2, "result":Ljava/lang/Object;
    :goto_2c
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "length":I
    .local v3, "length":I
    if-lez v1, :cond_39

    .line 521
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_2c

    .line 520
    :cond_39
    move-object v1, v2

    .line 524
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "length":I
    .local v1, "result":Ljava/lang/Object;
    :goto_3a
    goto :goto_4f

    .line 526
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clone"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 527
    .local v0, "clone":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_4e} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_4e} :catch_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_4e} :catch_51

    .line 538
    .end local v0    # "clone":Ljava/lang/reflect/Method;
    .restart local v1    # "result":Ljava/lang/Object;
    nop

    .line 541
    :goto_4f
    move-object v0, v1

    .line 542
    .local v0, "checked":Ljava/lang/Object;, "TT;"
    return-object v0

    .line 535
    .end local v0    # "checked":Ljava/lang/Object;, "TT;"
    .end local v1    # "result":Ljava/lang/Object;
    :catch_51
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception cloning Cloneable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 532
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_77
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot clone Cloneable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 534
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 528
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_99
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cloneable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no clone method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 545
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_c1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 565
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 566
    .local v0, "clone":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_8

    move-object v1, p0

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)I"
        }
    .end annotation

    .line 393
    .local p0, "c1":Ljava/lang/Comparable;, "TT;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .registers 5
    .param p2, "nullGreater"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    .line 410
    .local p0, "c1":Ljava/lang/Comparable;, "TT;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    if-ne p0, p1, :cond_4

    .line 411
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_4
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p0, :cond_d

    .line 413
    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 414
    :cond_d
    if-nez p1, :cond_13

    .line 415
    if-eqz p2, :cond_12

    const/4 v0, -0x1

    :cond_12
    return v0

    .line 417
    :cond_13
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 95
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .line 153
    if-ne p0, p1, :cond_4

    .line 154
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 159
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 157
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 121
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_e

    .line 122
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 123
    .local v2, "val":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_b

    .line 124
    return-object v2

    .line 122
    .end local v2    # "val":Ljava/lang/Object;, "TT;"
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 128
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 200
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static varargs hashCodeMulti([Ljava/lang/Object;)I
    .registers 7
    .param p0, "objects"    # [Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    .line 225
    .local v0, "hash":I
    if-eqz p0, :cond_14

    .line 226
    array-length v1, p0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 227
    .local v3, "object":Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v3}, Lexternal/org/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v5

    add-int v0, v4, v5

    .line 226
    .end local v3    # "object":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 230
    :cond_14
    return v0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 252
    if-nez p0, :cond_4

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "object"    # Ljava/lang/Object;

    .line 276
    if-eqz p1, :cond_20

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 280
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 281
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    return-void

    .line 277
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot get the toString of a null identity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    .line 371
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    .line 372
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_14

    .line 373
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_14

    aget-object v4, p0, v3

    .line 374
    .local v4, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {v4, v0, v2}, Lexternal/org/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-lez v5, :cond_11

    .line 375
    move-object v0, v4

    .line 373
    .end local v4    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 379
    :cond_14
    return-object v0
.end method

.method public static varargs median([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    .line 431
    .local p0, "items":[Ljava/lang/Comparable;, "[TT;"
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 432
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 434
    .local v0, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Comparable;

    .line 437
    .local v1, "result":Ljava/lang/Comparable;, "TT;"
    return-object v1
.end method

.method public static varargs median(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;[TT;)TT;"
        }
    .end annotation

    .line 452
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "null/empty items"

    invoke-static {p1, v2, v1}, Lexternal/org/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 453
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 454
    const-string v1, "null comparator"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lexternal/org/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 456
    .local v0, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    .line 459
    .local v1, "result":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    .line 346
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    .line 347
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_14

    .line 348
    array-length v1, p0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 349
    .local v3, "value":Ljava/lang/Comparable;, "TT;"
    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lexternal/org/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v4

    if-gez v4, :cond_11

    .line 350
    move-object v0, v3

    .line 348
    .end local v3    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 354
    :cond_14
    return-object v0
.end method

.method public static varargs mode([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 473
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 474
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 475
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2a

    aget-object v3, p0, v2

    .line 476
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 477
    .local v4, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v4, :cond_24

    .line 478
    new-instance v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 480
    :cond_24
    invoke-virtual {v4}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 475
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 483
    :cond_2a
    const/4 v1, 0x0

    .line 484
    .local v1, "result":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 485
    .local v2, "max":I
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 486
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v5}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v5

    .line 487
    .local v5, "cmp":I
    if-ne v5, v2, :cond_4e

    .line 488
    const/4 v1, 0x0

    goto :goto_55

    .line 489
    :cond_4e
    if-le v5, v2, :cond_55

    .line 490
    move v2, v5

    .line 491
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 493
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v5    # "cmp":I
    :cond_55
    :goto_55
    goto :goto_34

    .line 494
    :cond_56
    return-object v1

    .line 496
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .end local v2    # "max":I
    :cond_57
    const/4 v0, 0x0

    return-object v0
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .line 182
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 304
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nullStr"    # Ljava/lang/String;

    .line 327
    if-nez p0, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method
