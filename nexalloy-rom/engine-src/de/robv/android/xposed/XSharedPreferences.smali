.class public final Lde/robv/android/xposed/XSharedPreferences;
.super Ljava/lang/Object;
.source "XSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/XSharedPreferences$Loader;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XSharedPreferences"

.field private static sLoader:Lde/robv/android/xposed/XSharedPreferences$Loader;


# instance fields
.field private final mFile:Ljava/io/File;

.field private mFileSize:J

.field private mLastModified:J

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FhOzX-O417detQsB3wWuAF0PHQ8(Lde/robv/android/xposed/XSharedPreferences;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->loadFromDiskLocked()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-object v0, Lde/robv/android/xposed/XSharedPreferences$Loader;->SYNC:Lde/robv/android/xposed/XSharedPreferences$Loader;

    sput-object v0, Lde/robv/android/xposed/XSharedPreferences;->sLoader:Lde/robv/android/xposed/XSharedPreferences$Loader;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "prefFile"    # Ljava/io/File;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 70
    iput-object p1, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    .line 72
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->startLoadFromDisk()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "prefFileName"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shared_prefs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    .line 93
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->startLoadFromDisk()V

    .line 94
    return-void
.end method

.method private awaitLoadedLocked()V
    .registers 2

    .line 223
    nop

    :goto_1
    iget-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    if-nez v0, :cond_b

    .line 225
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    .line 227
    :goto_8
    goto :goto_1

    .line 226
    :catch_9
    move-exception v0

    goto :goto_8

    .line 229
    :cond_b
    return-void
.end method

.method private declared-synchronized loadFromDiskLocked()V
    .registers 8

    .line 137
    iget-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    if-eqz v0, :cond_5

    .line 138
    return-void

    .line 142
    :cond_5
    const/4 v0, 0x0

    .line 145
    .local v0, "map":Ljava/util/Map;
    const/4 v1, 0x0

    .line 146
    .local v1, "in":Ljava/io/BufferedInputStream;
    iget-object v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 156
    .local v2, "lastModified":J
    :try_start_d
    iget-wide v4, p0, Lde/robv/android/xposed/XSharedPreferences;->mLastModified:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_28

    .line 157
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x1000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v4

    .line 158
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "map":Ljava/util/Map;
    .local v4, "map":Ljava/util/Map;
    goto :goto_2b

    .line 161
    .end local v4    # "map":Ljava/util/Map;
    .restart local v0    # "map":Ljava/util/Map;
    :cond_28
    iget-object v4, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_2a} :catch_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_2a} :catch_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2a} :catch_35
    .catchall {:try_start_d .. :try_end_2a} :catchall_33

    move-object v0, v4

    .line 168
    :goto_2b
    if-eqz v1, :cond_4f

    .line 170
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 172
    :goto_30
    goto :goto_4f

    .line 171
    :catch_31
    move-exception v4

    goto :goto_30

    .line 168
    :catchall_33
    move-exception v4

    goto :goto_43

    .line 165
    :catch_35
    move-exception v4

    goto :goto_38

    :catch_37
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/Exception;
    :goto_38
    :try_start_38
    const-string v5, "XSharedPreferences"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_33

    .line 168
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4f

    .line 170
    goto :goto_2d

    .line 168
    :goto_43
    if-eqz v1, :cond_4a

    .line 170
    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 172
    goto :goto_4a

    .line 171
    :catch_49
    move-exception v5

    .line 174
    :cond_4a
    :goto_4a
    throw v4

    .line 163
    :catch_4b
    move-exception v4

    .line 168
    if-eqz v1, :cond_4f

    .line 170
    goto :goto_2d

    .line 176
    :cond_4f
    :goto_4f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 177
    if-eqz v0, :cond_61

    .line 178
    iput-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 179
    iput-wide v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mLastModified:J

    .line 180
    iget-object v4, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lde/robv/android/xposed/XSharedPreferences;->mFileSize:J

    goto :goto_68

    .line 182
    :cond_61
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 184
    :goto_68
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 185
    return-void
.end method

.method public static setLoader(Lde/robv/android/xposed/XSharedPreferences$Loader;)V
    .registers 1
    .param p0, "loader"    # Lde/robv/android/xposed/XSharedPreferences$Loader;

    .line 62
    sput-object p0, Lde/robv/android/xposed/XSharedPreferences;->sLoader:Lde/robv/android/xposed/XSharedPreferences$Loader;

    .line 63
    return-void
.end method

.method private startLoadFromDisk()V
    .registers 3

    .line 129
    monitor-enter p0

    .line 130
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 131
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_10

    .line 132
    sget-object v0, Lde/robv/android/xposed/XSharedPreferences;->sLoader:Lde/robv/android/xposed/XSharedPreferences$Loader;

    new-instance v1, Lde/robv/android/xposed/XSharedPreferences$0;

    invoke-direct {v1, p0}, Lde/robv/android/xposed/XSharedPreferences$0;-><init>(Lde/robv/android/xposed/XSharedPreferences;)V

    invoke-interface {v0, p0, v1}, Lde/robv/android/xposed/XSharedPreferences$Loader;->run(Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/Runnable;)V

    .line 133
    return-void

    .line 131
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 304
    monitor-enter p0

    .line 305
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 306
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 307
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 234
    monitor-enter p0

    .line 235
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 236
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 237
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 294
    monitor-enter p0

    .line 295
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 296
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 297
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_14

    :cond_13
    move v1, p2

    :goto_14
    monitor-exit p0

    return v1

    .line 298
    .end local v0    # "v":Ljava/lang/Boolean;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 125
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 284
    monitor-enter p0

    .line 285
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 286
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 287
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_14

    :cond_13
    move v1, p2

    :goto_14
    monitor-exit p0

    return v1

    .line 288
    .end local v0    # "v":Ljava/lang/Float;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 266
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 267
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_14

    :cond_13
    move v1, p2

    :goto_14
    monitor-exit p0

    return v1

    .line 268
    .end local v0    # "v":Ljava/lang/Integer;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 274
    monitor-enter p0

    .line 275
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 276
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 277
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_14

    :cond_13
    move-wide v1, p2

    :goto_14
    monitor-exit p0

    return-wide v1

    .line 278
    .end local v0    # "v":Ljava/lang/Long;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 243
    monitor-enter p0

    .line 244
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 245
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_11

    :cond_10
    move-object v1, p2

    :goto_11
    monitor-exit p0

    return-object v1

    .line 247
    .end local v0    # "v":Ljava/lang/String;
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 255
    :try_start_1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 256
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 257
    .local v0, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_11

    :cond_10
    move-object v1, p2

    :goto_11
    monitor-exit p0

    return-object v1

    .line 258
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized hasFileChanged()Z
    .registers 8

    monitor-enter p0

    .line 203
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_37

    .line 205
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_32

    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 208
    :try_start_e
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_37

    .line 205
    monitor-exit p0

    return v2

    .line 206
    .end local p0    # "this":Lde/robv/android/xposed/XSharedPreferences;
    :cond_13
    :try_start_13
    iget-object v1, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, p0, Lde/robv/android/xposed/XSharedPreferences;->mLastModified:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2d

    iget-object v1, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lde/robv/android/xposed/XSharedPreferences;->mFileSize:J
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_32

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 208
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_37

    .line 206
    monitor-exit p0

    return v2

    .line 208
    :catchall_32
    move-exception v1

    :try_start_33
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 209
    throw v1

    .line 202
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public makeWorldReadable()Z
    .registers 4

    .line 113
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 114
    return v1

    .line 116
    :cond_a
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "listeners are not supported in this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized reload()V
    .registers 2

    monitor-enter p0

    .line 193
    :try_start_1
    invoke-virtual {p0}, Lde/robv/android/xposed/XSharedPreferences;->hasFileChanged()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->startLoadFromDisk()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 195
    .end local p0    # "this":Lde/robv/android/xposed/XSharedPreferences;
    :cond_a
    monitor-exit p0

    return-void

    .line 192
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "listeners are not supported in this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
