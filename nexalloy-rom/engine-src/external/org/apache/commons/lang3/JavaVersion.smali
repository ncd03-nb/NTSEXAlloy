.class public final enum Lexternal/org/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexternal/org/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private value:F


# direct methods
.method private static synthetic $values()[Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 3

    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [Lexternal/org/apache/commons/lang3/JavaVersion;

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 32
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "0.9"

    const-string v2, "JAVA_0_9"

    const/4 v3, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2, v3, v4, v1}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 37
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const v1, 0x3f8ccccd    # 1.1f

    const-string v2, "1.1"

    const-string v3, "JAVA_1_1"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 42
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const v1, 0x3f99999a    # 1.2f

    const-string v2, "1.2"

    const-string v3, "JAVA_1_2"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 47
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const v1, 0x3fa66666    # 1.3f

    const-string v2, "1.3"

    const-string v3, "JAVA_1_3"

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5, v1, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 52
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const v1, 0x3fb33333    # 1.4f

    const-string v2, "1.4"

    const-string v3, "JAVA_1_4"

    const/4 v5, 0x4

    invoke-direct {v0, v3, v5, v1, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 57
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const/4 v1, 0x5

    const-string v2, "1.5"

    const-string v3, "JAVA_1_5"

    invoke-direct {v0, v3, v1, v4, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 62
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const v1, 0x3fcccccd    # 1.6f

    const-string v2, "1.6"

    const-string v3, "JAVA_1_6"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 67
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const v1, 0x3fd9999a    # 1.7f

    const-string v2, "1.7"

    const-string v3, "JAVA_1_7"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 72
    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const v1, 0x3fe66666    # 1.8f

    const-string v2, "1.8"

    const-string v3, "JAVA_1_8"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 27
    invoke-static {}, Lexternal/org/apache/commons/lang3/JavaVersion;->$values()[Lexternal/org/apache/commons/lang3/JavaVersion;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->$VALUES:[Lexternal/org/apache/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .registers 5
    .param p3, "value"    # F
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->value:F

    .line 91
    iput-object p4, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static get(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 2
    .param p0, "nom"    # Ljava/lang/String;

    .line 132
    const-string v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 133
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 134
    :cond_b
    const-string v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 135
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 136
    :cond_16
    const-string v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 137
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 138
    :cond_21
    const-string v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 139
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 140
    :cond_2c
    const-string v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 141
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 142
    :cond_37
    const-string v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 143
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 144
    :cond_42
    const-string v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 145
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 146
    :cond_4d
    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 147
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 148
    :cond_58
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 149
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 151
    :cond_63
    const/4 v0, 0x0

    return-object v0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 2
    .param p0, "nom"    # Ljava/lang/String;

    .line 119
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 1

    .line 27
    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->$VALUES:[Lexternal/org/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lexternal/org/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lexternal/org/apache/commons/lang3/JavaVersion;)Z
    .registers 4
    .param p1, "requiredVersion"    # Lexternal/org/apache/commons/lang3/JavaVersion;

    .line 105
    iget v0, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lexternal/org/apache/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
