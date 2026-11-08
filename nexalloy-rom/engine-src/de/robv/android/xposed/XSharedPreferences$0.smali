.class public final synthetic Lde/robv/android/xposed/XSharedPreferences$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lde/robv/android/xposed/XSharedPreferences;"
    method = "loadFromDiskLocked"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lde/robv/android/xposed/XSharedPreferences;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/robv/android/xposed/XSharedPreferences$0;->f$0:Lde/robv/android/xposed/XSharedPreferences;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences$0;->f$0:Lde/robv/android/xposed/XSharedPreferences;

    invoke-static {v0}, Lde/robv/android/xposed/XSharedPreferences;->$r8$lambda$FhOzX-O417detQsB3wWuAF0PHQ8(Lde/robv/android/xposed/XSharedPreferences;)V

    return-void
.end method
