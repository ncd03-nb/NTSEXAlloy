.class public final Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;
.super Lexternal/org/apache/commons/lang3/tuple/Pair;
.source "ImmutablePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lexternal/org/apache/commons/lang3/tuple/Pair<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;, "Lexternal/org/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;-><init>()V

    .line 69
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lexternal/org/apache/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 58
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;, "Lexternal/org/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;, "Lexternal/org/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;, "Lexternal/org/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
