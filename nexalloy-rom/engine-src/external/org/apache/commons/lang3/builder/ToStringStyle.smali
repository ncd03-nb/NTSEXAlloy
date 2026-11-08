.class public abstract Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHORT_PREFIX_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field private static final serialVersionUID:J = -0x23ea08d00c05296cL


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 95
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 106
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 118
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 128
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 136
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 218
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    .line 228
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 233
    const-string v2, "["

    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 238
    const-string v2, "]"

    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 243
    const-string v2, "="

    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 248
    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 253
    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 258
    const-string v1, ","

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 263
    const-string v2, "{"

    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 268
    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 273
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    .line 278
    const-string v1, "}"

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 284
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    .line 289
    const-string v0, "<null>"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 294
    const-string v0, "<size="

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 299
    const-string v0, ">"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 304
    const-string v1, "<"

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 318
    return-void
.end method

.method static getRegistry()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 163
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 164
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method static register(Ljava/lang/Object;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 177
    if-eqz p0, :cond_1a

    .line 178
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 179
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_12

    .line 180
    sget-object v1, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 182
    :cond_12
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1a
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 199
    if-eqz p0, :cond_16

    .line 200
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 201
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_16

    .line 202
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 204
    sget-object v1, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 208
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_16
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 723
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 725
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 751
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 753
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 779
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 781
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 807
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 809
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 667
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 669
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 639
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 641
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 430
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 432
    if-nez p3, :cond_9

    .line 433
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_10

    .line 436
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 439
    :goto_10
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 695
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 697
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 835
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 837
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1142
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1144
    if-nez p3, :cond_9

    .line 1145
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1147
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1148
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_16

    .line 1151
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 1154
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1203
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1205
    if-nez p3, :cond_9

    .line 1206
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1208
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1209
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_16

    .line 1212
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 1215
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1264
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1266
    if-nez p3, :cond_9

    .line 1267
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1269
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1270
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_16

    .line 1273
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 1276
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1325
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1327
    if-nez p3, :cond_9

    .line 1328
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1330
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1331
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_16

    .line 1334
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 1337
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1020
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1022
    if-nez p3, :cond_9

    .line 1023
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1025
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1026
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_16

    .line 1029
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 1032
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 959
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 961
    if-nez p3, :cond_9

    .line 962
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 964
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 965
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_16

    .line 968
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 971
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 863
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 865
    if-nez p3, :cond_9

    .line 866
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 868
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 869
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 872
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1081
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1083
    if-nez p3, :cond_9

    .line 1084
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1086
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1087
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_16

    .line 1090
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 1093
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1386
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1388
    if-nez p3, :cond_9

    .line 1389
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1391
    :cond_9
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1392
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_16

    .line 1395
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 1398
    :goto_16
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1443
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_24

    if-eqz p2, :cond_24

    .line 1444
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1445
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_19

    .line 1446
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 1448
    :cond_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1451
    :cond_24
    :goto_24
    return-void
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1482
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1473
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 573
    invoke-static {p1, p3}, Lexternal/org/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 737
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 738
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 765
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 766
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 793
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 794
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 821
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 822
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 681
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 682
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 653
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 654
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 586
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 587
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 598
    .local p3, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 599
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 610
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 611
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 709
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 710
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 849
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 850
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .line 1167
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1169
    if-lez v0, :cond_10

    .line 1170
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1172
    :cond_10
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 1168
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1174
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1175
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .line 1228
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1230
    if-lez v0, :cond_10

    .line 1231
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1233
    :cond_10
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1235
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1236
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .line 1289
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1291
    if-lez v0, :cond_10

    .line 1292
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1294
    :cond_10
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1296
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1297
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .line 1350
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1352
    if-lez v0, :cond_10

    .line 1353
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1357
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 1045
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1047
    if-lez v0, :cond_10

    .line 1048
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1052
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1053
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .line 984
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 985
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 986
    if-lez v0, :cond_10

    .line 987
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    :cond_10
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 985
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 991
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 992
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .line 890
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_20

    .line 892
    aget-object v1, p3, v0

    .line 893
    .local v1, "item":Ljava/lang/Object;
    if-lez v0, :cond_12

    .line 894
    iget-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    :cond_12
    if-nez v1, :cond_18

    .line 897
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1d

    .line 900
    :cond_18
    iget-boolean v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 891
    .end local v1    # "item":Ljava/lang/Object;
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 903
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .line 1106
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1108
    if-lez v0, :cond_10

    .line 1109
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1111
    :cond_10
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 1107
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1113
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1114
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .line 1411
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1413
    if-lez v0, :cond_10

    .line 1414
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1416
    :cond_10
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 1412
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1418
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1419
    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 386
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_7

    .line 387
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 389
    :cond_7
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 390
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1526
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 1527
    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1503
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1504
    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1513
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 1514
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1515
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1517
    :cond_e
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1460
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    .line 1461
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1462
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1463
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1465
    :cond_1b
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "detail"    # Z

    .line 462
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_16

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_16

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_16

    .line 464
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    return-void

    .line 468
    :cond_16
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 471
    :try_start_19
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_33

    .line 472
    if-eqz p4, :cond_27

    .line 473
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_119

    .line 475
    :cond_27
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_119

    .line 478
    :cond_33
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4d

    .line 479
    if-eqz p4, :cond_41

    .line 480
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_119

    .line 482
    :cond_41
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_119

    .line 485
    :cond_4d
    instance-of v0, p3, [J

    if-eqz v0, :cond_63

    .line 486
    if-eqz p4, :cond_5b

    .line 487
    move-object v0, p3

    check-cast v0, [J

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_119

    .line 489
    :cond_5b
    move-object v0, p3

    check-cast v0, [J

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_119

    .line 492
    :cond_63
    instance-of v0, p3, [I

    if-eqz v0, :cond_79

    .line 493
    if-eqz p4, :cond_71

    .line 494
    move-object v0, p3

    check-cast v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_119

    .line 496
    :cond_71
    move-object v0, p3

    check-cast v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_119

    .line 499
    :cond_79
    instance-of v0, p3, [S

    if-eqz v0, :cond_8f

    .line 500
    if-eqz p4, :cond_87

    .line 501
    move-object v0, p3

    check-cast v0, [S

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_119

    .line 503
    :cond_87
    move-object v0, p3

    check-cast v0, [S

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_119

    .line 506
    :cond_8f
    instance-of v0, p3, [B

    if-eqz v0, :cond_a5

    .line 507
    if-eqz p4, :cond_9d

    .line 508
    move-object v0, p3

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_119

    .line 510
    :cond_9d
    move-object v0, p3

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_119

    .line 513
    :cond_a5
    instance-of v0, p3, [C

    if-eqz v0, :cond_ba

    .line 514
    if-eqz p4, :cond_b3

    .line 515
    move-object v0, p3

    check-cast v0, [C

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_119

    .line 517
    :cond_b3
    move-object v0, p3

    check-cast v0, [C

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_119

    .line 520
    :cond_ba
    instance-of v0, p3, [D

    if-eqz v0, :cond_ce

    .line 521
    if-eqz p4, :cond_c7

    .line 522
    move-object v0, p3

    check-cast v0, [D

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_119

    .line 524
    :cond_c7
    move-object v0, p3

    check-cast v0, [D

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_119

    .line 527
    :cond_ce
    instance-of v0, p3, [F

    if-eqz v0, :cond_e2

    .line 528
    if-eqz p4, :cond_db

    .line 529
    move-object v0, p3

    check-cast v0, [F

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_119

    .line 531
    :cond_db
    move-object v0, p3

    check-cast v0, [F

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_119

    .line 534
    :cond_e2
    instance-of v0, p3, [Z

    if-eqz v0, :cond_f6

    .line 535
    if-eqz p4, :cond_ef

    .line 536
    move-object v0, p3

    check-cast v0, [Z

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_119

    .line 538
    :cond_ef
    move-object v0, p3

    check-cast v0, [Z

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_119

    .line 541
    :cond_f6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 542
    if-eqz p4, :cond_109

    .line 543
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_119

    .line 545
    :cond_109
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_119

    .line 549
    :cond_110
    if-eqz p4, :cond_116

    .line 550
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_119

    .line 552
    :cond_116
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_119
    .catchall {:try_start_19 .. :try_end_119} :catchall_11e

    .line 556
    :goto_119
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 557
    nop

    .line 558
    return-void

    .line 556
    :catchall_11e
    move-exception v0

    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 557
    throw v0
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1494
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1495
    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 368
    if-eqz p2, :cond_12

    .line 369
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 372
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_12

    .line 373
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 376
    :cond_12
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .line 1187
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1188
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .line 1248
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1249
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .line 1309
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1310
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .line 1370
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1371
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 1065
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1066
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .line 1004
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1005
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .line 943
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 944
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .line 1126
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1127
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .line 1431
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1432
    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 1545
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1546
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1547
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1548
    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "superToString"    # Ljava/lang/String;

    .line 333
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "toString"    # Ljava/lang/String;

    .line 347
    if-eqz p2, :cond_2c

    .line 348
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    .local v0, "pos1":I
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 350
    .local v1, "pos2":I
    if-eq v0, v1, :cond_2c

    if-ltz v0, :cond_2c

    if-ltz v1, :cond_2c

    .line 351
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "data":Ljava/lang/String;
    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v3, :cond_26

    .line 353
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 355
    :cond_26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 359
    .end local v0    # "pos1":I
    .end local v1    # "pos2":I
    .end local v2    # "data":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .registers 2

    .line 1745
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .registers 2

    .line 1771
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .registers 2

    .line 1719
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .registers 2

    .line 1823
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .registers 2

    .line 1797
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .registers 2

    .line 1849
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .registers 2

    .line 1875
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .registers 2

    .line 1949
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1581
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .registers 2

    .line 2010
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .registers 2

    .line 1978
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .registers 2

    .line 2074
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .registers 2

    .line 2042
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .registers 2

    .line 1699
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .registers 2

    .line 1678
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .registers 2

    .line 1927
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .registers 2

    .line 1903
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .registers 3
    .param p1, "fullDetailRequest"    # Ljava/lang/Boolean;

    .line 1565
    if-nez p1, :cond_5

    .line 1566
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return v0

    .line 1568
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isUseClassName()Z
    .registers 2

    .line 1595
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .registers 2

    .line 1657
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .registers 2

    .line 1637
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .registers 2

    .line 1616
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # Ljava/lang/Object;

    .line 916
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 918
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_25

    .line 919
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 920
    .local v2, "item":Ljava/lang/Object;
    if-lez v1, :cond_17

    .line 921
    iget-object v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    :cond_17
    if-nez v2, :cond_1d

    .line 924
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_22

    .line 927
    :cond_1d
    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v2, v3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 918
    .end local v2    # "item":Ljava/lang/Object;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 930
    .end local v1    # "i":I
    :cond_25
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 401
    .local v0, "len":I
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 402
    .local v1, "sepLen":I
    if-lez v0, :cond_32

    if-lez v1, :cond_32

    if-lt v0, v1, :cond_32

    .line 403
    const/4 v2, 0x1

    .line 404
    .local v2, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_2b

    .line 405
    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_28

    .line 406
    const/4 v2, 0x0

    .line 407
    goto :goto_2b

    .line 404
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 410
    .end local v3    # "i":I
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_32

    .line 411
    sub-int v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 414
    .end local v2    # "match":Z
    :cond_32
    return-void
.end method

.method protected setArrayContentDetail(Z)V
    .registers 2
    .param p1, "arrayContentDetail"    # Z

    .line 1708
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    .line 1709
    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "arrayEnd"    # Ljava/lang/String;

    .line 1757
    if-nez p1, :cond_4

    .line 1758
    const-string p1, ""

    .line 1760
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 1761
    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "arraySeparator"    # Ljava/lang/String;

    .line 1783
    if-nez p1, :cond_4

    .line 1784
    const-string p1, ""

    .line 1786
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 1787
    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "arrayStart"    # Ljava/lang/String;

    .line 1731
    if-nez p1, :cond_4

    .line 1732
    const-string p1, ""

    .line 1734
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 1735
    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentEnd"    # Ljava/lang/String;

    .line 1835
    if-nez p1, :cond_4

    .line 1836
    const-string p1, ""

    .line 1838
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 1839
    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentStart"    # Ljava/lang/String;

    .line 1809
    if-nez p1, :cond_4

    .line 1810
    const-string p1, ""

    .line 1812
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 1813
    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .registers 2
    .param p1, "defaultFullDetail"    # Z

    .line 1688
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1689
    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldNameValueSeparator"    # Ljava/lang/String;

    .line 1861
    if-nez p1, :cond_4

    .line 1862
    const-string p1, ""

    .line 1864
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 1865
    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldSeparator"    # Ljava/lang/String;

    .line 1887
    if-nez p1, :cond_4

    .line 1888
    const-string p1, ""

    .line 1890
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 1891
    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .registers 2
    .param p1, "fieldSeparatorAtEnd"    # Z

    .line 1938
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 1939
    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .registers 2
    .param p1, "fieldSeparatorAtStart"    # Z

    .line 1914
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 1915
    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .registers 2
    .param p1, "nullText"    # Ljava/lang/String;

    .line 1961
    if-nez p1, :cond_4

    .line 1962
    const-string p1, ""

    .line 1964
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 1965
    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sizeEndText"    # Ljava/lang/String;

    .line 2025
    if-nez p1, :cond_4

    .line 2026
    const-string p1, ""

    .line 2028
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 2029
    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sizeStartText"    # Ljava/lang/String;

    .line 1993
    if-nez p1, :cond_4

    .line 1994
    const-string p1, ""

    .line 1996
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 1997
    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .registers 2
    .param p1, "summaryObjectEndText"    # Ljava/lang/String;

    .line 2089
    if-nez p1, :cond_4

    .line 2090
    const-string p1, ""

    .line 2092
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 2093
    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .registers 2
    .param p1, "summaryObjectStartText"    # Ljava/lang/String;

    .line 2057
    if-nez p1, :cond_4

    .line 2058
    const-string p1, ""

    .line 2060
    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 2061
    return-void
.end method

.method protected setUseClassName(Z)V
    .registers 2
    .param p1, "useClassName"    # Z

    .line 1604
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    .line 1605
    return-void
.end method

.method protected setUseFieldNames(Z)V
    .registers 2
    .param p1, "useFieldNames"    # Z

    .line 1666
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 1667
    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .registers 2
    .param p1, "useIdentityHashCode"    # Z

    .line 1646
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 1647
    return-void
.end method

.method protected setUseShortClassName(Z)V
    .registers 2
    .param p1, "useShortClassName"    # Z

    .line 1626
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    .line 1627
    return-void
.end method
