.class public abstract Lde/robv/android/xposed/callbacks/XCallback;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/callbacks/XCallback$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lde/robv/android/xposed/callbacks/XCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_HIGHEST:I = 0x2710

.field public static final PRIORITY_LOWEST:I = -0x2710


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x32

    iput v0, p0, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    .line 44
    return-void
.end method


# virtual methods
.method public compareTo(Lde/robv/android/xposed/callbacks/XCallback;)I
    .registers 4

    .line 59
    if-ne p0, p1, :cond_4

    .line 60
    const/4 p1, 0x0

    return p1

    .line 63
    :cond_4
    iget v0, p1, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    iget v1, p0, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    if-eq v0, v1, :cond_10

    .line 64
    iget p1, p1, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    iget v0, p0, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    sub-int/2addr p1, v0

    return p1

    .line 66
    :cond_10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ge v0, p1, :cond_1c

    .line 67
    const/4 p1, -0x1

    return p1

    .line 69
    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    check-cast p1, Lde/robv/android/xposed/callbacks/XCallback;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/callbacks/XCallback;->compareTo(Lde/robv/android/xposed/callbacks/XCallback;)I

    move-result p1

    return p1
.end method
