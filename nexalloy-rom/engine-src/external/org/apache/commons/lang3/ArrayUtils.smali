.class public Lexternal/org/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 54
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 58
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 62
    new-array v1, v0, [J

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 66
    new-array v1, v0, [Ljava/lang/Long;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 70
    new-array v1, v0, [I

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 74
    new-array v1, v0, [Ljava/lang/Integer;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 78
    new-array v1, v0, [S

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 82
    new-array v1, v0, [Ljava/lang/Short;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 86
    new-array v1, v0, [B

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 90
    new-array v1, v0, [Ljava/lang/Byte;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 94
    new-array v1, v0, [D

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 98
    new-array v1, v0, [Ljava/lang/Double;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 102
    new-array v1, v0, [F

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 106
    new-array v1, v0, [Ljava/lang/Float;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 110
    new-array v1, v0, [Z

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 114
    new-array v1, v0, [Ljava/lang/Boolean;

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 118
    new-array v1, v0, [C

    sput-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 122
    new-array v0, v0, [Ljava/lang/Character;

    sput-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4294
    .local p3, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Index: "

    const/4 v1, 0x0

    if-nez p0, :cond_2d

    .line 4295
    if-nez p1, :cond_10

    .line 4298
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4299
    .local v0, "joinedArray":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4300
    return-object v0

    .line 4296
    .end local v0    # "joinedArray":Ljava/lang/Object;
    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Length: 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4302
    :cond_2d
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 4303
    .local v2, "length":I
    if-gt p1, v2, :cond_4b

    if-ltz p1, :cond_4b

    .line 4306
    add-int/lit8 v0, v2, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4307
    .local v0, "result":Ljava/lang/Object;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4308
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4309
    if-ge p1, v2, :cond_4a

    .line 4310
    add-int/lit8 v1, p1, 0x1

    sub-int v3, v2, p1

    invoke-static {p0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4312
    :cond_4a
    return-object v0

    .line 4304
    .end local v0    # "result":Ljava/lang/Object;
    :cond_4b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static add([BB)[B
    .registers 4
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 3803
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3804
    .local v0, "newArray":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 3805
    return-object v0
.end method

.method public static add([BIB)[B
    .registers 5
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "element"    # B

    .line 4124
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .registers 4
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 3830
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 3831
    .local v0, "newArray":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 3832
    return-object v0
.end method

.method public static add([CIC)[C
    .registers 5
    .param p0, "array"    # [C
    .param p1, "index"    # I
    .param p2, "element"    # C

    .line 4093
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .registers 5
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 3857
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 3858
    .local v0, "newArray":[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3859
    return-object v0
.end method

.method public static add([DID)[D
    .registers 6
    .param p0, "array"    # [D
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 4279
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .registers 4
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 3884
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 3885
    .local v0, "newArray":[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3886
    return-object v0
.end method

.method public static add([FIF)[F
    .registers 5
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "element"    # F

    .line 4248
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .registers 4
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 3911
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3912
    .local v0, "newArray":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3913
    return-object v0
.end method

.method public static add([III)[I
    .registers 5
    .param p0, "array"    # [I
    .param p1, "index"    # I
    .param p2, "element"    # I

    .line 4186
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .registers 6
    .param p0, "array"    # [J
    .param p1, "index"    # I
    .param p2, "element"    # J

    .line 4217
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .registers 5
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 3938
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 3939
    .local v0, "newArray":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3940
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 4020
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 4021
    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_c

    .line 4022
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_12

    .line 4023
    :cond_c
    if-eqz p2, :cond_19

    .line 4024
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4029
    :goto_12
    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 4030
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    return-object v1

    .line 4026
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array and element cannot both be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 3741
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_7

    .line 3742
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_d

    .line 3743
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    if-eqz p1, :cond_19

    .line 3744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3749
    .restart local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_d
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3750
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 3751
    return-object v1

    .line 3746
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([SIS)[S
    .registers 5
    .param p0, "array"    # [S
    .param p1, "index"    # I
    .param p2, "element"    # S

    .line 4155
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .registers 4
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 3965
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 3966
    .local v0, "newArray":[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 3967
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .registers 5
    .param p0, "array"    # [Z
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .line 4061
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .registers 4
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 3776
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 3777
    .local v0, "newArray":[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 3778
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .registers 6
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 3554
    if-nez p0, :cond_7

    .line 3555
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 3556
    :cond_7
    if-nez p1, :cond_e

    .line 3557
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 3559
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3560
    .local v0, "joinedArray":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3561
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3562
    return-object v0
.end method

.method public static varargs addAll([C[C)[C
    .registers 6
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .line 3525
    if-nez p0, :cond_7

    .line 3526
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 3527
    :cond_7
    if-nez p1, :cond_e

    .line 3528
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 3530
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 3531
    .local v0, "joinedArray":[C
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3532
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3533
    return-object v0
.end method

.method public static varargs addAll([D[D)[D
    .registers 6
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .line 3699
    if-nez p0, :cond_7

    .line 3700
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    .line 3701
    :cond_7
    if-nez p1, :cond_e

    .line 3702
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    .line 3704
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 3705
    .local v0, "joinedArray":[D
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3706
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3707
    return-object v0
.end method

.method public static varargs addAll([F[F)[F
    .registers 6
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .line 3670
    if-nez p0, :cond_7

    .line 3671
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    .line 3672
    :cond_7
    if-nez p1, :cond_e

    .line 3673
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    .line 3675
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 3676
    .local v0, "joinedArray":[F
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3677
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3678
    return-object v0
.end method

.method public static varargs addAll([I[I)[I
    .registers 6
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 3612
    if-nez p0, :cond_7

    .line 3613
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 3614
    :cond_7
    if-nez p1, :cond_e

    .line 3615
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 3617
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 3618
    .local v0, "joinedArray":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3619
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3620
    return-object v0
.end method

.method public static varargs addAll([J[J)[J
    .registers 6
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .line 3641
    if-nez p0, :cond_7

    .line 3642
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 3643
    :cond_7
    if-nez p1, :cond_e

    .line 3644
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 3646
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 3647
    .local v0, "joinedArray":[J
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3648
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3649
    return-object v0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 3450
    .local p0, "array1":[Ljava/lang/Object;, "[TT;"
    .local p1, "array2":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_7

    .line 3451
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3452
    :cond_7
    if-nez p1, :cond_e

    .line 3453
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3455
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 3457
    .local v0, "type1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3458
    .local v1, "joinedArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3460
    :try_start_24
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_29
    .catch Ljava/lang/ArrayStoreException; {:try_start_24 .. :try_end_29} :catch_2b

    .line 3474
    nop

    .line 3475
    return-object v1

    .line 3461
    :catch_2b
    move-exception v2

    .line 3468
    .local v2, "ase":Ljava/lang/ArrayStoreException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 3469
    .local v3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 3470
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3471
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3473
    :cond_65
    throw v2
.end method

.method public static varargs addAll([S[S)[S
    .registers 6
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .line 3583
    if-nez p0, :cond_7

    .line 3584
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 3585
    :cond_7
    if-nez p1, :cond_e

    .line 3586
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 3588
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 3589
    .local v0, "joinedArray":[S
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3590
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3591
    return-object v0
.end method

.method public static varargs addAll([Z[Z)[Z
    .registers 6
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .line 3496
    if-nez p0, :cond_7

    .line 3497
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    .line 3498
    :cond_7
    if-nez p1, :cond_e

    .line 3499
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    .line 3501
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 3502
    .local v0, "joinedArray":[Z
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3503
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3504
    return-object v0
.end method

.method public static clone([B)[B
    .registers 2
    .param p0, "array"    # [B

    .line 401
    if-nez p0, :cond_4

    .line 402
    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static clone([C)[C
    .registers 2
    .param p0, "array"    # [C

    .line 385
    if-nez p0, :cond_4

    .line 386
    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static clone([D)[D
    .registers 2
    .param p0, "array"    # [D

    .line 417
    if-nez p0, :cond_4

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_4
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static clone([F)[F
    .registers 2
    .param p0, "array"    # [F

    .line 433
    if-nez p0, :cond_4

    .line 434
    const/4 v0, 0x0

    return-object v0

    .line 436
    :cond_4
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static clone([I)[I
    .registers 2
    .param p0, "array"    # [I

    .line 353
    if-nez p0, :cond_4

    .line 354
    const/4 v0, 0x0

    return-object v0

    .line 356
    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static clone([J)[J
    .registers 2
    .param p0, "array"    # [J

    .line 337
    if-nez p0, :cond_4

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 321
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_4

    .line 322
    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_4
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static clone([S)[S
    .registers 2
    .param p0, "array"    # [S

    .line 369
    if-nez p0, :cond_4

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static clone([Z)[Z
    .registers 2
    .param p0, "array"    # [Z

    .line 449
    if-nez p0, :cond_4

    .line 450
    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static contains([BB)Z
    .registers 4
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 2242
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([CC)Z
    .registers 4
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 2139
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([DD)Z
    .registers 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 2449
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([DDD)Z
    .registers 11
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 2466
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .end local p0    # "array":[D
    .end local p1    # "valueToFind":D
    .end local p3    # "tolerance":D
    .local v0, "array":[D
    .local v1, "valueToFind":D
    .local v4, "tolerance":D
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static contains([FF)Z
    .registers 4
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2569
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([II)Z
    .registers 4
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 1928
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([JJ)Z
    .registers 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 1825
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 1722
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([SS)Z
    .registers 4
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 2031
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([ZZ)Z
    .registers 4
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 2674
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3980
    .local p1, "newArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_19

    .line 3981
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 3982
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 3983
    .local v1, "newArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3984
    return-object v1

    .line 3986
    .end local v0    # "arrayLength":I
    .end local v1    # "newArray":Ljava/lang/Object;
    :cond_19
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static extractIndices(Ljava/util/HashSet;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 5790
    .local p0, "coll":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 5791
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 5792
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5793
    .local v3, "index":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 5794
    .end local v3    # "index":Ljava/lang/Integer;
    move v1, v4

    goto :goto_b

    .line 5795
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    return-object v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 1370
    if-nez p0, :cond_4

    .line 1371
    const/4 v0, 0x0

    return v0

    .line 1373
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 191
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .registers 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 2155
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .line 2173
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 2174
    return v0

    .line 2176
    :cond_4
    if-gez p2, :cond_7

    .line 2177
    const/4 p2, 0x0

    .line 2179
    :cond_7
    move v1, p2

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 2180
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_10

    .line 2181
    return v1

    .line 2179
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2184
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public static indexOf([CC)I
    .registers 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 2048
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .line 2067
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 2068
    return v0

    .line 2070
    :cond_4
    if-gez p2, :cond_7

    .line 2071
    const/4 p2, 0x0

    .line 2073
    :cond_7
    move v1, p2

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 2074
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_10

    .line 2075
    return v1

    .line 2073
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2078
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public static indexOf([DD)I
    .registers 4
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 2258
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .registers 11
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 2275
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .end local p0    # "array":[D
    .end local p1    # "valueToFind":D
    .end local p3    # "tolerance":D
    .local v0, "array":[D
    .local v1, "valueToFind":D
    .local v4, "tolerance":D
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result p0

    return p0
.end method

.method public static indexOf([DDI)I
    .registers 9
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .line 2293
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2294
    return v1

    .line 2296
    :cond_8
    if-gez p3, :cond_b

    .line 2297
    const/4 p3, 0x0

    .line 2299
    :cond_b
    move v0, p3

    .local v0, "i":I
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 2300
    aget-wide v2, p0, v0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_16

    .line 2301
    return v0

    .line 2299
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2304
    .end local v0    # "i":I
    :cond_19
    return v1
.end method

.method public static indexOf([DDID)I
    .registers 15
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .line 2325
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2326
    return v1

    .line 2328
    :cond_8
    if-gez p3, :cond_b

    .line 2329
    const/4 p3, 0x0

    .line 2331
    :cond_b
    sub-double v2, p1, p4

    .line 2332
    .local v2, "min":D
    add-double v4, p1, p4

    .line 2333
    .local v4, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_10
    array-length v6, p0

    if-ge v0, v6, :cond_23

    .line 2334
    aget-wide v6, p0, v0

    cmpl-double v8, v6, v2

    if-ltz v8, :cond_20

    aget-wide v6, p0, v0

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_20

    .line 2335
    return v0

    .line 2333
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2338
    .end local v0    # "i":I
    :cond_23
    return v1
.end method

.method public static indexOf([FF)I
    .registers 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2482
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .registers 6
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .line 2500
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2501
    return v1

    .line 2503
    :cond_8
    if-gez p2, :cond_b

    .line 2504
    const/4 p2, 0x0

    .line 2506
    :cond_b
    move v0, p2

    .local v0, "i":I
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 2507
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_16

    .line 2508
    return v0

    .line 2506
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2511
    .end local v0    # "i":I
    :cond_19
    return v1
.end method

.method public static indexOf([II)I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 1841
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .line 1859
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1860
    return v0

    .line 1862
    :cond_4
    if-gez p2, :cond_7

    .line 1863
    const/4 p2, 0x0

    .line 1865
    :cond_7
    move v1, p2

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1866
    aget v2, p0, v1

    if-ne p1, v2, :cond_10

    .line 1867
    return v1

    .line 1865
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1870
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public static indexOf([JJ)I
    .registers 4
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 1738
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .registers 9
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .line 1756
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1757
    return v0

    .line 1759
    :cond_4
    if-gez p3, :cond_7

    .line 1760
    const/4 p3, 0x0

    .line 1762
    :cond_7
    move v1, p3

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 1763
    aget-wide v2, p0, v1

    cmp-long v4, p1, v2

    if-nez v4, :cond_12

    .line 1764
    return v1

    .line 1762
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1767
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 1619
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 1637
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1638
    return v0

    .line 1640
    :cond_4
    if-gez p2, :cond_7

    .line 1641
    const/4 p2, 0x0

    .line 1643
    :cond_7
    if-nez p1, :cond_16

    .line 1644
    move v1, p2

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 1645
    aget-object v2, p0, v1

    if-nez v2, :cond_12

    .line 1646
    return v1

    .line 1644
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_15
    goto :goto_34

    .line 1649
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1650
    move v1, p2

    .restart local v1    # "i":I
    :goto_25
    array-length v2, p0

    if-ge v1, v2, :cond_34

    .line 1651
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1652
    return v1

    .line 1650
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1656
    .end local v1    # "i":I
    :cond_34
    :goto_34
    return v0
.end method

.method public static indexOf([SS)I
    .registers 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 1944
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .line 1962
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1963
    return v0

    .line 1965
    :cond_4
    if-gez p2, :cond_7

    .line 1966
    const/4 p2, 0x0

    .line 1968
    :cond_7
    move v1, p2

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1969
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_10

    .line 1970
    return v1

    .line 1968
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1973
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public static indexOf([ZZ)I
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 2585
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .registers 6
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .line 2604
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2605
    return v1

    .line 2607
    :cond_8
    if-gez p2, :cond_b

    .line 2608
    const/4 p2, 0x0

    .line 2610
    :cond_b
    move v0, p2

    .local v0, "i":I
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_17

    .line 2611
    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_14

    .line 2612
    return v0

    .line 2610
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2615
    .end local v0    # "i":I
    :cond_17
    return v1
.end method

.method public static isEmpty([B)Z
    .registers 2
    .param p0, "array"    # [B

    .line 3288
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([C)Z
    .registers 2
    .param p0, "array"    # [C

    .line 3277
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([D)Z
    .registers 2
    .param p0, "array"    # [D

    .line 3299
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([F)Z
    .registers 2
    .param p0, "array"    # [F

    .line 3310
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([I)Z
    .registers 2
    .param p0, "array"    # [I

    .line 3255
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([J)Z
    .registers 2
    .param p0, "array"    # [J

    .line 3244
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 3233
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([S)Z
    .registers 2
    .param p0, "array"    # [S

    .line 3266
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([Z)Z
    .registers 2
    .param p0, "array"    # [Z

    .line 3321
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .line 205
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lexternal/org/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .registers 2
    .param p0, "array"    # [B

    .line 3389
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([C)Z
    .registers 2
    .param p0, "array"    # [C

    .line 3378
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([D)Z
    .registers 2
    .param p0, "array"    # [D

    .line 3400
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([F)Z
    .registers 2
    .param p0, "array"    # [F

    .line 3411
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([I)Z
    .registers 2
    .param p0, "array"    # [I

    .line 3356
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([J)Z
    .registers 2
    .param p0, "array"    # [J

    .line 3345
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 3334
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([S)Z
    .registers 2
    .param p0, "array"    # [S

    .line 3367
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([Z)Z
    .registers 2
    .param p0, "array"    # [Z

    .line 3422
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isSameLength([B[B)Z
    .registers 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 1286
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1289
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1291
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([C[C)Z
    .registers 4
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .line 1268
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1271
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1273
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([D[D)Z
    .registers 4
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .line 1304
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1307
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1309
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([F[F)Z
    .registers 4
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .line 1322
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1325
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1327
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([I[I)Z
    .registers 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 1232
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1235
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1237
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([J[J)Z
    .registers 4
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .line 1214
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1217
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1219
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 4
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 1196
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1199
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1201
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([S[S)Z
    .registers 4
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .line 1250
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1253
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1255
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Z[Z)Z
    .registers 4
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .line 1340
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1343
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1345
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .line 1386
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    .line 1389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1387
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lastIndexOf([BB)I
    .registers 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 2198
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .line 2216
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 2217
    return v0

    .line 2219
    :cond_4
    if-gez p2, :cond_7

    .line 2220
    return v0

    .line 2221
    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    .line 2222
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2224
    :cond_d
    move v1, p2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_18

    .line 2225
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_15

    .line 2226
    return v1

    .line 2224
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2229
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public static lastIndexOf([CC)I
    .registers 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 2093
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .line 2112
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 2113
    return v0

    .line 2115
    :cond_4
    if-gez p2, :cond_7

    .line 2116
    return v0

    .line 2117
    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    .line 2118
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2120
    :cond_d
    move v1, p2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_18

    .line 2121
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_15

    .line 2122
    return v1

    .line 2120
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2125
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public static lastIndexOf([DD)I
    .registers 4
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 2352
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .registers 11
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 2369
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .end local p0    # "array":[D
    .end local p1    # "valueToFind":D
    .end local p3    # "tolerance":D
    .local v0, "array":[D
    .local v1, "valueToFind":D
    .local v4, "tolerance":D
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([DDI)I
    .registers 9
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .line 2387
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2388
    return v1

    .line 2390
    :cond_8
    if-gez p3, :cond_b

    .line 2391
    return v1

    .line 2392
    :cond_b
    array-length v0, p0

    if-lt p3, v0, :cond_11

    .line 2393
    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    .line 2395
    :cond_11
    move v0, p3

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_1e

    .line 2396
    aget-wide v2, p0, v0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_1b

    .line 2397
    return v0

    .line 2395
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2400
    .end local v0    # "i":I
    :cond_1e
    return v1
.end method

.method public static lastIndexOf([DDID)I
    .registers 15
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .line 2421
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2422
    return v1

    .line 2424
    :cond_8
    if-gez p3, :cond_b

    .line 2425
    return v1

    .line 2426
    :cond_b
    array-length v0, p0

    if-lt p3, v0, :cond_11

    .line 2427
    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    .line 2429
    :cond_11
    sub-double v2, p1, p4

    .line 2430
    .local v2, "min":D
    add-double v4, p1, p4

    .line 2431
    .local v4, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_28

    .line 2432
    aget-wide v6, p0, v0

    cmpl-double v8, v6, v2

    if-ltz v8, :cond_25

    aget-wide v6, p0, v0

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_25

    .line 2433
    return v0

    .line 2431
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 2436
    .end local v0    # "i":I
    :cond_28
    return v1
.end method

.method public static lastIndexOf([FF)I
    .registers 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2525
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .registers 6
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .line 2543
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2544
    return v1

    .line 2546
    :cond_8
    if-gez p2, :cond_b

    .line 2547
    return v1

    .line 2548
    :cond_b
    array-length v0, p0

    if-lt p2, v0, :cond_11

    .line 2549
    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    .line 2551
    :cond_11
    move v0, p2

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_1e

    .line 2552
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1b

    .line 2553
    return v0

    .line 2551
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2556
    .end local v0    # "i":I
    :cond_1e
    return v1
.end method

.method public static lastIndexOf([II)I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 1884
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .line 1902
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1903
    return v0

    .line 1905
    :cond_4
    if-gez p2, :cond_7

    .line 1906
    return v0

    .line 1907
    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    .line 1908
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 1910
    :cond_d
    move v1, p2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_18

    .line 1911
    aget v2, p0, v1

    if-ne p1, v2, :cond_15

    .line 1912
    return v1

    .line 1910
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1915
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public static lastIndexOf([JJ)I
    .registers 4
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 1781
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .registers 9
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .line 1799
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1800
    return v0

    .line 1802
    :cond_4
    if-gez p3, :cond_7

    .line 1803
    return v0

    .line 1804
    :cond_7
    array-length v1, p0

    if-lt p3, v1, :cond_d

    .line 1805
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 1807
    :cond_d
    move v1, p3

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_1a

    .line 1808
    aget-wide v2, p0, v1

    cmp-long v4, p1, v2

    if-nez v4, :cond_17

    .line 1809
    return v1

    .line 1807
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1812
    .end local v1    # "i":I
    :cond_1a
    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 1670
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 1688
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1689
    return v0

    .line 1691
    :cond_4
    if-gez p2, :cond_7

    .line 1692
    return v0

    .line 1693
    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    .line 1694
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 1696
    :cond_d
    if-nez p1, :cond_1b

    .line 1697
    move v1, p2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1a

    .line 1698
    aget-object v2, p0, v1

    if-nez v2, :cond_17

    .line 1699
    return v1

    .line 1697
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .end local v1    # "i":I
    :cond_1a
    goto :goto_38

    .line 1702
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1703
    move v1, p2

    .restart local v1    # "i":I
    :goto_2a
    if-ltz v1, :cond_38

    .line 1704
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1705
    return v1

    .line 1703
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 1709
    .end local v1    # "i":I
    :cond_38
    :goto_38
    return v0
.end method

.method public static lastIndexOf([SS)I
    .registers 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 1987
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .line 2005
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 2006
    return v0

    .line 2008
    :cond_4
    if-gez p2, :cond_7

    .line 2009
    return v0

    .line 2010
    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    .line 2011
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2013
    :cond_d
    move v1, p2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_18

    .line 2014
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_15

    .line 2015
    return v1

    .line 2013
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2018
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public static lastIndexOf([ZZ)I
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 2630
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .registers 6
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .line 2648
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 2649
    return v1

    .line 2651
    :cond_8
    if-gez p2, :cond_b

    .line 2652
    return v1

    .line 2653
    :cond_b
    array-length v0, p0

    if-lt p2, v0, :cond_11

    .line 2654
    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    .line 2656
    :cond_11
    move v0, p2

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_1c

    .line 2657
    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_19

    .line 2658
    return v0

    .line 2656
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2661
    .end local v0    # "i":I
    :cond_1c
    return v1
.end method

.method public static nullToEmpty([B)[B
    .registers 2
    .param p0, "array"    # [B

    .line 591
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 594
    :cond_6
    return-object p0

    .line 592
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static nullToEmpty([C)[C
    .registers 2
    .param p0, "array"    # [C

    .line 571
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 574
    :cond_6
    return-object p0

    .line 572
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0
.end method

.method public static nullToEmpty([D)[D
    .registers 2
    .param p0, "array"    # [D

    .line 611
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 614
    :cond_6
    return-object p0

    .line 612
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method public static nullToEmpty([F)[F
    .registers 2
    .param p0, "array"    # [F

    .line 631
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 634
    :cond_6
    return-object p0

    .line 632
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0
.end method

.method public static nullToEmpty([I)[I
    .registers 2
    .param p0, "array"    # [I

    .line 531
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 534
    :cond_6
    return-object p0

    .line 532
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method public static nullToEmpty([J)[J
    .registers 2
    .param p0, "array"    # [J

    .line 511
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 514
    :cond_6
    return-object p0

    .line 512
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 811
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 814
    :cond_6
    return-object p0

    .line 812
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Byte;

    .line 751
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 754
    :cond_6
    return-object p0

    .line 752
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Character;

    .line 731
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 734
    :cond_6
    return-object p0

    .line 732
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Double;

    .line 771
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 774
    :cond_6
    return-object p0

    .line 772
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Float;

    .line 791
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 794
    :cond_6
    return-object p0

    .line 792
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Integer;

    .line 691
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 694
    :cond_6
    return-object p0

    .line 692
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Long;

    .line 671
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 674
    :cond_6
    return-object p0

    .line 672
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 471
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 474
    :cond_6
    return-object p0

    .line 472
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Short;

    .line 711
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 714
    :cond_6
    return-object p0

    .line 712
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "array"    # [Ljava/lang/String;

    .line 491
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 494
    :cond_6
    return-object p0

    .line 492
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public static nullToEmpty([S)[S
    .registers 2
    .param p0, "array"    # [S

    .line 551
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 554
    :cond_6
    return-object p0

    .line 552
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0
.end method

.method public static nullToEmpty([Z)[Z
    .registers 2
    .param p0, "array"    # [Z

    .line 651
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    .line 654
    :cond_6
    return-object p0

    .line 652
    :cond_7
    :goto_7
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 4925
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4926
    .local v0, "length":I
    if-ltz p1, :cond_28

    if-ge p1, v0, :cond_28

    .line 4930
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4931
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4932
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_27

    .line 4933
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4936
    :cond_27
    return-object v1

    .line 4927
    .end local v1    # "result":Ljava/lang/Object;
    :cond_28
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static remove([BI)[B
    .registers 3
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 4477
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .registers 3
    .param p0, "array"    # [C
    .param p1, "index"    # I

    .line 4542
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .registers 3
    .param p0, "array"    # [D
    .param p1, "index"    # I

    .line 4607
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .registers 3
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .line 4672
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .line 4737
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .registers 3
    .param p0, "array"    # [J
    .param p1, "index"    # I

    .line 4802
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 4346
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .registers 3
    .param p0, "array"    # [S
    .param p1, "index"    # I

    .line 4867
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "index"    # I

    .line 4412
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method private static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .registers 12
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "indices"    # [I

    .line 5743
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5744
    .local v0, "length":I
    const/4 v1, 0x0

    .line 5746
    .local v1, "diff":I
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 5747
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 5749
    array-length v2, p1

    .line 5750
    .local v2, "i":I
    move v3, v0

    .line 5751
    .local v3, "prevIndex":I
    :goto_10
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_44

    .line 5752
    aget v4, p1, v2

    .line 5753
    .local v4, "index":I
    if-ltz v4, :cond_21

    if-ge v4, v0, :cond_21

    .line 5756
    if-lt v4, v3, :cond_1d

    .line 5757
    goto :goto_10

    .line 5759
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 5760
    move v3, v4

    .line 5761
    .end local v4    # "index":I
    goto :goto_10

    .line 5754
    .restart local v4    # "index":I
    :cond_21
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5763
    .end local v2    # "i":I
    .end local v3    # "prevIndex":I
    .end local v4    # "index":I
    :cond_44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 5764
    .local v2, "result":Ljava/lang/Object;
    if-ge v1, v0, :cond_75

    .line 5765
    move v3, v0

    .line 5766
    .local v3, "end":I
    sub-int v4, v0, v1

    .line 5767
    .local v4, "dest":I
    array-length v5, p1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_5a
    if-ltz v5, :cond_6f

    .line 5768
    aget v7, p1, v5

    .line 5769
    .local v7, "index":I
    sub-int v8, v3, v7

    if-le v8, v6, :cond_6b

    .line 5770
    sub-int v8, v3, v7

    sub-int/2addr v8, v6

    .line 5771
    .local v8, "cp":I
    sub-int/2addr v4, v8

    .line 5772
    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v9, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5774
    .end local v8    # "cp":I
    :cond_6b
    move v3, v7

    .line 5767
    .end local v7    # "index":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_5a

    .line 5776
    .end local v5    # "i":I
    :cond_6f
    if-lez v3, :cond_75

    .line 5777
    const/4 v5, 0x0

    invoke-static {p0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5780
    .end local v3    # "end":I
    .end local v4    # "dest":I
    :cond_75
    return-object v2
.end method

.method public static varargs removeAll([B[I)[B
    .registers 3
    .param p0, "array"    # [B
    .param p1, "indices"    # [I

    .line 5057
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .registers 3
    .param p0, "array"    # [C
    .param p1, "indices"    # [I

    .line 5324
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .registers 3
    .param p0, "array"    # [D
    .param p1, "indices"    # [I

    .line 5591
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .registers 3
    .param p0, "array"    # [F
    .param p1, "indices"    # [I

    .line 5502
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "indices"    # [I

    .line 5235
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .registers 3
    .param p0, "array"    # [J
    .param p1, "indices"    # [I

    .line 5413
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .registers 3
    .param p1, "indices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .line 4968
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .registers 3
    .param p0, "array"    # [S
    .param p1, "indices"    # [I

    .line 5146
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "indices"    # [I

    .line 5676
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .registers 4
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 4506
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 4507
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4508
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    return-object v1

    .line 4510
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([CC)[C
    .registers 4
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 4571
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4572
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4573
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    return-object v1

    .line 4575
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([DD)[D
    .registers 5
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 4636
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 4637
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4638
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    return-object v1

    .line 4640
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([FF)[F
    .registers 4
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 4701
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 4702
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4703
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    return-object v1

    .line 4705
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([II)[I
    .registers 4
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 4766
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 4767
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4768
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 4770
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([JJ)[J
    .registers 5
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 4831
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 4832
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4833
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    return-object v1

    .line 4835
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 4376
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4377
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4378
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 4380
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([SS)[S
    .registers 4
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 4896
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 4897
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4898
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    return-object v1

    .line 4900
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([ZZ)[Z
    .registers 4
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 4441
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 4442
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4443
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    return-object v1

    .line 4445
    :cond_c
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    return-object v1
.end method

.method public static varargs removeElements([B[B)[B
    .registers 11
    .param p0, "array"    # [B
    .param p1, "values"    # [B

    .line 5088
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5091
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5092
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-byte v3, p1, v2

    .line 5093
    .local v3, "v":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 5094
    .local v4, "boxed":Ljava/lang/Byte;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5095
    .local v5, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_30

    .line 5096
    new-instance v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5098
    :cond_30
    invoke-virtual {v5}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5092
    .end local v3    # "v":B
    .end local v4    # "boxed":Ljava/lang/Byte;
    .end local v5    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5101
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5102
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5103
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    .line 5104
    .local v4, "v":Ljava/lang/Byte;
    const/4 v5, 0x0

    .line 5105
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5106
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    invoke-static {p0, v8, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v5

    .line 5107
    if-gez v5, :cond_6e

    .line 5108
    goto :goto_7b

    .line 5110
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5105
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5112
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Byte;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5113
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object v2

    return-object v2

    .line 5089
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([C[C)[C
    .registers 11
    .param p0, "array"    # [C
    .param p1, "values"    # [C

    .line 5355
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5358
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5359
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-char v3, p1, v2

    .line 5360
    .local v3, "v":C
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 5361
    .local v4, "boxed":Ljava/lang/Character;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5362
    .local v5, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_30

    .line 5363
    new-instance v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5365
    :cond_30
    invoke-virtual {v5}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5359
    .end local v3    # "v":C
    .end local v4    # "boxed":Ljava/lang/Character;
    .end local v5    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5368
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5369
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5370
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    .line 5371
    .local v4, "v":Ljava/lang/Character;
    const/4 v5, 0x0

    .line 5372
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5373
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-static {p0, v8, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v5

    .line 5374
    if-gez v5, :cond_6e

    .line 5375
    goto :goto_7b

    .line 5377
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5372
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5379
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Character;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5380
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object v2

    return-object v2

    .line 5356
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([D[D)[D
    .registers 12
    .param p0, "array"    # [D
    .param p1, "values"    # [D

    .line 5622
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5625
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5626
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-wide v3, p1, v2

    .line 5627
    .local v3, "v":D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 5628
    .local v5, "boxed":Ljava/lang/Double;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5629
    .local v6, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v6, :cond_30

    .line 5630
    new-instance v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5632
    :cond_30
    invoke-virtual {v6}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5626
    .end local v3    # "v":D
    .end local v5    # "boxed":Ljava/lang/Double;
    .end local v6    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5635
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5636
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5637
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 5638
    .local v4, "v":Ljava/lang/Double;
    const/4 v5, 0x0

    .line 5639
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5640
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {p0, v8, v9, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v5

    .line 5641
    if-gez v5, :cond_6e

    .line 5642
    goto :goto_7b

    .line 5644
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5639
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5646
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Double;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5647
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object v2

    return-object v2

    .line 5623
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([F[F)[F
    .registers 11
    .param p0, "array"    # [F
    .param p1, "values"    # [F

    .line 5533
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5536
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5537
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget v3, p1, v2

    .line 5538
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 5539
    .local v4, "boxed":Ljava/lang/Float;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5540
    .local v5, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_30

    .line 5541
    new-instance v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5543
    :cond_30
    invoke-virtual {v5}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5537
    .end local v3    # "v":F
    .end local v4    # "boxed":Ljava/lang/Float;
    .end local v5    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5546
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5547
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5548
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 5549
    .local v4, "v":Ljava/lang/Float;
    const/4 v5, 0x0

    .line 5550
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5551
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {p0, v8, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v5

    .line 5552
    if-gez v5, :cond_6e

    .line 5553
    goto :goto_7b

    .line 5555
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5550
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5557
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Float;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5558
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object v2

    return-object v2

    .line 5534
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([I[I)[I
    .registers 11
    .param p0, "array"    # [I
    .param p1, "values"    # [I

    .line 5266
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5269
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5270
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget v3, p1, v2

    .line 5271
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5272
    .local v4, "boxed":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5273
    .local v5, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_30

    .line 5274
    new-instance v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5276
    :cond_30
    invoke-virtual {v5}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5270
    .end local v3    # "v":I
    .end local v4    # "boxed":Ljava/lang/Integer;
    .end local v5    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5279
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5280
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5281
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5282
    .local v4, "v":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 5283
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5284
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v5

    .line 5285
    if-gez v5, :cond_6e

    .line 5286
    goto :goto_7b

    .line 5288
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5283
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5290
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Integer;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5291
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object v2

    return-object v2

    .line 5267
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([J[J)[J
    .registers 12
    .param p0, "array"    # [J
    .param p1, "values"    # [J

    .line 5444
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5447
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5448
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-wide v3, p1, v2

    .line 5449
    .local v3, "v":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 5450
    .local v5, "boxed":Ljava/lang/Long;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5451
    .local v6, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v6, :cond_30

    .line 5452
    new-instance v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5454
    :cond_30
    invoke-virtual {v6}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5448
    .end local v3    # "v":J
    .end local v5    # "boxed":Ljava/lang/Long;
    .end local v6    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5457
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5458
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5459
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 5460
    .local v4, "v":Ljava/lang/Long;
    const/4 v5, 0x0

    .line 5461
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5462
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v5

    .line 5463
    if-gez v5, :cond_6e

    .line 5464
    goto :goto_7b

    .line 5466
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5461
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5468
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Long;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5469
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object v2

    return-object v2

    .line 5445
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 5000
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_7b

    .line 5003
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5004
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_32

    aget-object v3, p1, v2

    .line 5005
    .local v3, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5006
    .local v4, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v4, :cond_2c

    .line 5007
    new-instance v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 5009
    :cond_2c
    invoke-virtual {v4}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5004
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    .end local v4    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5012
    :cond_32
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5013
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5014
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 5015
    .local v4, "v":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 5016
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_5b
    if-ge v6, v7, :cond_71

    .line 5017
    invoke-static {p0, v4, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v5

    .line 5018
    if-gez v5, :cond_64

    .line 5019
    goto :goto_71

    .line 5021
    :cond_64
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5016
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_5b

    .line 5023
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_71
    :goto_71
    goto :goto_3f

    .line 5024
    :cond_72
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5001
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_7b
    :goto_7b
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([S[S)[S
    .registers 11
    .param p0, "array"    # [S
    .param p1, "values"    # [S

    .line 5177
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5180
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5181
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Short;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-short v3, p1, v2

    .line 5182
    .local v3, "v":S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 5183
    .local v4, "boxed":Ljava/lang/Short;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5184
    .local v5, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_30

    .line 5185
    new-instance v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5187
    :cond_30
    invoke-virtual {v5}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5181
    .end local v3    # "v":S
    .end local v4    # "boxed":Ljava/lang/Short;
    .end local v5    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5190
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5191
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5192
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    .line 5193
    .local v4, "v":Ljava/lang/Short;
    const/4 v5, 0x0

    .line 5194
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5195
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-static {p0, v8, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v5

    .line 5196
    if-gez v5, :cond_6e

    .line 5197
    goto :goto_7b

    .line 5199
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5194
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5201
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Short;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5202
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object v2

    return-object v2

    .line 5178
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Short;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .registers 11
    .param p0, "array"    # [Z
    .param p1, "values"    # [Z

    .line 5707
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 5710
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5711
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-boolean v3, p1, v2

    .line 5712
    .local v3, "v":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 5713
    .local v4, "boxed":Ljava/lang/Boolean;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    .line 5714
    .local v5, "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_30

    .line 5715
    new-instance v6, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5717
    :cond_30
    invoke-virtual {v5}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 5711
    .end local v3    # "v":Z
    .end local v4    # "boxed":Ljava/lang/Boolean;
    .end local v5    # "count":Lexternal/org/apache/commons/lang3/mutable/MutableInt;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5720
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5721
    .local v1, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5722
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 5723
    .local v4, "v":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 5724
    .local v5, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_61
    if-ge v6, v7, :cond_7b

    .line 5725
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {p0, v8, v5}, Lexternal/org/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v5

    .line 5726
    if-gez v5, :cond_6e

    .line 5727
    goto :goto_7b

    .line 5729
    :cond_6e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "found":I
    .local v8, "found":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5724
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    .line 5731
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "v":Ljava/lang/Boolean;
    .end local v6    # "i":I
    .end local v7    # "ct":I
    .end local v8    # "found":I
    :cond_7b
    :goto_7b
    goto :goto_43

    .line 5732
    :cond_7c
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lexternal/org/apache/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object v2

    return-object v2

    .line 5708
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Lexternal/org/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_85
    :goto_85
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public static reverse([B)V
    .registers 5
    .param p0, "array"    # [B

    .line 1519
    if-nez p0, :cond_3

    .line 1520
    return-void

    .line 1522
    :cond_3
    const/4 v0, 0x0

    .line 1523
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1525
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1526
    aget-byte v2, p0, v1

    .line 1527
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 1528
    aput-byte v2, p0, v0

    .line 1529
    add-int/lit8 v1, v1, -0x1

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1532
    .end local v2    # "tmp":B
    :cond_16
    return-void
.end method

.method public static reverse([C)V
    .registers 5
    .param p0, "array"    # [C

    .line 1496
    if-nez p0, :cond_3

    .line 1497
    return-void

    .line 1499
    :cond_3
    const/4 v0, 0x0

    .line 1500
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1502
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1503
    aget-char v2, p0, v1

    .line 1504
    .local v2, "tmp":C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    .line 1505
    aput-char v2, p0, v0

    .line 1506
    add-int/lit8 v1, v1, -0x1

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1509
    .end local v2    # "tmp":C
    :cond_16
    return-void
.end method

.method public static reverse([D)V
    .registers 7
    .param p0, "array"    # [D

    .line 1542
    if-nez p0, :cond_3

    .line 1543
    return-void

    .line 1545
    :cond_3
    const/4 v0, 0x0

    .line 1546
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1548
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1549
    aget-wide v2, p0, v1

    .line 1550
    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1551
    aput-wide v2, p0, v0

    .line 1552
    add-int/lit8 v1, v1, -0x1

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1555
    .end local v2    # "tmp":D
    :cond_16
    return-void
.end method

.method public static reverse([F)V
    .registers 5
    .param p0, "array"    # [F

    .line 1565
    if-nez p0, :cond_3

    .line 1566
    return-void

    .line 1568
    :cond_3
    const/4 v0, 0x0

    .line 1569
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1571
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1572
    aget v2, p0, v1

    .line 1573
    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1574
    aput v2, p0, v0

    .line 1575
    add-int/lit8 v1, v1, -0x1

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1578
    .end local v2    # "tmp":F
    :cond_16
    return-void
.end method

.method public static reverse([I)V
    .registers 5
    .param p0, "array"    # [I

    .line 1450
    if-nez p0, :cond_3

    .line 1451
    return-void

    .line 1453
    :cond_3
    const/4 v0, 0x0

    .line 1454
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1456
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1457
    aget v2, p0, v1

    .line 1458
    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1459
    aput v2, p0, v0

    .line 1460
    add-int/lit8 v1, v1, -0x1

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1463
    .end local v2    # "tmp":I
    :cond_16
    return-void
.end method

.method public static reverse([J)V
    .registers 7
    .param p0, "array"    # [J

    .line 1427
    if-nez p0, :cond_3

    .line 1428
    return-void

    .line 1430
    :cond_3
    const/4 v0, 0x0

    .line 1431
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1433
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1434
    aget-wide v2, p0, v1

    .line 1435
    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1436
    aput-wide v2, p0, v0

    .line 1437
    add-int/lit8 v1, v1, -0x1

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1440
    .end local v2    # "tmp":J
    :cond_16
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1404
    if-nez p0, :cond_3

    .line 1405
    return-void

    .line 1407
    :cond_3
    const/4 v0, 0x0

    .line 1408
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1410
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1411
    aget-object v2, p0, v1

    .line 1412
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1413
    aput-object v2, p0, v0

    .line 1414
    add-int/lit8 v1, v1, -0x1

    .line 1415
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1417
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_16
    return-void
.end method

.method public static reverse([S)V
    .registers 5
    .param p0, "array"    # [S

    .line 1473
    if-nez p0, :cond_3

    .line 1474
    return-void

    .line 1476
    :cond_3
    const/4 v0, 0x0

    .line 1477
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1479
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1480
    aget-short v2, p0, v1

    .line 1481
    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 1482
    aput-short v2, p0, v0

    .line 1483
    add-int/lit8 v1, v1, -0x1

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1486
    .end local v2    # "tmp":S
    :cond_16
    return-void
.end method

.method public static reverse([Z)V
    .registers 5
    .param p0, "array"    # [Z

    .line 1588
    if-nez p0, :cond_3

    .line 1589
    return-void

    .line 1591
    :cond_3
    const/4 v0, 0x0

    .line 1592
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1594
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 1595
    aget-boolean v2, p0, v1

    .line 1596
    .local v2, "tmp":Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    .line 1597
    aput-boolean v2, p0, v0

    .line 1598
    add-int/lit8 v1, v1, -0x1

    .line 1599
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1601
    .end local v2    # "tmp":Z
    :cond_16
    return-void
.end method

.method public static subarray([BII)[B
    .registers 6
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1046
    if-nez p0, :cond_4

    .line 1047
    const/4 v0, 0x0

    return-object v0

    .line 1049
    :cond_4
    if-gez p1, :cond_7

    .line 1050
    const/4 p1, 0x0

    .line 1052
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 1053
    array-length p2, p0

    .line 1055
    :cond_b
    sub-int v0, p2, p1

    .line 1056
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 1057
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 1060
    :cond_12
    new-array v1, v0, [B

    .line 1061
    .local v1, "subarray":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1062
    return-object v1
.end method

.method public static subarray([CII)[C
    .registers 6
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1007
    if-nez p0, :cond_4

    .line 1008
    const/4 v0, 0x0

    return-object v0

    .line 1010
    :cond_4
    if-gez p1, :cond_7

    .line 1011
    const/4 p1, 0x0

    .line 1013
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 1014
    array-length p2, p0

    .line 1016
    :cond_b
    sub-int v0, p2, p1

    .line 1017
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 1018
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v1

    .line 1021
    :cond_12
    new-array v1, v0, [C

    .line 1022
    .local v1, "subarray":[C
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    return-object v1
.end method

.method public static subarray([DII)[D
    .registers 6
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1085
    if-nez p0, :cond_4

    .line 1086
    const/4 v0, 0x0

    return-object v0

    .line 1088
    :cond_4
    if-gez p1, :cond_7

    .line 1089
    const/4 p1, 0x0

    .line 1091
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 1092
    array-length p2, p0

    .line 1094
    :cond_b
    sub-int v0, p2, p1

    .line 1095
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 1096
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v1

    .line 1099
    :cond_12
    new-array v1, v0, [D

    .line 1100
    .local v1, "subarray":[D
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    return-object v1
.end method

.method public static subarray([FII)[F
    .registers 6
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1124
    if-nez p0, :cond_4

    .line 1125
    const/4 v0, 0x0

    return-object v0

    .line 1127
    :cond_4
    if-gez p1, :cond_7

    .line 1128
    const/4 p1, 0x0

    .line 1130
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 1131
    array-length p2, p0

    .line 1133
    :cond_b
    sub-int v0, p2, p1

    .line 1134
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 1135
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v1

    .line 1138
    :cond_12
    new-array v1, v0, [F

    .line 1139
    .local v1, "subarray":[F
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
    return-object v1
.end method

.method public static subarray([III)[I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 929
    if-nez p0, :cond_4

    .line 930
    const/4 v0, 0x0

    return-object v0

    .line 932
    :cond_4
    if-gez p1, :cond_7

    .line 933
    const/4 p1, 0x0

    .line 935
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 936
    array-length p2, p0

    .line 938
    :cond_b
    sub-int v0, p2, p1

    .line 939
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 940
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v1

    .line 943
    :cond_12
    new-array v1, v0, [I

    .line 944
    .local v1, "subarray":[I
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 945
    return-object v1
.end method

.method public static subarray([JII)[J
    .registers 6
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 890
    if-nez p0, :cond_4

    .line 891
    const/4 v0, 0x0

    return-object v0

    .line 893
    :cond_4
    if-gez p1, :cond_7

    .line 894
    const/4 p1, 0x0

    .line 896
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 897
    array-length p2, p0

    .line 899
    :cond_b
    sub-int v0, p2, p1

    .line 900
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 901
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v1

    .line 904
    :cond_12
    new-array v1, v0, [J

    .line 905
    .local v1, "subarray":[J
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 906
    return-object v1
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 7
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 848
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_4

    .line 849
    const/4 v0, 0x0

    return-object v0

    .line 851
    :cond_4
    if-gez p1, :cond_7

    .line 852
    const/4 p1, 0x0

    .line 854
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 855
    array-length p2, p0

    .line 857
    :cond_b
    sub-int v0, p2, p1

    .line 858
    .local v0, "newSize":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 859
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-gtz v0, :cond_1f

    .line 861
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 862
    .local v2, "emptyArray":[Ljava/lang/Object;, "[TT;"
    return-object v2

    .line 865
    .end local v2    # "emptyArray":[Ljava/lang/Object;, "[TT;"
    :cond_1f
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 866
    .local v3, "subarray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    return-object v3
.end method

.method public static subarray([SII)[S
    .registers 6
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 968
    if-nez p0, :cond_4

    .line 969
    const/4 v0, 0x0

    return-object v0

    .line 971
    :cond_4
    if-gez p1, :cond_7

    .line 972
    const/4 p1, 0x0

    .line 974
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 975
    array-length p2, p0

    .line 977
    :cond_b
    sub-int v0, p2, p1

    .line 978
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 979
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v1

    .line 982
    :cond_12
    new-array v1, v0, [S

    .line 983
    .local v1, "subarray":[S
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 984
    return-object v1
.end method

.method public static subarray([ZII)[Z
    .registers 6
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1163
    if-nez p0, :cond_4

    .line 1164
    const/4 v0, 0x0

    return-object v0

    .line 1166
    :cond_4
    if-gez p1, :cond_7

    .line 1167
    const/4 p1, 0x0

    .line 1169
    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 1170
    array-length p2, p0

    .line 1172
    :cond_b
    sub-int v0, p2, p1

    .line 1173
    .local v0, "newSize":I
    if-gtz v0, :cond_12

    .line 1174
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v1

    .line 1177
    :cond_12
    new-array v1, v0, [Z

    .line 1178
    .local v1, "subarray":[Z
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1179
    return-object v1
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 302
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 236
    if-nez p0, :cond_4

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 240
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, p0

    if-ge v1, v2, :cond_8f

    .line 241
    aget-object v2, p0, v1

    .line 242
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Map$Entry;

    if-eqz v3, :cond_29

    .line 243
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 244
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_42

    :cond_29
    instance-of v3, v2, [Ljava/lang/Object;

    const-string v4, ", \'"

    const-string v5, "Array element "

    if-eqz v3, :cond_6a

    .line 246
    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    .line 247
    .local v3, "entry":[Ljava/lang/Object;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_45

    .line 252
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .end local v3    # "entry":[Ljava/lang/Object;
    nop

    .line 240
    .end local v2    # "object":Ljava/lang/Object;
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 248
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "entry":[Ljava/lang/Object;
    :cond_45
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', has a length less than 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 254
    .end local v3    # "entry":[Ljava/lang/Object;
    :cond_6a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    .end local v1    # "i":I
    .end local v2    # "object":Ljava/lang/Object;
    :cond_8f
    return-object v0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .registers 4
    .param p0, "array"    # [Z

    .line 3212
    if-nez p0, :cond_4

    .line 3213
    const/4 v0, 0x0

    return-object v0

    .line 3214
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3215
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0

    .line 3217
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 3218
    .local v0, "result":[Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 3219
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_18

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1a
    aput-object v2, v0, v1

    .line 3218
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3221
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .registers 4
    .param p0, "array"    # [B

    .line 3008
    if-nez p0, :cond_4

    .line 3009
    const/4 v0, 0x0

    return-object v0

    .line 3010
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3011
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0

    .line 3013
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 3014
    .local v0, "result":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 3015
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3014
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3017
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .registers 4
    .param p0, "array"    # [C

    .line 2736
    if-nez p0, :cond_4

    .line 2737
    const/4 v0, 0x0

    return-object v0

    .line 2738
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2739
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0

    .line 2741
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Character;

    .line 2742
    .local v0, "result":[Ljava/lang/Character;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2743
    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2742
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2745
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .registers 5
    .param p0, "array"    # [D

    .line 3076
    if-nez p0, :cond_4

    .line 3077
    const/4 v0, 0x0

    return-object v0

    .line 3078
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3079
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0

    .line 3081
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    .line 3082
    .local v0, "result":[Ljava/lang/Double;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 3083
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3082
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3085
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .registers 4
    .param p0, "array"    # [F

    .line 3144
    if-nez p0, :cond_4

    .line 3145
    const/4 v0, 0x0

    return-object v0

    .line 3146
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3147
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0

    .line 3149
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    .line 3150
    .local v0, "result":[Ljava/lang/Float;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 3151
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3150
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3153
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .registers 4
    .param p0, "array"    # [I

    .line 2872
    if-nez p0, :cond_4

    .line 2873
    const/4 v0, 0x0

    return-object v0

    .line 2874
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2875
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0

    .line 2877
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 2878
    .local v0, "result":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2879
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2878
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2881
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .registers 5
    .param p0, "array"    # [J

    .line 2804
    if-nez p0, :cond_4

    .line 2805
    const/4 v0, 0x0

    return-object v0

    .line 2806
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2807
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0

    .line 2809
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    .line 2810
    .local v0, "result":[Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2811
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2810
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2813
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .registers 4
    .param p0, "array"    # [S

    .line 2940
    if-nez p0, :cond_4

    .line 2941
    const/4 v0, 0x0

    return-object v0

    .line 2942
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2943
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0

    .line 2945
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Short;

    .line 2946
    .local v0, "result":[Ljava/lang/Short;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2947
    aget-short v2, p0, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2946
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2949
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .registers 4
    .param p0, "array"    # [Ljava/lang/Byte;

    .line 2964
    if-nez p0, :cond_4

    .line 2965
    const/4 v0, 0x0

    return-object v0

    .line 2966
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2967
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2969
    :cond_a
    array-length v0, p0

    new-array v0, v0, [B

    .line 2970
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2971
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 2970
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2973
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .registers 6
    .param p0, "array"    # [Ljava/lang/Byte;
    .param p1, "valueForNull"    # B

    .line 2986
    if-nez p0, :cond_4

    .line 2987
    const/4 v0, 0x0

    return-object v0

    .line 2988
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2989
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2991
    :cond_a
    array-length v0, p0

    new-array v0, v0, [B

    .line 2992
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 2993
    aget-object v2, p0, v1

    .line 2994
    .local v2, "b":Ljava/lang/Byte;
    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_1b
    aput-byte v3, v0, v1

    .line 2992
    .end local v2    # "b":Ljava/lang/Byte;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2996
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .registers 4
    .param p0, "array"    # [Ljava/lang/Character;

    .line 2692
    if-nez p0, :cond_4

    .line 2693
    const/4 v0, 0x0

    return-object v0

    .line 2694
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2695
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 2697
    :cond_a
    array-length v0, p0

    new-array v0, v0, [C

    .line 2698
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2699
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    .line 2698
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2701
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .registers 6
    .param p0, "array"    # [Ljava/lang/Character;
    .param p1, "valueForNull"    # C

    .line 2714
    if-nez p0, :cond_4

    .line 2715
    const/4 v0, 0x0

    return-object v0

    .line 2716
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2717
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 2719
    :cond_a
    array-length v0, p0

    new-array v0, v0, [C

    .line 2720
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 2721
    aget-object v2, p0, v1

    .line 2722
    .local v2, "b":Ljava/lang/Character;
    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    :goto_1b
    aput-char v3, v0, v1

    .line 2720
    .end local v2    # "b":Ljava/lang/Character;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2724
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .registers 5
    .param p0, "array"    # [Ljava/lang/Double;

    .line 3032
    if-nez p0, :cond_4

    .line 3033
    const/4 v0, 0x0

    return-object v0

    .line 3034
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3035
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 3037
    :cond_a
    array-length v0, p0

    new-array v0, v0, [D

    .line 3038
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 3039
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3038
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3041
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .registers 8
    .param p0, "array"    # [Ljava/lang/Double;
    .param p1, "valueForNull"    # D

    .line 3054
    if-nez p0, :cond_4

    .line 3055
    const/4 v0, 0x0

    return-object v0

    .line 3056
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3057
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 3059
    :cond_a
    array-length v0, p0

    new-array v0, v0, [D

    .line 3060
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 3061
    aget-object v2, p0, v1

    .line 3062
    .local v2, "b":Ljava/lang/Double;
    if-nez v2, :cond_17

    move-wide v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_1b
    aput-wide v3, v0, v1

    .line 3060
    .end local v2    # "b":Ljava/lang/Double;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3064
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .registers 4
    .param p0, "array"    # [Ljava/lang/Float;

    .line 3100
    if-nez p0, :cond_4

    .line 3101
    const/4 v0, 0x0

    return-object v0

    .line 3102
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3103
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    .line 3105
    :cond_a
    array-length v0, p0

    new-array v0, v0, [F

    .line 3106
    .local v0, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 3107
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 3106
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3109
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .registers 6
    .param p0, "array"    # [Ljava/lang/Float;
    .param p1, "valueForNull"    # F

    .line 3122
    if-nez p0, :cond_4

    .line 3123
    const/4 v0, 0x0

    return-object v0

    .line 3124
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3125
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    .line 3127
    :cond_a
    array-length v0, p0

    new-array v0, v0, [F

    .line 3128
    .local v0, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 3129
    aget-object v2, p0, v1

    .line 3130
    .local v2, "b":Ljava/lang/Float;
    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1b
    aput v3, v0, v1

    .line 3128
    .end local v2    # "b":Ljava/lang/Float;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3132
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .registers 4
    .param p0, "array"    # [Ljava/lang/Integer;

    .line 2828
    if-nez p0, :cond_4

    .line 2829
    const/4 v0, 0x0

    return-object v0

    .line 2830
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2831
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 2833
    :cond_a
    array-length v0, p0

    new-array v0, v0, [I

    .line 2834
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2835
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 2834
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2837
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .registers 6
    .param p0, "array"    # [Ljava/lang/Integer;
    .param p1, "valueForNull"    # I

    .line 2850
    if-nez p0, :cond_4

    .line 2851
    const/4 v0, 0x0

    return-object v0

    .line 2852
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2853
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 2855
    :cond_a
    array-length v0, p0

    new-array v0, v0, [I

    .line 2856
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 2857
    aget-object v2, p0, v1

    .line 2858
    .local v2, "b":Ljava/lang/Integer;
    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1b
    aput v3, v0, v1

    .line 2856
    .end local v2    # "b":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2860
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .registers 5
    .param p0, "array"    # [Ljava/lang/Long;

    .line 2760
    if-nez p0, :cond_4

    .line 2761
    const/4 v0, 0x0

    return-object v0

    .line 2762
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2763
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    .line 2765
    :cond_a
    array-length v0, p0

    new-array v0, v0, [J

    .line 2766
    .local v0, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2767
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2766
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2769
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .registers 8
    .param p0, "array"    # [Ljava/lang/Long;
    .param p1, "valueForNull"    # J

    .line 2782
    if-nez p0, :cond_4

    .line 2783
    const/4 v0, 0x0

    return-object v0

    .line 2784
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2785
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    .line 2787
    :cond_a
    array-length v0, p0

    new-array v0, v0, [J

    .line 2788
    .local v0, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 2789
    aget-object v2, p0, v1

    .line 2790
    .local v2, "b":Ljava/lang/Long;
    if-nez v2, :cond_17

    move-wide v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1b
    aput-wide v3, v0, v1

    .line 2788
    .end local v2    # "b":Ljava/lang/Long;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2792
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .registers 4
    .param p0, "array"    # [Ljava/lang/Short;

    .line 2896
    if-nez p0, :cond_4

    .line 2897
    const/4 v0, 0x0

    return-object v0

    .line 2898
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2899
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 2901
    :cond_a
    array-length v0, p0

    new-array v0, v0, [S

    .line 2902
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2903
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    .line 2902
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2905
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .registers 6
    .param p0, "array"    # [Ljava/lang/Short;
    .param p1, "valueForNull"    # S

    .line 2918
    if-nez p0, :cond_4

    .line 2919
    const/4 v0, 0x0

    return-object v0

    .line 2920
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2921
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 2923
    :cond_a
    array-length v0, p0

    new-array v0, v0, [S

    .line 2924
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 2925
    aget-object v2, p0, v1

    .line 2926
    .local v2, "b":Ljava/lang/Short;
    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    :goto_1b
    aput-short v3, v0, v1

    .line 2924
    .end local v2    # "b":Ljava/lang/Short;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2928
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .registers 4
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 3168
    if-nez p0, :cond_4

    .line 3169
    const/4 v0, 0x0

    return-object v0

    .line 3170
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3171
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    .line 3173
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Z

    .line 3174
    .local v0, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 3175
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 3174
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3177
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .registers 6
    .param p0, "array"    # [Ljava/lang/Boolean;
    .param p1, "valueForNull"    # Z

    .line 3190
    if-nez p0, :cond_4

    .line 3191
    const/4 v0, 0x0

    return-object v0

    .line 3192
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3193
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    .line 3195
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Z

    .line 3196
    .local v0, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 3197
    aget-object v2, p0, v1

    .line 3198
    .local v2, "b":Ljava/lang/Boolean;
    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1b
    aput-boolean v3, v0, v1

    .line 3196
    .end local v2    # "b":Ljava/lang/Boolean;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3200
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 160
    const-string v0, "{}"

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "stringIfNull"    # Ljava/lang/String;

    .line 176
    if-nez p0, :cond_3

    .line 177
    return-object p1

    .line 179
    :cond_3
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
