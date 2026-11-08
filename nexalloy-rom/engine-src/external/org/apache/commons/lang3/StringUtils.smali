.class public Lexternal/org/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000

.field private static final WHITESPACE_BLOCK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 148
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 5678
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 5717
    if-nez p0, :cond_4

    .line 5718
    const/4 v0, 0x0

    return-object v0

    .line 5720
    :cond_4
    const/4 v0, 0x4

    if-lt p2, v0, :cond_96

    .line 5723
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_e

    .line 5724
    return-object p0

    .line 5726
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_18

    .line 5727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5729
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_29

    .line 5730
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    .line 5732
    :cond_29
    const-string v1, "..."

    .line 5733
    .local v1, "abrevMarker":Ljava/lang/String;
    const-string v2, "..."

    if-gt p1, v0, :cond_48

    .line 5734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, -0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5736
    :cond_48
    const/4 v0, 0x7

    if-lt p2, v0, :cond_8e

    .line 5739
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_71

    .line 5740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5742
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, -0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5737
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5721
    .end local v1    # "abrevMarker":Ljava/lang/String;
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 5775
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4b

    .line 5779
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_4a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_1c

    goto :goto_4a

    .line 5783
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 5784
    .local v0, "targetSting":I
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 5785
    .local v1, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 5787
    .local v2, "endOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5788
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5789
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5790
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5792
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5780
    .end local v0    # "targetSting":I
    .end local v1    # "startOffset":I
    .end local v2    # "endOffset":I
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_4a
    :goto_4a
    return-object p0

    .line 5776
    :cond_4b
    :goto_4b
    return-object p0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5032
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    goto :goto_2a

    .line 5035
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5036
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5037
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5038
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5035
    return-object v0

    .line 5033
    .end local v1    # "strLen":I
    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4826
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4854
    if-eqz p0, :cond_1a

    if-gtz p1, :cond_5

    goto :goto_1a

    .line 4857
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4858
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 4859
    .local v1, "pads":I
    if-gtz v1, :cond_e

    .line 4860
    return-object p0

    .line 4862
    :cond_e
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4863
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4864
    return-object p0

    .line 4855
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4894
    if-eqz p0, :cond_22

    if-gtz p1, :cond_5

    goto :goto_22

    .line 4897
    :cond_5
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4898
    const-string p2, " "

    .line 4900
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4901
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 4902
    .local v1, "pads":I
    if-gtz v1, :cond_16

    .line 4903
    return-object p0

    .line 4905
    :cond_16
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4906
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4907
    return-object p0

    .line 4895
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_22
    :goto_22
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 4340
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4341
    return-object p0

    .line 4344
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_20

    .line 4345
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4346
    .local v0, "ch":C
    if-eq v0, v3, :cond_1d

    if-ne v0, v2, :cond_1c

    goto :goto_1d

    .line 4349
    :cond_1c
    return-object p0

    .line 4347
    :cond_1d
    :goto_1d
    const-string v1, ""

    return-object v1

    .line 4352
    .end local v0    # "ch":C
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 4353
    .local v0, "lastIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4355
    .local v4, "last":C
    if-ne v4, v2, :cond_36

    .line 4356
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3a

    .line 4357
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 4359
    :cond_36
    if-eq v4, v3, :cond_3a

    .line 4360
    add-int/lit8 v0, v0, 0x1

    .line 4362
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4394
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .line 4423
    if-nez p0, :cond_4

    .line 4424
    const/4 v0, 0x0

    return-object v0

    .line 4426
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4427
    .local v0, "strLen":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    .line 4428
    const-string v1, ""

    return-object v1

    .line 4430
    :cond_e
    add-int/lit8 v1, v0, -0x1

    .line 4431
    .local v1, "lastIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4432
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4433
    .local v4, "last":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2e

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2e

    .line 4434
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4436
    :cond_2e
    return-object v3
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1377
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1378
    return v1

    .line 1380
    :cond_8
    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 1406
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-nez p1, :cond_6

    goto :goto_e

    .line 1409
    :cond_6
    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 1407
    :cond_e
    :goto_e
    return v0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 1638
    if-nez p1, :cond_4

    .line 1639
    const/4 v0, 0x0

    return v0

    .line 1641
    :cond_4
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .registers 13
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1580
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_46

    .line 1583
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1584
    .local v0, "csLength":I
    array-length v2, p1

    .line 1585
    .local v2, "searchLength":I
    add-int/lit8 v3, v0, -0x1

    .line 1586
    .local v3, "csLast":I
    add-int/lit8 v4, v2, -0x1

    .line 1587
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_45

    .line 1588
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1589
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1f
    if-ge v7, v2, :cond_42

    .line 1590
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3f

    .line 1591
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3e

    .line 1592
    if-ne v7, v4, :cond_2f

    .line 1594
    return v9

    .line 1596
    :cond_2f
    if-ge v5, v3, :cond_3f

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3f

    .line 1597
    return v9

    .line 1601
    :cond_3e
    return v9

    .line 1589
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1587
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1606
    .end local v5    # "i":I
    :cond_45
    return v1

    .line 1581
    .end local v0    # "csLength":I
    .end local v2    # "searchLength":I
    .end local v3    # "csLast":I
    .end local v4    # "searchLast":I
    :cond_46
    :goto_46
    return v1
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1437
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_8

    move-object v1, p0

    move-object v4, p1

    goto :goto_2a

    .line 1440
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1441
    .local v6, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v7, v1, v6

    .line 1442
    .local v7, "max":I
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_14
    if-gt v3, v7, :cond_27

    .line 1443
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "searchStr":Ljava/lang/CharSequence;
    .local v1, "str":Ljava/lang/CharSequence;
    .local v4, "searchStr":Ljava/lang/CharSequence;
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 1444
    const/4 p0, 0x1

    return p0

    .line 1442
    :cond_22
    add-int/lit8 v3, v3, 0x1

    move-object p0, v1

    move-object p1, v4

    goto :goto_14

    .line 1447
    .end local v1    # "str":Ljava/lang/CharSequence;
    .end local v3    # "i":I
    .end local v4    # "searchStr":Ljava/lang/CharSequence;
    .restart local p0    # "str":Ljava/lang/CharSequence;
    .restart local p1    # "searchStr":Ljava/lang/CharSequence;
    :cond_27
    return v0

    .line 1437
    .end local v6    # "len":I
    .end local v7    # "max":I
    :cond_28
    move-object v1, p0

    move-object v4, p1

    .line 1438
    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "searchStr":Ljava/lang/CharSequence;
    .restart local v1    # "str":Ljava/lang/CharSequence;
    .restart local v4    # "searchStr":Ljava/lang/CharSequence;
    :goto_2a
    return v0
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .line 1889
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1892
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 1890
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .registers 13
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1836
    const/4 v0, 0x1

    if-eqz p0, :cond_3e

    if-nez p1, :cond_6

    goto :goto_3e

    .line 1839
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1840
    .local v1, "csLen":I
    add-int/lit8 v2, v1, -0x1

    .line 1841
    .local v2, "csLast":I
    array-length v3, p1

    .line 1842
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1843
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v1, :cond_3d

    .line 1844
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1845
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_17
    if-ge v7, v3, :cond_3a

    .line 1846
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_37

    .line 1847
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_36

    .line 1848
    if-ne v7, v4, :cond_27

    .line 1850
    return v9

    .line 1852
    :cond_27
    if-ge v5, v2, :cond_37

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_37

    .line 1853
    return v9

    .line 1857
    :cond_36
    return v9

    .line 1845
    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1843
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1862
    .end local v5    # "i":I
    :cond_3d
    return v0

    .line 1837
    .end local v1    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_3e
    :goto_3e
    return v0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "validChars"    # Ljava/lang/String;

    .line 1804
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1807
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 1805
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "valid"    # [C

    .line 1768
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-nez p0, :cond_6

    goto :goto_1b

    .line 1771
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 1772
    return v2

    .line 1774
    :cond_e
    array-length v1, p1

    if-nez v1, :cond_12

    .line 1775
    return v0

    .line 1777
    :cond_12
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 1769
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 1460
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1461
    return v1

    .line 1463
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1464
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1e

    .line 1465
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1466
    const/4 v1, 0x1

    return v1

    .line 1464
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1469
    .end local v2    # "i":I
    :cond_1e
    return v1
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .line 5142
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_20

    .line 5145
    :cond_d
    const/4 v0, 0x0

    .line 5146
    .local v0, "count":I
    const/4 v1, 0x0

    .line 5147
    .local v1, "idx":I
    :goto_f
    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 5148
    add-int/lit8 v0, v0, 0x1

    .line 5149
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_f

    .line 5151
    :cond_1f
    return v0

    .line 5143
    .end local v0    # "count":I
    .end local v1    # "idx":I
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 5565
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 5587
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 5522
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 5543
    if-nez p0, :cond_4

    move-object v0, p1

    goto :goto_5

    :cond_4
    move-object v0, p0

    :goto_5
    return-object v0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 3554
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3555
    return-object p0

    .line 3557
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3558
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 3559
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 3560
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_27

    .line 3561
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_24

    .line 3562
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v2

    move v2, v4

    .line 3560
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3565
    .end local v3    # "i":I
    :cond_27
    if-ne v2, v0, :cond_2a

    .line 3566
    return-object p0

    .line 3568
    :cond_2a
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 5823
    if-nez p0, :cond_3

    .line 5824
    return-object p1

    .line 5826
    :cond_3
    if-nez p1, :cond_6

    .line 5827
    return-object p0

    .line 5829
    :cond_6
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 5830
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 5831
    const-string v1, ""

    return-object v1

    .line 5833
    :cond_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 6434
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 11
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 6476
    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    if-nez p1, :cond_9

    move-object v2, p0

    move-object v5, p1

    move v3, p2

    goto :goto_2e

    .line 6479
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_14

    .line 6480
    return v0

    .line 6482
    :cond_14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v4, v0, v1

    .line 6483
    .local v4, "strOffset":I
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move-object v5, p1

    move v3, p2

    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "suffix":Ljava/lang/CharSequence;
    .end local p2    # "ignoreCase":Z
    .local v2, "str":Ljava/lang/CharSequence;
    .local v3, "ignoreCase":Z
    .local v5, "suffix":Ljava/lang/CharSequence;
    invoke-static/range {v2 .. v7}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    .line 6476
    .end local v2    # "str":Ljava/lang/CharSequence;
    .end local v3    # "ignoreCase":Z
    .end local v4    # "strOffset":I
    .end local v5    # "suffix":Ljava/lang/CharSequence;
    .restart local p0    # "str":Ljava/lang/CharSequence;
    .restart local p1    # "suffix":Ljava/lang/CharSequence;
    .restart local p2    # "ignoreCase":Z
    :cond_2b
    move-object v2, p0

    move-object v5, p1

    move v3, p2

    .line 6477
    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "suffix":Ljava/lang/CharSequence;
    .end local p2    # "ignoreCase":Z
    .restart local v2    # "str":Ljava/lang/CharSequence;
    .restart local v3    # "ignoreCase":Z
    .restart local v5    # "suffix":Ljava/lang/CharSequence;
    :goto_2e
    if-nez v2, :cond_33

    if-nez v5, :cond_33

    const/4 v0, 0x1

    :cond_33
    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 6553
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_20

    .line 6556
    :cond_e
    array-length v0, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 6557
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 6558
    const/4 v0, 0x1

    return v0

    .line 6556
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6561
    :cond_1f
    return v1

    .line 6554
    :cond_20
    :goto_20
    return v1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 6461
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 782
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 10
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 807
    if-eqz p0, :cond_1d

    if-nez p1, :cond_7

    move-object v2, p0

    move-object v5, p1

    goto :goto_1f

    .line 810
    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    .end local p0    # "str1":Ljava/lang/CharSequence;
    .end local p1    # "str2":Ljava/lang/CharSequence;
    .local v2, "str1":Ljava/lang/CharSequence;
    .local v5, "str2":Ljava/lang/CharSequence;
    invoke-static/range {v2 .. v7}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    .line 807
    .end local v2    # "str1":Ljava/lang/CharSequence;
    .end local v5    # "str2":Ljava/lang/CharSequence;
    .restart local p0    # "str1":Ljava/lang/CharSequence;
    .restart local p1    # "str2":Ljava/lang/CharSequence;
    :cond_1d
    move-object v2, p0

    move-object v5, p1

    .line 808
    .end local p0    # "str1":Ljava/lang/CharSequence;
    .end local p1    # "str2":Ljava/lang/CharSequence;
    .restart local v2    # "str1":Ljava/lang/CharSequence;
    .restart local v5    # "str2":Ljava/lang/CharSequence;
    :goto_1f
    if-ne v2, v5, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "strs"    # [Ljava/lang/String;

    .line 6004
    const-string v0, ""

    if-eqz p0, :cond_22

    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_22

    .line 6007
    :cond_8
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v1

    .line 6008
    .local v1, "smallestIndexOfDiff":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    .line 6010
    aget-object v2, p0, v3

    if-nez v2, :cond_15

    .line 6011
    return-object v0

    .line 6013
    :cond_15
    aget-object v0, p0, v3

    return-object v0

    .line 6014
    :cond_18
    if-nez v1, :cond_1b

    .line 6016
    return-object v0

    .line 6019
    :cond_1b
    aget-object v0, p0, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6005
    .end local v1    # "smallestIndexOfDiff":I
    :cond_22
    :goto_22
    return-object v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 14
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;

    .line 6062
    if-eqz p0, :cond_6a

    if-eqz p1, :cond_6a

    .line 6083
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6084
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6086
    .local v1, "m":I
    if-nez v0, :cond_f

    .line 6087
    return v1

    .line 6088
    :cond_f
    if-nez v1, :cond_12

    .line 6089
    return v0

    .line 6092
    :cond_12
    if-le v0, v1, :cond_1c

    .line 6094
    move-object v2, p0

    .line 6095
    .local v2, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 6096
    move-object p1, v2

    .line 6097
    move v0, v1

    .line 6098
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6101
    .end local v2    # "tmp":Ljava/lang/CharSequence;
    :cond_1c
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 6102
    .local v2, "p":[I
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    .line 6113
    .local v3, "d":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-gt v4, v0, :cond_2c

    .line 6114
    aput v4, v2, v4

    .line 6113
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 6117
    :cond_2c
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_2d
    if-gt v5, v1, :cond_67

    .line 6118
    add-int/lit8 v6, v5, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 6119
    .local v6, "t_j":C
    const/4 v7, 0x0

    aput v5, v3, v7

    .line 6121
    const/4 v4, 0x1

    :goto_39
    if-gt v4, v0, :cond_61

    .line 6122
    add-int/lit8 v8, v4, -0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v6, :cond_46

    const/4 v8, 0x0

    goto :goto_47

    :cond_46
    const/4 v8, 0x1

    .line 6124
    .local v8, "cost":I
    :goto_47
    add-int/lit8 v10, v4, -0x1

    aget v10, v3, v10

    add-int/2addr v10, v9

    aget v11, v2, v4

    add-int/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v10, v4, -0x1

    aget v10, v2, v10

    add-int/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v3, v4

    .line 6121
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 6128
    .end local v8    # "cost":I
    :cond_61
    move-object v7, v2

    .line 6129
    .local v7, "_d":[I
    move-object v2, v3

    .line 6130
    move-object v3, v7

    .line 6117
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 6135
    .end local v6    # "t_j":C
    .end local v7    # "_d":[I
    :cond_67
    aget v6, v2, v0

    return v6

    .line 6063
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "p":[I
    .end local v3    # "d":[I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 20
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I

    .line 6171
    move/from16 v0, p2

    if-eqz p0, :cond_c0

    if-eqz p1, :cond_c0

    .line 6174
    if-ltz v0, :cond_b8

    .line 6222
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6223
    .local v1, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 6226
    .local v2, "m":I
    const/4 v3, -0x1

    if-nez v1, :cond_17

    .line 6227
    if-gt v2, v0, :cond_16

    move v3, v2

    :cond_16
    return v3

    .line 6228
    :cond_17
    if-nez v2, :cond_1d

    .line 6229
    if-gt v1, v0, :cond_1c

    move v3, v1

    :cond_1c
    return v3

    .line 6232
    :cond_1d
    if-le v1, v2, :cond_2a

    .line 6234
    move-object/from16 v4, p0

    .line 6235
    .local v4, "tmp":Ljava/lang/CharSequence;
    move-object/from16 v5, p1

    .line 6236
    .end local p0    # "s":Ljava/lang/CharSequence;
    .local v5, "s":Ljava/lang/CharSequence;
    move-object v6, v4

    .line 6237
    .end local p1    # "t":Ljava/lang/CharSequence;
    .local v6, "t":Ljava/lang/CharSequence;
    move v1, v2

    .line 6238
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_2e

    .line 6232
    .end local v4    # "tmp":Ljava/lang/CharSequence;
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_2a
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6241
    .end local p0    # "s":Ljava/lang/CharSequence;
    .end local p1    # "t":Ljava/lang/CharSequence;
    .restart local v5    # "s":Ljava/lang/CharSequence;
    .restart local v6    # "t":Ljava/lang/CharSequence;
    :goto_2e
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [I

    .line 6242
    .local v4, "p":[I
    add-int/lit8 v7, v1, 0x1

    new-array v7, v7, [I

    .line 6246
    .local v7, "d":[I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 6247
    .local v8, "boundary":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3d
    if-ge v10, v8, :cond_44

    .line 6248
    aput v10, v4, v10

    .line 6247
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 6252
    .end local v10    # "i":I
    :cond_44
    array-length v10, v4

    const v11, 0x7fffffff

    invoke-static {v4, v8, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 6253
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([II)V

    .line 6256
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_4f
    if-gt v10, v2, :cond_ae

    .line 6257
    add-int/lit8 v12, v10, -0x1

    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 6258
    .local v12, "t_j":C
    const/4 v13, 0x0

    aput v10, v7, v13

    .line 6261
    sub-int v13, v10, v0

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 6262
    .local v13, "min":I
    add-int v14, v10, v0

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 6265
    .local v14, "max":I
    if-le v13, v14, :cond_69

    .line 6266
    return v3

    .line 6270
    :cond_69
    if-le v13, v9, :cond_6f

    .line 6271
    add-int/lit8 v15, v13, -0x1

    aput v11, v7, v15

    .line 6275
    :cond_6f
    move v15, v13

    .local v15, "i":I
    :goto_70
    if-gt v15, v14, :cond_a2

    .line 6276
    const/16 v16, -0x1

    add-int/lit8 v3, v15, -0x1

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v12, :cond_85

    .line 6278
    add-int/lit8 v3, v15, -0x1

    aget v3, v4, v3

    aput v3, v7, v15

    const/16 p0, 0x1

    goto :goto_9d

    .line 6281
    :cond_85
    add-int/lit8 v3, v15, -0x1

    aget v3, v7, v3

    const/16 p0, 0x1

    aget v9, v4, v15

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v9, v15, -0x1

    aget v9, v4, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v7, v15

    .line 6275
    :goto_9d
    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const/4 v9, 0x1

    goto :goto_70

    :cond_a2
    const/16 p0, 0x1

    const/16 v16, -0x1

    .line 6286
    .end local v15    # "i":I
    move-object v3, v4

    .line 6287
    .local v3, "_d":[I
    move-object v4, v7

    .line 6288
    move-object v7, v3

    .line 6256
    .end local v12    # "t_j":C
    .end local v13    # "min":I
    .end local v14    # "max":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    const/4 v9, 0x1

    goto :goto_4f

    .end local v3    # "_d":[I
    :cond_ae
    const/16 v16, -0x1

    .line 6293
    .end local v10    # "j":I
    aget v3, v4, v1

    if-gt v3, v0, :cond_b7

    .line 6294
    aget v3, v4, v1

    return v3

    .line 6296
    :cond_b7
    return v16

    .line 6175
    .end local v1    # "n":I
    .end local v2    # "m":I
    .end local v4    # "p":[I
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .end local v7    # "d":[I
    .end local v8    # "boundary":I
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_b8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Threshold must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6172
    :cond_c0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Strings must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 837
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 838
    const/4 v0, -0x1

    return v0

    .line 840
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 870
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 871
    const/4 v0, -0x1

    return v0

    .line 873
    :cond_8
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 901
    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 904
    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 902
    :cond_b
    :goto_b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 941
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 944
    :cond_5
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 942
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1547
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 1550
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    return v0

    .line 1548
    :cond_16
    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .registers 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1498
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_44

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    .line 1501
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1502
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 1503
    .local v2, "csLast":I
    array-length v3, p1

    .line 1504
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1505
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_43

    .line 1506
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1507
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1f
    if-ge v7, v3, :cond_40

    .line 1508
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3d

    .line 1509
    if-ge v5, v2, :cond_3c

    if-ge v7, v4, :cond_3c

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 1511
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3d

    .line 1512
    return v5

    .line 1515
    :cond_3c
    return v5

    .line 1507
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1505
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1520
    .end local v5    # "i":I
    :cond_43
    return v1

    .line 1499
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_44
    :goto_44
    return v1
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 1925
    const/4 v0, -0x1

    if-eqz p0, :cond_29

    if-nez p1, :cond_6

    goto :goto_29

    .line 1928
    :cond_6
    array-length v1, p1

    .line 1931
    .local v1, "sz":I
    const v2, 0x7fffffff

    .line 1933
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1934
    .local v3, "tmp":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v1, :cond_21

    .line 1935
    aget-object v5, p1, v4

    .line 1936
    .local v5, "search":Ljava/lang/CharSequence;
    if-nez v5, :cond_13

    .line 1937
    goto :goto_1e

    .line 1939
    :cond_13
    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1940
    if-ne v3, v0, :cond_1b

    .line 1941
    goto :goto_1e

    .line 1944
    :cond_1b
    if-ge v3, v2, :cond_1e

    .line 1945
    move v2, v3

    .line 1934
    .end local v5    # "search":Ljava/lang/CharSequence;
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1949
    .end local v4    # "i":I
    :cond_21
    const v4, 0x7fffffff

    if-ne v2, v4, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    return v0

    .line 1926
    .end local v1    # "sz":I
    .end local v2    # "ret":I
    .end local v3    # "tmp":I
    :cond_29
    :goto_29
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 1721
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_44

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    .line 1724
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1725
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_43

    .line 1726
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1727
    .local v3, "ch":C
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    .line 1728
    .local v5, "chFound":Z
    :goto_23
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_3d

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1729
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1730
    .local v6, "ch2":C
    if-eqz v5, :cond_3c

    invoke-static {p1, v6, v4}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gez v4, :cond_3c

    .line 1731
    return v2

    .line 1733
    .end local v6    # "ch2":C
    :cond_3c
    goto :goto_40

    .line 1734
    :cond_3d
    if-nez v5, :cond_40

    .line 1735
    return v2

    .line 1725
    .end local v3    # "ch":C
    .end local v5    # "chFound":Z
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1739
    .end local v2    # "i":I
    :cond_43
    return v1

    .line 1722
    .end local v0    # "strLen":I
    :cond_44
    :goto_44
    return v1
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .registers 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1671
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_44

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    .line 1674
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1675
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 1676
    .local v2, "csLast":I
    array-length v3, p1

    .line 1677
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1679
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_43

    .line 1680
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1681
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1f
    if-ge v7, v3, :cond_42

    .line 1682
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3f

    .line 1683
    if-ge v5, v2, :cond_3c

    if-ge v7, v4, :cond_3c

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 1684
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3f

    .line 1685
    nop

    .line 1679
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1681
    .restart local v6    # "ch":C
    .restart local v7    # "j":I
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1692
    .end local v7    # "j":I
    :cond_42
    return v5

    .line 1694
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_43
    return v1

    .line 1672
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_44
    :goto_44
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 5862
    const/4 v0, -0x1

    if-ne p0, p1, :cond_4

    .line 5863
    return v0

    .line 5865
    :cond_4
    if-eqz p0, :cond_33

    if-nez p1, :cond_9

    goto :goto_33

    .line 5869
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 5870
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_21

    .line 5871
    goto :goto_24

    .line 5869
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 5874
    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    goto :goto_32

    .line 5877
    :cond_31
    return v0

    .line 5875
    :cond_32
    :goto_32
    return v1

    .line 5866
    .end local v1    # "i":I
    :cond_33
    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .registers 13
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 5913
    const/4 v0, -0x1

    if-eqz p0, :cond_63

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    goto :goto_63

    .line 5916
    :cond_8
    const/4 v1, 0x0

    .line 5917
    .local v1, "anyStringNull":Z
    const/4 v2, 0x1

    .line 5918
    .local v2, "allStringsNull":Z
    array-length v3, p0

    .line 5919
    .local v3, "arrayLen":I
    const v4, 0x7fffffff

    .line 5920
    .local v4, "shortestStrLen":I
    const/4 v5, 0x0

    .line 5925
    .local v5, "longestStrLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    if-ge v6, v3, :cond_31

    .line 5926
    aget-object v7, p0, v6

    if-nez v7, :cond_19

    .line 5927
    const/4 v1, 0x1

    .line 5928
    const/4 v4, 0x0

    goto :goto_2e

    .line 5930
    :cond_19
    const/4 v2, 0x0

    .line 5931
    aget-object v7, p0, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5932
    aget-object v7, p0, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 5925
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 5937
    .end local v6    # "i":I
    :cond_31
    if-nez v2, :cond_62

    if-nez v5, :cond_38

    if-nez v1, :cond_38

    goto :goto_62

    .line 5942
    :cond_38
    const/4 v6, 0x0

    if-nez v4, :cond_3c

    .line 5943
    return v6

    .line 5947
    :cond_3c
    const/4 v7, -0x1

    .line 5948
    .local v7, "firstDiff":I
    const/4 v8, 0x0

    .local v8, "stringPos":I
    :goto_3e
    if-ge v8, v4, :cond_5c

    .line 5949
    aget-object v9, p0, v6

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 5950
    .local v9, "comparisonChar":C
    const/4 v10, 0x1

    .local v10, "arrayPos":I
    :goto_47
    if-ge v10, v3, :cond_56

    .line 5951
    aget-object v11, p0, v10

    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_53

    .line 5952
    move v7, v8

    .line 5953
    goto :goto_56

    .line 5950
    :cond_53
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    .line 5956
    .end local v10    # "arrayPos":I
    :cond_56
    :goto_56
    if-eq v7, v0, :cond_59

    .line 5957
    goto :goto_5c

    .line 5948
    .end local v9    # "comparisonChar":C
    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 5961
    .end local v8    # "stringPos":I
    :cond_5c
    :goto_5c
    if-ne v7, v0, :cond_61

    if-eq v4, v5, :cond_61

    .line 5965
    return v4

    .line 5967
    :cond_61
    return v7

    .line 5938
    .end local v7    # "firstDiff":I
    :cond_62
    :goto_62
    return v0

    .line 5914
    .end local v1    # "anyStringNull":Z
    .end local v2    # "allStringsNull":Z
    .end local v3    # "arrayLen":I
    .end local v4    # "shortestStrLen":I
    .end local v5    # "longestStrLen":I
    :cond_63
    :goto_63
    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1048
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 12
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1084
    const/4 v0, -0x1

    if-eqz p0, :cond_39

    if-nez p1, :cond_8

    move-object v3, p0

    move-object v6, p1

    goto :goto_3b

    .line 1087
    :cond_8
    if-gez p2, :cond_b

    .line 1088
    const/4 p2, 0x0

    .line 1090
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1091
    .local v1, "endLimit":I
    if-le p2, v1, :cond_19

    .line 1092
    return v0

    .line 1094
    :cond_19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_20

    .line 1095
    return p2

    .line 1097
    :cond_20
    move v2, p2

    move v5, v2

    .local v5, "i":I
    :goto_22
    if-ge v5, v1, :cond_38

    .line 1098
    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v4, 0x1

    move-object v3, p0

    move-object v6, p1

    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "searchStr":Ljava/lang/CharSequence;
    .local v3, "str":Ljava/lang/CharSequence;
    .local v6, "searchStr":Ljava/lang/CharSequence;
    invoke-static/range {v3 .. v8}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1099
    return v5

    .line 1097
    :cond_33
    add-int/lit8 v5, v5, 0x1

    move-object p0, v3

    move-object p1, v6

    goto :goto_22

    .line 1102
    .end local v3    # "str":Ljava/lang/CharSequence;
    .end local v5    # "i":I
    .end local v6    # "searchStr":Ljava/lang/CharSequence;
    .restart local p0    # "str":Ljava/lang/CharSequence;
    .restart local p1    # "searchStr":Ljava/lang/CharSequence;
    :cond_38
    return v0

    .line 1084
    .end local v1    # "endLimit":I
    :cond_39
    move-object v3, p0

    move-object v6, p1

    .line 1085
    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "searchStr":Ljava/lang/CharSequence;
    .restart local v3    # "str":Ljava/lang/CharSequence;
    .restart local v6    # "searchStr":Ljava/lang/CharSequence;
    :goto_3b
    return v0
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5459
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    .line 5462
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5463
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5464
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5465
    return v0

    .line 5463
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5468
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5460
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5491
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    .line 5494
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5495
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5496
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5497
    return v0

    .line 5495
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5500
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5492
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5177
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 5180
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5181
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5182
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5183
    return v0

    .line 5181
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5186
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5178
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5212
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5213
    return v0

    .line 5215
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5216
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5217
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5218
    return v0

    .line 5216
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5221
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5247
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 5250
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5251
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5252
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5253
    return v0

    .line 5251
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5256
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5248
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5282
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5283
    return v0

    .line 5285
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5286
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5287
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5288
    return v0

    .line 5286
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5291
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5321
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5322
    return v0

    .line 5324
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5325
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5326
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lexternal/org/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5327
    return v0

    .line 5325
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5330
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 224
    const/4 v0, 0x1

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v1

    .local v2, "strLen":I
    if-nez v1, :cond_b

    goto :goto_1e

    .line 227
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_1d

    .line 228
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 229
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 232
    .end local v1    # "i":I
    :cond_1d
    return v0

    .line 225
    .end local v2    # "strLen":I
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 184
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 253
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 203
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5357
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 5360
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5361
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5362
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5363
    return v0

    .line 5361
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5366
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5358
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5394
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5395
    return v0

    .line 5397
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5398
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5399
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5400
    return v0

    .line 5398
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5403
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5427
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5428
    return v0

    .line 5430
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5431
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5432
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5433
    return v0

    .line 5431
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5436
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .registers 3
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3510
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_4

    .line 3511
    const/4 v0, 0x0

    return-object v0

    .line 3513
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3531
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_4

    .line 3532
    const/4 v0, 0x0

    return-object v0

    .line 3534
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3422
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_4

    .line 3423
    const/4 v0, 0x0

    return-object v0

    .line 3425
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3426
    const-string v0, ""

    return-object v0

    .line 3428
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3429
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3430
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3434
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3435
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_28

    .line 3436
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3439
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3440
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3441
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3442
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3a

    .line 3443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3445
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3a
    goto :goto_28

    .line 3447
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3466
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_4

    .line 3467
    const/4 v0, 0x0

    return-object v0

    .line 3469
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3470
    const-string v0, ""

    return-object v0

    .line 3472
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3473
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3474
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3478
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3479
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_28

    .line 3480
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3483
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3484
    if-eqz p1, :cond_33

    .line 3485
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3488
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3c

    .line 3489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3491
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3c
    goto :goto_28

    .line 3492
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3239
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .line 3265
    if-nez p0, :cond_4

    .line 3266
    const/4 v0, 0x0

    return-object v0

    .line 3269
    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3299
    if-nez p0, :cond_4

    .line 3300
    const/4 v0, 0x0

    return-object v0

    .line 3302
    :cond_4
    sub-int v0, p3, p2

    .line 3303
    .local v0, "noOfItems":I
    if-gtz v0, :cond_b

    .line 3304
    const-string v1, ""

    return-object v1

    .line 3307
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3309
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_13
    if-ge v2, p3, :cond_26

    .line 3310
    if-le v2, p2, :cond_1a

    .line 3311
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3313
    :cond_1a
    aget-object v3, p0, v2

    if-eqz v3, :cond_23

    .line 3314
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3309
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3317
    .end local v2    # "i":I
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3344
    if-nez p0, :cond_4

    .line 3345
    const/4 v0, 0x0

    return-object v0

    .line 3347
    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3378
    if-nez p0, :cond_4

    .line 3379
    const/4 v0, 0x0

    return-object v0

    .line 3381
    :cond_4
    if-nez p1, :cond_8

    .line 3382
    const-string p1, ""

    .line 3387
    :cond_8
    sub-int v0, p3, p2

    .line 3388
    .local v0, "noOfItems":I
    if-gtz v0, :cond_f

    .line 3389
    const-string v1, ""

    return-object v1

    .line 3392
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3394
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_17
    if-ge v2, p3, :cond_2a

    .line 3395
    if-le v2, p2, :cond_1e

    .line 3396
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3398
    :cond_1e
    aget-object v3, p0, v2

    if-eqz v3, :cond_27

    .line 3399
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3394
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3402
    .end local v2    # "i":I
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1128
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1129
    const/4 v0, -0x1

    return v0

    .line 1131
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 1163
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1164
    const/4 v0, -0x1

    return v0

    .line 1166
    :cond_8
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 1193
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1196
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1194
    :cond_e
    :goto_e
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1267
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 1270
    :cond_5
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1268
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 1979
    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    .line 1982
    :cond_5
    array-length v0, p1

    .line 1983
    .local v0, "sz":I
    const/4 v1, -0x1

    .line 1984
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 1985
    .local v2, "tmp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_1e

    .line 1986
    aget-object v4, p1, v3

    .line 1987
    .local v4, "search":Ljava/lang/CharSequence;
    if-nez v4, :cond_10

    .line 1988
    goto :goto_1b

    .line 1990
    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v4, v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1991
    if-le v2, v1, :cond_1b

    .line 1992
    move v1, v2

    .line 1985
    .end local v4    # "search":Ljava/lang/CharSequence;
    :cond_1b
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1995
    .end local v3    # "i":I
    :cond_1e
    return v1

    .line 1980
    .end local v0    # "sz":I
    .end local v1    # "ret":I
    .end local v2    # "tmp":I
    :cond_1f
    :goto_1f
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1297
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1300
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1298
    :cond_e
    :goto_e
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1333
    const/4 v0, -0x1

    if-eqz p0, :cond_40

    if-nez p1, :cond_8

    move-object v2, p0

    move-object v5, p1

    goto :goto_42

    .line 1336
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1d

    .line 1337
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int p2, v1, v2

    .line 1339
    :cond_1d
    if-gez p2, :cond_20

    .line 1340
    return v0

    .line 1342
    :cond_20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_27

    .line 1343
    return p2

    .line 1346
    :cond_27
    move v1, p2

    move v4, v1

    .local v4, "i":I
    :goto_29
    if-ltz v4, :cond_3f

    .line 1347
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v3, 0x1

    move-object v2, p0

    move-object v5, p1

    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "searchStr":Ljava/lang/CharSequence;
    .local v2, "str":Ljava/lang/CharSequence;
    .local v5, "searchStr":Ljava/lang/CharSequence;
    invoke-static/range {v2 .. v7}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 1348
    return v4

    .line 1346
    :cond_3a
    add-int/lit8 v4, v4, -0x1

    move-object p0, v2

    move-object p1, v5

    goto :goto_29

    .line 1351
    .end local v2    # "str":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v5    # "searchStr":Ljava/lang/CharSequence;
    .restart local p0    # "str":Ljava/lang/CharSequence;
    .restart local p1    # "searchStr":Ljava/lang/CharSequence;
    :cond_3f
    return v0

    .line 1333
    :cond_40
    move-object v2, p0

    move-object v5, p1

    .line 1334
    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "searchStr":Ljava/lang/CharSequence;
    .restart local v2    # "str":Ljava/lang/CharSequence;
    .restart local v5    # "searchStr":Ljava/lang/CharSequence;
    :goto_42
    return v0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 1234
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2135
    if-nez p0, :cond_4

    .line 2136
    const/4 v0, 0x0

    return-object v0

    .line 2138
    :cond_4
    if-gez p1, :cond_9

    .line 2139
    const-string v0, ""

    return-object v0

    .line 2141
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    .line 2142
    return-object p0

    .line 2144
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4693
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4718
    if-nez p0, :cond_4

    .line 4719
    const/4 v0, 0x0

    return-object v0

    .line 4721
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4722
    .local v0, "pads":I
    if-gtz v0, :cond_d

    .line 4723
    return-object p0

    .line 4725
    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 4726
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4728
    :cond_1a
    invoke-static {p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4755
    if-nez p0, :cond_4

    .line 4756
    const/4 v0, 0x0

    return-object v0

    .line 4758
    :cond_4
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4759
    const-string p2, " "

    .line 4761
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4762
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4763
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4764
    .local v2, "pads":I
    if-gtz v2, :cond_19

    .line 4765
    return-object p0

    .line 4767
    :cond_19
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2a

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_2a

    .line 4768
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4771
    :cond_2a
    if-ne v2, v0, :cond_31

    .line 4772
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4773
    :cond_31
    if-ge v2, v0, :cond_3c

    .line 4774
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4776
    :cond_3c
    new-array v3, v2, [C

    .line 4777
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4778
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_43
    if-ge v5, v2, :cond_4e

    .line 4779
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 4778
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 4781
    .end local v5    # "i":I
    :cond_4e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 4797
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4981
    if-nez p0, :cond_4

    .line 4982
    const/4 v0, 0x0

    return-object v0

    .line 4984
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 5004
    if-nez p0, :cond_4

    .line 5005
    const/4 v0, 0x0

    return-object v0

    .line 5007
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 2206
    if-nez p0, :cond_4

    .line 2207
    const/4 v0, 0x0

    return-object v0

    .line 2209
    :cond_4
    if-ltz p2, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_24

    .line 2212
    :cond_d
    if-gez p1, :cond_10

    .line 2213
    const/4 p1, 0x0

    .line 2215
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_1d

    .line 2216
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2218
    :cond_1d
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2210
    :cond_24
    :goto_24
    const-string v0, ""

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 6528
    if-nez p0, :cond_4

    .line 6529
    const/4 v0, 0x0

    return-object v0

    .line 6531
    :cond_4
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 982
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .registers 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .line 1000
    const/4 v0, -0x1

    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    if-gtz p2, :cond_8

    goto :goto_35

    .line 1003
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    .line 1004
    if-eqz p3, :cond_15

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    .line 1006
    :cond_17
    const/4 v1, 0x0

    .line 1007
    .local v1, "found":I
    if-eqz p3, :cond_1e

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1009
    .local v0, "index":I
    :cond_1e
    if-eqz p3, :cond_27

    .line 1010
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_2d

    .line 1012
    :cond_27
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1014
    :goto_2d
    if-gez v0, :cond_30

    .line 1015
    return v0

    .line 1017
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 1018
    if-lt v1, p2, :cond_1e

    .line 1019
    return v0

    .line 1001
    .end local v0    # "index":I
    .end local v1    # "found":I
    :cond_35
    :goto_35
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 4281
    if-nez p0, :cond_4

    .line 4282
    const/4 v0, 0x0

    return-object v0

    .line 4284
    :cond_4
    if-nez p1, :cond_8

    .line 4285
    const-string p1, ""

    .line 4287
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4288
    .local v0, "len":I
    if-gez p2, :cond_f

    .line 4289
    const/4 p2, 0x0

    .line 4291
    :cond_f
    if-le p2, v0, :cond_12

    .line 4292
    move p2, v0

    .line 4294
    :cond_12
    if-gez p3, :cond_15

    .line 4295
    const/4 p3, 0x0

    .line 4297
    :cond_15
    if-le p3, v0, :cond_18

    .line 4298
    move p3, v0

    .line 4300
    :cond_18
    if-le p2, p3, :cond_1d

    .line 4301
    move v1, p2

    .line 4302
    .local v1, "temp":I
    move p2, p3

    .line 4303
    move p3, v1

    .line 4305
    .end local v1    # "temp":I
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    add-int v2, v0, p2

    sub-int/2addr v2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4306
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4307
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4308
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4305
    return-object v1
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 3762
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_2c

    .line 3765
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3766
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 3767
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_25

    .line 3768
    aget-char v3, v0, v2

    if-eq v3, p1, :cond_22

    .line 3769
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    move v1, v3

    .line 3767
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3772
    .end local v2    # "i":I
    :cond_25
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 3763
    .end local v0    # "chars":[C
    .end local v1    # "pos":I
    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3736
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 3739
    :cond_d
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3737
    :cond_15
    :goto_15
    return-object p0
.end method

.method private static removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 673
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_33

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$400()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 677
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$400()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 678
    .local v0, "result":Ljava/lang/String;
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$500()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    return-object v0

    .line 674
    .end local v0    # "result":Ljava/lang/String;
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "java.text.Normalizer is not available"

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$200()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 697
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 701
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    .local v0, "result":Ljava/lang/String;
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$600()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    return-object v0

    .line 698
    .end local v0    # "result":Ljava/lang/String;
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sun.text.Normalizer is not available"

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$300()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3667
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    .line 3670
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3671
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3673
    :cond_22
    return-object p0

    .line 3668
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3703
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    .line 3706
    :cond_d
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3707
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3709
    :cond_22
    return-object p0

    .line 3704
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3598
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 3601
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3604
    :cond_1c
    return-object p0

    .line 3599
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3633
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 3636
    :cond_d
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3637
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3639
    :cond_1c
    return-object p0

    .line 3634
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .registers 4
    .param p0, "ch"    # C
    .param p1, "repeat"    # I

    .line 4554
    new-array v0, p1, [C

    .line 4555
    .local v0, "buf":[C
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_b

    .line 4556
    aput-char p0, v0, v1

    .line 4555
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 4558
    .end local v1    # "i":I
    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .line 4465
    if-nez p0, :cond_4

    .line 4466
    const/4 v0, 0x0

    return-object v0

    .line 4468
    :cond_4
    if-gtz p1, :cond_9

    .line 4469
    const-string v0, ""

    return-object v0

    .line 4471
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4472
    .local v0, "inputLength":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_66

    if-nez v0, :cond_13

    goto :goto_66

    .line 4475
    :cond_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_23

    .line 4476
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4479
    :cond_23
    mul-int v3, v0, p1

    .line 4480
    .local v3, "outputLength":I
    packed-switch v0, :pswitch_data_68

    .line 4493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4494
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_59

    .line 4484
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :pswitch_2f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4485
    .local v2, "ch0":C
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4486
    .local v1, "ch1":C
    new-array v4, v3, [C

    .line 4487
    .local v4, "output2":[C
    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, -0x2

    .local v5, "i":I
    :goto_3d
    if-ltz v5, :cond_4a

    .line 4488
    aput-char v2, v4, v5

    .line 4489
    add-int/lit8 v6, v5, 0x1

    aput-char v1, v4, v6

    .line 4487
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 4491
    .end local v5    # "i":I
    :cond_4a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 4482
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    .end local v4    # "output2":[C
    :pswitch_50
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4494
    .local v1, "buf":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_59
    if-ge v2, p1, :cond_61

    .line 4495
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4494
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 4497
    .end local v2    # "i":I
    :cond_61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4473
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "outputLength":I
    :cond_66
    :goto_66
    return-object p0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_50
        :pswitch_2f
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 4522
    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    .line 4526
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4527
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4523
    .end local v0    # "result":Ljava/lang/String;
    :cond_1f
    :goto_1f
    invoke-static {p0, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3828
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 3860
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    if-eqz p2, :cond_64

    if-nez p3, :cond_11

    goto :goto_64

    .line 3863
    :cond_11
    const/4 v0, 0x0

    .line 3864
    .local v0, "start":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3865
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 3866
    return-object p0

    .line 3868
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3869
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 3870
    .local v4, "increase":I
    if-gez v4, :cond_27

    const/4 v5, 0x0

    goto :goto_28

    :cond_27
    move v5, v4

    .line 3871
    .end local v4    # "increase":I
    .local v5, "increase":I
    :goto_28
    if-gez p3, :cond_2d

    const/16 v4, 0x10

    goto :goto_33

    :cond_2d
    const/16 v4, 0x40

    if-le p3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v4, p3

    :goto_33
    mul-int v5, v5, v4

    .line 3872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3873
    .local v4, "buf":Ljava/lang/StringBuilder;
    :goto_3f
    if-eq v1, v2, :cond_58

    .line 3874
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3875
    add-int v0, v1, v3

    .line 3876
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_53

    .line 3877
    goto :goto_58

    .line 3879
    :cond_53
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3f

    .line 3881
    :cond_58
    :goto_58
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3861
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v3    # "replLength":I
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "increase":I
    :cond_64
    :goto_64
    return-object p0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .line 4178
    if-nez p0, :cond_4

    .line 4179
    const/4 v0, 0x0

    return-object v0

    .line 4181
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 4221
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_45

    .line 4224
    :cond_d
    if-nez p2, :cond_11

    .line 4225
    const-string p2, ""

    .line 4227
    :cond_11
    const/4 v0, 0x0

    .line 4228
    .local v0, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4229
    .local v1, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4230
    .local v2, "strLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4231
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v2, :cond_3d

    .line 4232
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4233
    .local v5, "ch":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4234
    .local v6, "index":I
    if-ltz v6, :cond_37

    .line 4235
    const/4 v0, 0x1

    .line 4236
    if-ge v6, v1, :cond_3a

    .line 4237
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 4240
    :cond_37
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4231
    .end local v5    # "ch":C
    .end local v6    # "index":I
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 4243
    .end local v4    # "i":I
    :cond_3d
    if-eqz v0, :cond_44

    .line 4244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 4246
    :cond_44
    return-object p0

    .line 4222
    .end local v0    # "modified":Z
    .end local v1    # "replaceCharsLength":I
    .end local v2    # "strLength":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_45
    :goto_45
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3925
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 22
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .line 4033
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v0, :cond_12e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_12e

    if-eqz v1, :cond_12e

    array-length v4, v1

    if-eqz v4, :cond_12e

    if-eqz v2, :cond_12e

    array-length v4, v2

    if-nez v4, :cond_1c

    goto/16 :goto_12e

    .line 4039
    :cond_1c
    if-ltz p4, :cond_126

    .line 4044
    array-length v4, v1

    .line 4045
    .local v4, "searchLength":I
    array-length v5, v2

    .line 4048
    .local v5, "replacementLength":I
    if-ne v4, v5, :cond_103

    .line 4056
    new-array v6, v4, [Z

    .line 4059
    .local v6, "noMoreMatchesForReplIndex":[Z
    const/4 v7, -0x1

    .line 4060
    .local v7, "textIndex":I
    const/4 v8, -0x1

    .line 4061
    .local v8, "replaceIndex":I
    const/4 v9, -0x1

    .line 4065
    .local v9, "tempIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_28
    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ge v10, v4, :cond_55

    .line 4066
    aget-boolean v13, v6, v10

    if-nez v13, :cond_52

    aget-object v13, v1, v10

    if-eqz v13, :cond_52

    aget-object v13, v1, v10

    .line 4067
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_52

    aget-object v13, v2, v10

    if-nez v13, :cond_41

    .line 4068
    goto :goto_52

    .line 4070
    :cond_41
    aget-object v13, v1, v10

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 4073
    if-ne v9, v11, :cond_4c

    .line 4074
    aput-boolean v12, v6, v10

    goto :goto_52

    .line 4076
    :cond_4c
    if-eq v7, v11, :cond_50

    if-ge v9, v7, :cond_52

    .line 4077
    :cond_50
    move v7, v9

    .line 4078
    move v8, v10

    .line 4065
    :cond_52
    :goto_52
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .line 4085
    .end local v10    # "i":I
    :cond_55
    if-ne v7, v11, :cond_58

    .line 4086
    return-object v0

    .line 4089
    :cond_58
    const/4 v10, 0x0

    .line 4092
    .local v10, "start":I
    const/4 v13, 0x0

    .line 4095
    .local v13, "increase":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5b
    array-length v15, v1

    if-ge v14, v15, :cond_7e

    .line 4096
    aget-object v15, v1, v14

    if-eqz v15, :cond_7b

    aget-object v15, v2, v14

    if-nez v15, :cond_67

    .line 4097
    goto :goto_7b

    .line 4099
    :cond_67
    aget-object v15, v2, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v16, v1, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v15, v15, v16

    .line 4100
    .local v15, "greater":I
    if-lez v15, :cond_7b

    .line 4101
    mul-int/lit8 v16, v15, 0x3

    add-int v13, v13, v16

    .line 4095
    .end local v15    # "greater":I
    :cond_7b
    :goto_7b
    add-int/lit8 v14, v14, 0x1

    goto :goto_5b

    .line 4105
    .end local v14    # "i":I
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 4107
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4109
    .local v14, "buf":Ljava/lang/StringBuilder;
    :goto_92
    if-eq v7, v11, :cond_e4

    .line 4111
    move v15, v10

    .local v15, "i":I
    :goto_95
    if-ge v15, v7, :cond_a4

    .line 4112
    const/16 v16, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4111
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_95

    :cond_a4
    const/16 v16, 0x1

    .line 4114
    .end local v15    # "i":I
    aget-object v12, v2, v8

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    aget-object v12, v1, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v10, v7, v12

    .line 4118
    const/4 v7, -0x1

    .line 4119
    const/4 v8, -0x1

    .line 4120
    const/4 v9, -0x1

    .line 4123
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_b7
    if-ge v12, v4, :cond_e2

    .line 4124
    aget-boolean v15, v6, v12

    if-nez v15, :cond_df

    aget-object v15, v1, v12

    if-eqz v15, :cond_df

    aget-object v15, v1, v12

    .line 4125
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_df

    aget-object v15, v2, v12

    if-nez v15, :cond_ce

    .line 4126
    goto :goto_df

    .line 4128
    :cond_ce
    aget-object v15, v1, v12

    invoke-virtual {v0, v15, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 4131
    if-ne v9, v11, :cond_d9

    .line 4132
    aput-boolean v16, v6, v12

    goto :goto_df

    .line 4134
    :cond_d9
    if-eq v7, v11, :cond_dd

    if-ge v9, v7, :cond_df

    .line 4135
    :cond_dd
    move v7, v9

    .line 4136
    move v8, v12

    .line 4123
    :cond_df
    :goto_df
    add-int/lit8 v12, v12, 0x1

    goto :goto_b7

    :cond_e2
    const/4 v12, 0x1

    .end local v12    # "i":I
    goto :goto_92

    .line 4143
    :cond_e4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 4144
    .local v11, "textLength":I
    move v12, v10

    .restart local v12    # "i":I
    :goto_e9
    if-ge v12, v11, :cond_f5

    .line 4145
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4144
    add-int/lit8 v12, v12, 0x1

    goto :goto_e9

    .line 4147
    .end local v12    # "i":I
    :cond_f5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4148
    .local v12, "result":Ljava/lang/String;
    if-nez v3, :cond_fc

    .line 4149
    return-object v12

    .line 4152
    :cond_fc
    add-int/lit8 v15, p4, -0x1

    invoke-static {v12, v1, v2, v3, v15}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 4049
    .end local v6    # "noMoreMatchesForReplIndex":[Z
    .end local v7    # "textIndex":I
    .end local v8    # "replaceIndex":I
    .end local v9    # "tempIndex":I
    .end local v10    # "start":I
    .end local v11    # "textLength":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "increase":I
    .end local v14    # "buf":Ljava/lang/StringBuilder;
    :cond_103
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4040
    .end local v4    # "searchLength":I
    .end local v5    # "replacementLength":I
    :cond_126
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4035
    :cond_12e
    :goto_12e
    return-object v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3975
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p1

    .line 3976
    .local v0, "timeToLive":I
    :goto_5
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3801
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 5607
    if-nez p0, :cond_4

    .line 5608
    const/4 v0, 0x0

    return-object v0

    .line 5610
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 5633
    if-nez p0, :cond_4

    .line 5634
    const/4 v0, 0x0

    return-object v0

    .line 5638
    :cond_4
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5639
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5640
    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2168
    if-nez p0, :cond_4

    .line 2169
    const/4 v0, 0x0

    return-object v0

    .line 2171
    :cond_4
    if-gez p1, :cond_9

    .line 2172
    const-string v0, ""

    return-object v0

    .line 2174
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    .line 2175
    return-object p0

    .line 2177
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4581
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4606
    if-nez p0, :cond_4

    .line 4607
    const/4 v0, 0x0

    return-object v0

    .line 4609
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4610
    .local v0, "pads":I
    if-gtz v0, :cond_d

    .line 4611
    return-object p0

    .line 4613
    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 4614
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4616
    :cond_1a
    invoke-static {p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4643
    if-nez p0, :cond_4

    .line 4644
    const/4 v0, 0x0

    return-object v0

    .line 4646
    :cond_4
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4647
    const-string p2, " "

    .line 4649
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4650
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4651
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4652
    .local v2, "pads":I
    if-gtz v2, :cond_19

    .line 4653
    return-object p0

    .line 4655
    :cond_19
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2a

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_2a

    .line 4656
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4659
    :cond_2a
    if-ne v2, v0, :cond_31

    .line 4660
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4661
    :cond_31
    if-ge v2, v0, :cond_3c

    .line 4662
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4664
    :cond_3c
    new-array v3, v2, [C

    .line 4665
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4666
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_43
    if-ge v5, v2, :cond_4e

    .line 4667
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 4666
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 4669
    .end local v5    # "i":I
    :cond_4e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 2536
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2564
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2593
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2627
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 3137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .line 3183
    if-nez p0, :cond_4

    .line 3184
    const/4 v0, 0x0

    return-object v0

    .line 3186
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 3187
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 3189
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3190
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3191
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3192
    .local v2, "tokenStart":I
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    .line 3193
    .local v3, "currentType":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    :goto_1f
    array-length v5, v0

    if-ge v4, v5, :cond_52

    .line 3194
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 3195
    .local v5, "type":I
    if-ne v5, v3, :cond_2b

    .line 3196
    goto :goto_4f

    .line 3198
    :cond_2b
    if-eqz p1, :cond_43

    const/4 v6, 0x2

    if-ne v5, v6, :cond_43

    const/4 v6, 0x1

    if-ne v3, v6, :cond_43

    .line 3199
    add-int/lit8 v6, v4, -0x1

    .line 3200
    .local v6, "newTokenStart":I
    if-eq v6, v2, :cond_42

    .line 3201
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v2

    invoke-direct {v7, v0, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3202
    move v2, v6

    .line 3204
    .end local v6    # "newTokenStart":I
    :cond_42
    goto :goto_4e

    .line 3205
    :cond_43
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v2

    invoke-direct {v6, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3206
    move v2, v4

    .line 3208
    :goto_4e
    move v3, v5

    .line 3193
    .end local v5    # "type":I
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 3210
    .end local v4    # "pos":I
    :cond_52
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3211
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 3165
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2654
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2685
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2714
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2747
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 2766
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2767
    return-object v0

    .line 2770
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2772
    .local v1, "len":I
    if-nez v1, :cond_d

    .line 2773
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2776
    :cond_d
    if-eqz p1, :cond_71

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_71

    .line 2781
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2783
    .local v0, "separatorLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2784
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2785
    .local v4, "numberOfSubstrings":I
    const/4 v5, 0x0

    .line 2786
    .local v5, "beg":I
    const/4 v6, 0x0

    .line 2787
    .local v6, "end":I
    :goto_24
    if-ge v6, v1, :cond_64

    .line 2788
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2790
    const/4 v7, -0x1

    if-le v6, v7, :cond_5b

    .line 2791
    if-le v6, v5, :cond_46

    .line 2792
    add-int/lit8 v4, v4, 0x1

    .line 2794
    if-ne v4, p2, :cond_3c

    .line 2795
    move v6, v1

    .line 2796
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 2800
    :cond_3c
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    add-int v5, v6, v0

    goto :goto_24

    .line 2809
    :cond_46
    if-eqz p3, :cond_58

    .line 2810
    add-int/lit8 v4, v4, 0x1

    .line 2811
    if-ne v4, p2, :cond_55

    .line 2812
    move v6, v1

    .line 2813
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 2815
    :cond_55
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    :cond_58
    :goto_58
    add-int v5, v6, v0

    goto :goto_24

    .line 2822
    :cond_5b
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2823
    move v6, v1

    goto :goto_24

    .line 2827
    :cond_64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 2778
    .end local v0    # "separatorLength":I
    .end local v3    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "numberOfSubstrings":I
    .end local v5    # "beg":I
    .end local v6    # "end":I
    :cond_71
    :goto_71
    invoke-static {p0, v0, p2, p3}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 2856
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2892
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2975
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 3015
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .line 2910
    if-nez p0, :cond_4

    .line 2911
    const/4 v0, 0x0

    return-object v0

    .line 2913
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2914
    .local v0, "len":I
    if-nez v0, :cond_d

    .line 2915
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 2917
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2918
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .line 2919
    .local v3, "start":I
    const/4 v4, 0x0

    .line 2920
    .local v4, "match":Z
    const/4 v5, 0x0

    .line 2921
    .local v5, "lastMatch":Z
    :goto_16
    if-ge v2, v0, :cond_34

    .line 2922
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_2f

    .line 2923
    if-nez v4, :cond_22

    if-eqz p2, :cond_2b

    .line 2924
    :cond_22
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2925
    const/4 v4, 0x0

    .line 2926
    const/4 v5, 0x1

    .line 2928
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2929
    goto :goto_16

    .line 2931
    :cond_2f
    const/4 v5, 0x0

    .line 2932
    const/4 v4, 0x1

    .line 2933
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2935
    :cond_34
    if-nez v4, :cond_3a

    if-eqz p2, :cond_41

    if-eqz v5, :cond_41

    .line 2936
    :cond_3a
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2938
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 3037
    if-nez p0, :cond_4

    .line 3038
    const/4 v0, 0x0

    return-object v0

    .line 3040
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3041
    .local v0, "len":I
    if-nez v0, :cond_d

    .line 3042
    sget-object v1, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 3044
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3045
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 3046
    .local v2, "sizePlus1":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .line 3047
    .local v4, "start":I
    const/4 v5, 0x0

    .line 3048
    .local v5, "match":Z
    const/4 v6, 0x0

    .line 3049
    .local v6, "lastMatch":Z
    const/4 v7, 0x1

    if-nez p1, :cond_44

    .line 3051
    :goto_1a
    if-ge v3, v0, :cond_a0

    .line 3052
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 3053
    if-nez v5, :cond_2a

    if-eqz p3, :cond_3c

    .line 3054
    :cond_2a
    const/4 v6, 0x1

    .line 3055
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_32

    .line 3056
    move v2, v0

    .line 3057
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3059
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_32
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3060
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 3062
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_3c
    add-int/2addr v3, v7

    move v4, v3

    .line 3063
    goto :goto_1a

    .line 3065
    :cond_3f
    const/4 v6, 0x0

    .line 3066
    const/4 v5, 0x1

    .line 3067
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 3069
    :cond_44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_76

    .line 3071
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3072
    .local v8, "sep":C
    :goto_4f
    if-ge v3, v0, :cond_75

    .line 3073
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_70

    .line 3074
    if-nez v5, :cond_5b

    if-eqz p3, :cond_6d

    .line 3075
    :cond_5b
    const/4 v6, 0x1

    .line 3076
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v9, "sizePlus1":I
    if-ne v2, p2, :cond_63

    .line 3077
    move v2, v0

    .line 3078
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3080
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_63
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3081
    const/4 v2, 0x0

    move v5, v2

    move v2, v9

    .line 3083
    .end local v9    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_6d
    add-int/2addr v3, v7

    move v4, v3

    .line 3084
    goto :goto_4f

    .line 3086
    :cond_70
    const/4 v6, 0x0

    .line 3087
    const/4 v5, 0x1

    .line 3088
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 3090
    .end local v8    # "sep":C
    :cond_75
    goto :goto_a0

    .line 3092
    :cond_76
    :goto_76
    if-ge v3, v0, :cond_a0

    .line 3093
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_9b

    .line 3094
    if-nez v5, :cond_86

    if-eqz p3, :cond_98

    .line 3095
    :cond_86
    const/4 v6, 0x1

    .line 3096
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_8e

    .line 3097
    move v2, v0

    .line 3098
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3100
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_8e
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3101
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 3103
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_98
    add-int/2addr v3, v7

    move v4, v3

    .line 3104
    goto :goto_76

    .line 3106
    :cond_9b
    const/4 v6, 0x0

    .line 3107
    const/4 v5, 0x1

    .line 3108
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 3111
    :cond_a0
    :goto_a0
    if-nez v5, :cond_a6

    if-eqz p3, :cond_ad

    if-eqz v6, :cond_ad

    .line 3112
    :cond_a6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3114
    :cond_ad
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 6326
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 12
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 6367
    const/4 v0, 0x0

    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    move-object v3, p0

    move-object v6, p1

    move v4, p2

    goto :goto_25

    .line 6370
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_14

    .line 6371
    return v0

    .line 6373
    :cond_14
    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v5, 0x0

    move-object v3, p0

    move-object v6, p1

    move v4, p2

    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "prefix":Ljava/lang/CharSequence;
    .end local p2    # "ignoreCase":Z
    .local v3, "str":Ljava/lang/CharSequence;
    .local v4, "ignoreCase":Z
    .local v6, "prefix":Ljava/lang/CharSequence;
    invoke-static/range {v3 .. v8}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    .line 6367
    .end local v3    # "str":Ljava/lang/CharSequence;
    .end local v4    # "ignoreCase":Z
    .end local v6    # "prefix":Ljava/lang/CharSequence;
    .restart local p0    # "str":Ljava/lang/CharSequence;
    .restart local p1    # "prefix":Ljava/lang/CharSequence;
    .restart local p2    # "ignoreCase":Z
    :cond_22
    move-object v3, p0

    move-object v6, p1

    move v4, p2

    .line 6368
    .end local p0    # "str":Ljava/lang/CharSequence;
    .end local p1    # "prefix":Ljava/lang/CharSequence;
    .end local p2    # "ignoreCase":Z
    .restart local v3    # "str":Ljava/lang/CharSequence;
    .restart local v4    # "ignoreCase":Z
    .restart local v6    # "prefix":Ljava/lang/CharSequence;
    :goto_25
    if-nez v3, :cond_2a

    if-nez v6, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 6396
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_20

    .line 6399
    :cond_e
    array-length v0, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 6400
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 6401
    const/4 v0, 0x1

    return v0

    .line 6399
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6404
    :cond_1f
    return v1

    .line 6397
    :cond_20
    :goto_20
    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 6352
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 449
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 450
    return-object p0

    .line 452
    :cond_7
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 453
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Ljava/lang/String;

    .line 629
    if-nez p0, :cond_4

    .line 630
    const/4 v0, 0x0

    return-object v0

    .line 633
    :cond_4
    const/4 v0, 0x0

    .line 634
    .local v0, "result":Ljava/lang/String;
    :try_start_5
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 635
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    goto :goto_1a

    .line 636
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_10
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 637
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :goto_1a
    return-object v1

    .line 639
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The stripAccents(CharSequence) method requires at least Java6, but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 641
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$200()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; or a Sun JVM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$300()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/lang/String;
    throw v1
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_46} :catch_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_46} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_46} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_46} :catch_46

    .line 652
    .end local v0    # "result":Ljava/lang/String;
    .restart local p0    # "input":Ljava/lang/String;
    :catch_46
    move-exception v0

    .line 653
    .local v0, "se":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SecurityException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 650
    .end local v0    # "se":Ljava/lang/SecurityException;
    :catch_4f
    move-exception v0

    .line 651
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "InvocationTargetException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 648
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_58
    move-exception v0

    .line 649
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IllegalAccessException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 646
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_61
    move-exception v0

    .line 647
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IllegalArgumentException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "strs"    # [Ljava/lang/String;

    .line 567
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 597
    if-eqz p0, :cond_18

    array-length v0, p0

    move v1, v0

    .local v1, "strsLen":I
    if-nez v0, :cond_7

    goto :goto_18

    .line 600
    :cond_7
    new-array v0, v1, [Ljava/lang/String;

    .line 601
    .local v0, "newArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_17

    .line 602
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 604
    .end local v2    # "i":I
    :cond_17
    return-object v0

    .line 598
    .end local v0    # "newArr":[Ljava/lang/String;
    .end local v1    # "strsLen":I
    :cond_18
    :goto_18
    return-object p0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 527
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "end":I
    if-nez v0, :cond_a

    goto :goto_3c

    .line 531
    :cond_a
    if-nez p1, :cond_1d

    .line 532
    :goto_c
    if-eqz v1, :cond_36

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 533
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 535
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    .line 536
    return-object p0

    .line 538
    :cond_24
    :goto_24
    if-eqz v1, :cond_36

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_36

    .line 539
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 542
    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    .end local v1    # "end":I
    :cond_3c
    :goto_3c
    return-object p0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 482
    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    goto :goto_38

    .line 485
    :cond_a
    const/4 v0, 0x0

    .line 486
    .local v0, "start":I
    if-nez p1, :cond_1c

    .line 487
    :goto_d
    if-eq v0, v1, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 490
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    .line 491
    return-object p0

    .line 493
    :cond_23
    :goto_23
    if-eq v0, v1, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_33

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 497
    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 483
    .end local v0    # "start":I
    .end local v1    # "strLen":I
    :cond_38
    :goto_38
    return-object p0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 419
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_a

    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 390
    return-object v0

    .line 392
    :cond_4
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 2025
    if-nez p0, :cond_4

    .line 2026
    const/4 v0, 0x0

    return-object v0

    .line 2030
    :cond_4
    if-gez p1, :cond_b

    .line 2031
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2034
    :cond_b
    if-gez p1, :cond_e

    .line 2035
    const/4 p1, 0x0

    .line 2037
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_17

    .line 2038
    const-string v0, ""

    return-object v0

    .line 2041
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2080
    if-nez p0, :cond_4

    .line 2081
    const/4 v0, 0x0

    return-object v0

    .line 2085
    :cond_4
    if-gez p2, :cond_b

    .line 2086
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 2088
    :cond_b
    if-gez p1, :cond_12

    .line 2089
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2093
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    .line 2094
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 2098
    :cond_1c
    if-le p1, p2, :cond_21

    .line 2099
    const-string v0, ""

    return-object v0

    .line 2102
    :cond_21
    if-gez p1, :cond_24

    .line 2103
    const/4 p1, 0x0

    .line 2105
    :cond_24
    if-gez p2, :cond_27

    .line 2106
    const/4 p2, 0x0

    .line 2109
    :cond_27
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2293
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2294
    return-object p0

    .line 2296
    :cond_7
    const-string v0, ""

    if-nez p1, :cond_c

    .line 2297
    return-object v0

    .line 2299
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2300
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 2301
    return-object v0

    .line 2303
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2374
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2375
    return-object p0

    .line 2377
    :cond_7
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_10

    .line 2378
    return-object v1

    .line 2380
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2381
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_23

    goto :goto_2d

    .line 2384
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2382
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2251
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_9

    goto :goto_20

    .line 2254
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 2255
    const-string v0, ""

    return-object v0

    .line 2257
    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2258
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 2259
    return-object p0

    .line 2261
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2252
    .end local v0    # "pos":I
    :cond_20
    :goto_20
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2334
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    .line 2337
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2338
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 2339
    return-object p0

    .line 2341
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2335
    .end local v0    # "pos":I
    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 2411
    invoke-static {p0, p1, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2442
    const/4 v0, 0x0

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    if-nez p2, :cond_8

    goto :goto_25

    .line 2445
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2446
    .local v1, "start":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 2447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2448
    .local v3, "end":I
    if-eq v3, v2, :cond_24

    .line 2449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2452
    .end local v3    # "end":I
    :cond_24
    return-object v0

    .line 2443
    .end local v1    # "start":I
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2478
    const/4 v0, 0x0

    if-eqz p0, :cond_58

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_58

    .line 2481
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2482
    .local v1, "strLen":I
    if-nez v1, :cond_19

    .line 2483
    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2485
    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2486
    .local v2, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2487
    .local v3, "openLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2488
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2489
    .local v5, "pos":I
    :goto_27
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_44

    .line 2490
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2491
    .local v6, "start":I
    if-gez v6, :cond_32

    .line 2492
    goto :goto_44

    .line 2494
    :cond_32
    add-int/2addr v6, v3

    .line 2495
    invoke-virtual {p0, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 2496
    .local v7, "end":I
    if-gez v7, :cond_3a

    .line 2497
    goto :goto_44

    .line 2499
    :cond_3a
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    add-int v5, v7, v2

    .line 2501
    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_27

    .line 2502
    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2503
    return-object v0

    .line 2505
    :cond_4b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2479
    .end local v1    # "strLen":I
    .end local v2    # "closeLen":I
    .end local v3    # "openLen":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pos":I
    :cond_58
    :goto_58
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5100
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5101
    return-object p0

    .line 5104
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5106
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_3a

    .line 5107
    aget-char v2, v0, v1

    .line 5108
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 5109
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v1

    goto :goto_37

    .line 5110
    :cond_1e
    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 5111
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v1

    goto :goto_37

    .line 5112
    :cond_2b
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 5113
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v1

    .line 5106
    .end local v2    # "ch":C
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 5116
    .end local v1    # "i":I
    :cond_3a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 6579
    new-instance v0, Ljava/lang/String;

    if-nez p1, :cond_8

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_b

    :cond_8
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_b
    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 282
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 334
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 308
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5063
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    goto :goto_2a

    .line 5066
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5067
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5068
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5069
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5066
    return-object v0

    .line 5064
    .end local v1    # "strLen":I
    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4932
    if-nez p0, :cond_4

    .line 4933
    const/4 v0, 0x0

    return-object v0

    .line 4935
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 4955
    if-nez p0, :cond_4

    .line 4956
    const/4 v0, 0x0

    return-object v0

    .line 4958
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
