.class public interface abstract Lde/robv/android/xposed/XSharedPreferences$Loader;
.super Ljava/lang/Object;
.source "XSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Loader"
.end annotation


# static fields
.field public static final ASYNC:Lde/robv/android/xposed/XSharedPreferences$Loader;

.field public static final SYNC:Lde/robv/android/xposed/XSharedPreferences$Loader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences$Loader$0;

    invoke-direct {v0}, Lde/robv/android/xposed/XSharedPreferences$Loader$0;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XSharedPreferences$Loader;->SYNC:Lde/robv/android/xposed/XSharedPreferences$Loader;

    .line 51
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences$Loader$2;

    invoke-direct {v0}, Lde/robv/android/xposed/XSharedPreferences$Loader$2;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XSharedPreferences$Loader;->ASYNC:Lde/robv/android/xposed/XSharedPreferences$Loader;

    return-void
.end method


# virtual methods
.method public abstract run(Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/Runnable;)V
.end method
