.class final Lexternal/org/apache/commons/lang3/builder/IDKey;
.super Ljava/lang/Object;
.source "IDKey.java"


# instance fields
.field private final id:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "_value"    # Ljava/lang/Object;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/IDKey;->id:I

    .line 45
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Lexternal/org/apache/commons/lang3/builder/IDKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 65
    return v1

    .line 67
    :cond_6
    move-object v0, p1

    check-cast v0, Lexternal/org/apache/commons/lang3/builder/IDKey;

    .line 68
    .local v0, "idKey":Lexternal/org/apache/commons/lang3/builder/IDKey;
    iget v2, p0, Lexternal/org/apache/commons/lang3/builder/IDKey;->id:I

    iget v3, v0, Lexternal/org/apache/commons/lang3/builder/IDKey;->id:I

    if-eq v2, v3, :cond_10

    .line 69
    return v1

    .line 72
    :cond_10
    iget-object v2, p0, Lexternal/org/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    iget-object v3, v0, Lexternal/org/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 54
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/IDKey;->id:I

    return v0
.end method
