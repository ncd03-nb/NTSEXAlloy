.class public Lexternal/org/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .line 70
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 71
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0

    .line 73
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 74
    .local v0, "sz":I
    if-gez p2, :cond_13

    .line 75
    const/4 p2, 0x0

    .line 77
    :cond_13
    move v1, p2

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_20

    .line 78
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 79
    return v1

    .line 77
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 82
    .end local v1    # "i":I
    :cond_20
    const/4 v1, -0x1

    return v1
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .line 117
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 118
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0

    .line 120
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 121
    .local v0, "sz":I
    const/4 v1, -0x1

    if-gez p2, :cond_14

    .line 122
    return v1

    .line 124
    :cond_14
    if-lt p2, v0, :cond_18

    .line 125
    add-int/lit8 p2, v0, -0x1

    .line 127
    :cond_18
    move v2, p2

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_25

    .line 128
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_22

    .line 129
    return v2

    .line 127
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 132
    .end local v2    # "i":I
    :cond_25
    return v1
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .registers 13
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .line 189
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 190
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .end local p1    # "ignoreCase":Z
    .end local p2    # "thisStart":I
    .end local p4    # "start":I
    .end local p5    # "length":I
    .local v2, "ignoreCase":Z
    .local v3, "thisStart":I
    .local v5, "start":I
    .local v6, "length":I
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    move v1, v2

    move v2, v3

    move v4, v5

    move v5, v6

    .end local v3    # "thisStart":I
    .end local v6    # "length":I
    .local v1, "ignoreCase":Z
    .local v2, "thisStart":I
    .local v4, "start":I
    .local v5, "length":I
    return p1

    .line 189
    .end local v1    # "ignoreCase":Z
    .end local v2    # "thisStart":I
    .end local v4    # "start":I
    .end local v5    # "length":I
    .restart local p1    # "ignoreCase":Z
    .restart local p2    # "thisStart":I
    .restart local p4    # "start":I
    .restart local p5    # "length":I
    :cond_1b
    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 193
    .end local p1    # "ignoreCase":Z
    .end local p2    # "thisStart":I
    .end local p4    # "start":I
    .end local p5    # "length":I
    .restart local v1    # "ignoreCase":Z
    .restart local v2    # "thisStart":I
    .restart local v4    # "start":I
    .restart local v5    # "length":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 56
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method static toCharArray(Ljava/lang/CharSequence;)[C
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 164
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 165
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 167
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 168
    .local v0, "sz":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [C

    .line 169
    .local v1, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_22

    .line 170
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 172
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method
