.class public Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    if-nez p2, :cond_9

    .line 254
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getDefaultStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    .line 256
    :cond_9
    if-nez p3, :cond_13

    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object p3, v0

    .line 259
    :cond_13
    iput-object p3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 260
    iput-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 261
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 263
    invoke-virtual {p2, p3, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public static getDefaultStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .registers 1

    .line 117
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 152
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 165
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 3
    .param p0, "style"    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 136
    if-eqz p0, :cond_5

    .line 139
    sput-object p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 140
    return-void

    .line 137
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # B

    .line 304
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 305
    return-object p0
.end method

.method public append(C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # C

    .line 332
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 333
    return-object p0
.end method

.method public append(D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "value"    # D

    .line 360
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 361
    return-object p0
.end method

.method public append(F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # F

    .line 388
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 389
    return-object p0
.end method

.method public append(I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # I

    .line 416
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 417
    return-object p0
.end method

.method public append(J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "value"    # J

    .line 444
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 445
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 473
    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 573
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 574
    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 618
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 619
    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 664
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 665
    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 710
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 711
    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 756
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 757
    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 802
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 803
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 849
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .line 863
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 864
    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 909
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 910
    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 527
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 528
    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .line 585
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 586
    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "fullDetail"    # Z

    .line 605
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 606
    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C

    .line 631
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 632
    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C
    .param p3, "fullDetail"    # Z

    .line 651
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 652
    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D

    .line 677
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 678
    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D
    .param p3, "fullDetail"    # Z

    .line 697
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 698
    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .line 723
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 724
    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F
    .param p3, "fullDetail"    # Z

    .line 743
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 744
    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I

    .line 769
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 770
    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I
    .param p3, "fullDetail"    # Z

    .line 789
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 790
    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J

    .line 815
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 816
    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J
    .param p3, "fullDetail"    # Z

    .line 835
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 836
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;

    .line 876
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 877
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .line 896
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 897
    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S

    .line 922
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 923
    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S
    .param p3, "fullDetail"    # Z

    .line 942
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 943
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z

    .line 540
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 541
    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z
    .param p3, "fullDetail"    # Z

    .line 560
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 561
    return-object p0
.end method

.method public append(S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # S

    .line 500
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 501
    return-object p0
.end method

.method public append(Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # Z

    .line 276
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 277
    return-object p0
.end method

.method public append([B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [B

    .line 318
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 319
    return-object p0
.end method

.method public append([C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [C

    .line 346
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 347
    return-object p0
.end method

.method public append([D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [D

    .line 374
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 375
    return-object p0
.end method

.method public append([F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [F

    .line 402
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 403
    return-object p0
.end method

.method public append([I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [I

    .line 430
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 431
    return-object p0
.end method

.method public append([J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [J

    .line 458
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 459
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 487
    return-object p0
.end method

.method public append([S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [S

    .line 514
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 515
    return-object p0
.end method

.method public append([Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [Z

    .line 290
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 291
    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 956
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 957
    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 4
    .param p1, "superToString"    # Ljava/lang/String;

    .line 975
    if-eqz p1, :cond_9

    .line 976
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 978
    :cond_9
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 4
    .param p1, "toString"    # Ljava/lang/String;

    .line 1009
    if-eqz p1, :cond_9

    .line 1010
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1012
    :cond_9
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .registers 2

    .line 1077
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    .line 1022
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .registers 2

    .line 1031
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .registers 2

    .line 1043
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1058
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1059
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 1061
    :cond_16
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 1063
    :goto_23
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
