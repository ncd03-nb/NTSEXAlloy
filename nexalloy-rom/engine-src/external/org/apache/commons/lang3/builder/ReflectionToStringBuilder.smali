.class public Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;
.super Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field protected excludeFieldNames:[Ljava/lang/String;

.field private upToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 385
    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 356
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 386
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 405
    invoke-direct {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 356
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 406
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .line 431
    invoke-direct {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 356
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 432
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .registers 8
    .param p2, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "outputTransients"    # Z
    .param p6, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 456
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 356
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 457
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 458
    invoke-virtual {p0, p5}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 459
    invoke-virtual {p0, p6}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 460
    return-void
.end method

.method static toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 309
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    .line 310
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 312
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 6
    .param p0, "array"    # [Ljava/lang/Object;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 327
    .local v3, "e":Ljava/lang/Object;
    if-eqz v3, :cond_15

    .line 328
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v3    # "e":Ljava/lang/Object;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 331
    :cond_18
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z

    .line 229
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .registers 12
    .param p1, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 282
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v4, p4

    .end local p0    # "object":Ljava/lang/Object;, "TT;"
    .end local p1    # "style":Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .end local p2    # "outputTransients":Z
    .end local p3    # "outputStatics":Z
    .end local p4    # "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    .local v1, "object":Ljava/lang/Object;, "TT;"
    .local v2, "style":Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .local v4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    .local v5, "outputTransients":Z
    .local v6, "outputStatics":Z
    invoke-direct/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    .line 283
    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 282
    return-object p0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 296
    .local p1, "excludeFieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # [Ljava/lang/String;

    .line 345
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .registers 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 475
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 477
    return v2

    .line 479
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-nez v0, :cond_20

    .line 481
    return v2

    .line 483
    :cond_20
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v0

    if-nez v0, :cond_31

    .line 485
    return v2

    .line 487
    :cond_31
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_42

    .line 490
    return v2

    .line 492
    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 509
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 510
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    .line 511
    return-void

    .line 513
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 514
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 515
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_50

    aget-object v3, v0, v2

    .line 516
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 521
    :try_start_26
    invoke-virtual {p0, v3}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 522
    .local v5, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p0, v4, v5}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2d} :catch_2f

    .line 529
    nop

    .end local v5    # "fieldValue":Ljava/lang/Object;
    goto :goto_4d

    .line 523
    :catch_2f
    move-exception v1

    .line 528
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected IllegalAccessException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 532
    :cond_50
    return-void
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .registers 2

    .line 538
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUpToClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 569
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAppendStatics()Z
    .registers 2

    .line 581
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public isAppendTransients()Z
    .registers 2

    .line 592
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 5
    .param p1, "array"    # Ljava/lang/Object;

    .line 605
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 606
    return-object p0
.end method

.method public setAppendStatics(Z)V
    .registers 2
    .param p1, "appendStatics"    # Z

    .line 619
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 620
    return-void
.end method

.method public setAppendTransients(Z)V
    .registers 2
    .param p1, "appendTransients"    # Z

    .line 631
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 632
    return-void
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 3
    .param p1, "excludeFieldNamesParam"    # [Ljava/lang/String;

    .line 642
    if-nez p1, :cond_6

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    goto :goto_11

    .line 646
    :cond_6
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 649
    :goto_11
    return-object p0
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 661
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_17

    .line 662
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 663
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_17

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_17

    .line 664
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified class is not a superclass of the object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    .end local v0    # "object":Ljava/lang/Object;
    :cond_17
    :goto_17
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 668
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 679
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 680
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 682
    :cond_f
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 683
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 684
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 685
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 686
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_1a

    .line 688
    :cond_2e
    invoke-super {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
