.class public final Landroid/security/ntmanager/NexAlloyRuntime;
.super Ljava/lang/Object;
.source "NexAlloyRuntime.java"


# static fields
.field private static final APP_SETTINGS_PREFIX:Ljava/lang/String; = "nt_nexalloy_app_"

.field private static final BRIDGE_DIGEST:Ljava/lang/String; = "5df1239761af86ce667ea409463eb314247053271251f5e1138d4d4ecccfe784"

.field private static final BRIDGE_ENTRY:Ljava/lang/String; = "ntmanager/NTModernBridge.dex"

.field private static final FRAMEWORK:Ljava/lang/String; = "/system/framework/framework.jar"

.field private static final INITIALIZED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORIGINAL_MODULE:Ljava/lang/String; = "io.github.chsbuffer.revancedxposed"

.field private static final PAYLOAD_ENTRY:Ljava/lang/String; = "ntmanager/NTXposedEngine.dex"

.field private static final PAYLOAD_VERSION:Ljava/lang/String; = "manager-2"

.field private static final RUNTIME_DIR:Ljava/lang/String; = "ntnexalloy-manager-2"

.field private static final TAG:Ljava/lang/String; = "NTNexAlloy"

.field private static settingsService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/security/ntmanager/NexAlloyRuntime;->INITIALIZED:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    :try_start_0
    const-string v0, "sun.misc.Unsafe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 290
    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 291
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 292
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 293
    const-string v3, "allocateInstance"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-object p0

    .line 294
    :catchall_2b
    move-exception v0

    .line 295
    invoke-static {p0}, Landroid/security/ntmanager/NexAlloyRuntime;->newInstanceUsingConstructor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static currentProcessName()Ljava/lang/String;
    .registers 5

    .line 200
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/app/Application;

    const-string v2, "getProcessName"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    return-object v1

    .line 201
    :catchall_15
    move-exception v1

    .line 202
    return-object v0
.end method

.method private static digest(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 260
    :try_start_5
    invoke-static {v0}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 261
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 260
    return-object p0

    .line 259
    :catchall_d
    move-exception p0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0
.end method

.method private static digest(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 266
    const v1, 0x8000

    new-array v1, v1, [B

    .line 267
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_17

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_b

    .line 268
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 269
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    :goto_23
    if-ge v4, v1, :cond_3d

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 270
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static expectedDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_80

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "ntmanager/arm64-v8a/libc++_shared.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_12
    const-string v0, "ntmanager/arm64-v8a/liblsplant.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_1c
    const-string v0, "ntmanager/armeabi-v7a/liblsplant.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :sswitch_26
    const-string v0, "ntmanager/armeabi-v7a/libaliuhook.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :sswitch_30
    const-string v0, "ntmanager/NTXposedEngine.dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_3a
    const-string v0, "ntmanager/arm64-v8a/libaliuhook.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_44
    const-string v0, "ntmanager/armeabi-v7a/libc++_shared.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_9e

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unpinned NexAlloy asset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_6b
    const-string p0, "fc545ee9c7c1b367e936973139da3db2b290e6e767fef332ca7bb0619982ef05"

    return-object p0

    .line 281
    :pswitch_6e
    const-string p0, "fc965c4d2de9137e49796aa4278b0281df54694e9b0f12c82b1899909b2508cd"

    return-object p0

    .line 280
    :pswitch_71
    const-string p0, "38331a1efcb446eb1a0db440a8db8f41fa4fb698d15c061ab8c491426531c2c0"

    return-object p0

    .line 279
    :pswitch_74
    const-string p0, "61c62a44b2b05154ba7d1545c93e1a66bf875c1f7f82fbdba87b8d033d09176c"

    return-object p0

    .line 278
    :pswitch_77
    const-string p0, "53eff56530dbd91cdfdee42d5c7b91e6479ef088b7a5906d6abf3e61e1055a7a"

    return-object p0

    .line 277
    :pswitch_7a
    const-string p0, "b5d97c38a728afe28d341cda3369f512d35eaf9c680c1b0563cd6a63e395230f"

    return-object p0

    .line 276
    :pswitch_7d
    const-string p0, "2b488bc44a04d3e74aa841464cb6df11f9b34935c739d5bab7cec995a2c97627"

    return-object p0

    :sswitch_data_80
    .sparse-switch
        -0x64feb537 -> :sswitch_44
        -0x4dd09caa -> :sswitch_3a
        0x1b35f14 -> :sswitch_30
        0x1aa73310 -> :sswitch_26
        0x2a5fe4c6 -> :sswitch_1c
        0x588d93c0 -> :sswitch_12
        0x713e818f -> :sswitch_8
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
    .end packed-switch
.end method

.method private static extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    const-string v0, "ntmanager/NTModernBridge.dex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "5df1239761af86ce667ea409463eb314247053271251f5e1138d4d4ecccfe784"

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/security/ntmanager/NexAlloyRuntime;->expectedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v1}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 221
    return-object v1

    .line 224
    :cond_25
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    new-instance p0, Ljava/util/zip/ZipFile;

    const-string v3, "/system/framework/framework.jar"

    invoke-direct {p0, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 226
    :try_start_44
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 227
    if-eqz v3, :cond_e5

    .line 230
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_fe

    .line 231
    :try_start_4e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_d9

    .line 232
    const v5, 0x8000

    :try_start_56
    new-array v5, v5, [B

    .line 234
    :goto_58
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_64

    .line 235
    invoke-virtual {v4, v5, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_58

    .line 237
    :cond_64
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_cf

    .line 238
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_d9

    if-eqz v3, :cond_73

    :try_start_70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_fe

    .line 239
    :cond_73
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 241
    invoke-static {v2}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 246
    const/4 p0, 0x1

    invoke-virtual {v2, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 247
    invoke-virtual {v2, p0, p0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 248
    invoke-virtual {v2, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 249
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 252
    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 253
    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 254
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 255
    return-object v1

    .line 250
    :cond_9a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot publish "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 242
    :cond_b3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 243
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NexAlloy checksum mismatch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :catchall_cf
    move-exception p1

    :try_start_d0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d4

    goto :goto_d8

    :catchall_d4
    move-exception p2

    :try_start_d5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d8
    throw p1
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_d9

    :catchall_d9
    move-exception p1

    if-eqz v3, :cond_e4

    :try_start_dc
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_e0

    goto :goto_e4

    :catchall_e0
    move-exception p2

    :try_start_e1
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e4
    :goto_e4
    throw p1

    .line 228
    :cond_e5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing framework entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_fe
    .catchall {:try_start_e1 .. :try_end_fe} :catchall_fe

    .line 225
    :catchall_fe
    move-exception p1

    :try_start_ff
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_103

    goto :goto_107

    :catchall_103
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_107
    throw p1
.end method

.method private static extractModuleNative(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/File;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    const-string v0, "/"

    new-instance v1, Ljava/io/File;

    const-string v2, "apk"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 147
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nt-original-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_42

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_42

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create module native cache"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_42
    :goto_42
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 150
    :try_start_47
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 151
    :cond_4b
    :goto_4b
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 152
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    goto :goto_4b

    .line 155
    :cond_85
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_172

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_172

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_172

    .line 157
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-ltz v3, :cond_16a

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    const-wide/32 v7, 0x6400000

    cmp-long v3, v5, v7

    if-gtz v3, :cond_16a

    .line 161
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_c5
    .catchall {:try_start_47 .. :try_end_c5} :catchall_17e

    :try_start_c5
    invoke-static {v3}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_15e

    if-eqz v3, :cond_ce

    :try_start_cb
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_ce
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-static {v4}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    goto/16 :goto_4b

    .line 163
    :cond_e0
    const-string v3, "native-"

    const-string v6, ".tmp"

    invoke-static {v3, v6, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_e8
    .catchall {:try_start_cb .. :try_end_e8} :catchall_17e

    .line 165
    :try_start_e8
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_159

    :try_start_ec
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f1
    .catchall {:try_start_ec .. :try_end_f1} :catchall_14d

    .line 166
    const/4 v8, 0x0

    :try_start_f2
    invoke-virtual {v3, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 167
    const v9, 0x8000

    new-array v9, v9, [B

    .line 168
    :goto_fa
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_104

    invoke-virtual {v7, v9, v8, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_fa

    .line 169
    :cond_104
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10b
    .catchall {:try_start_f2 .. :try_end_10b} :catchall_143

    .line 170
    :try_start_10b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_14d

    if-eqz v6, :cond_113

    :try_start_110
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_113
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_13b

    invoke-static {v3}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v4, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_136
    .catchall {:try_start_110 .. :try_end_136} :catchall_159

    .line 174
    :try_start_136
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_17e

    .line 175
    goto/16 :goto_4b

    .line 172
    :cond_13b
    :try_start_13b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot publish module library"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_143
    .catchall {:try_start_13b .. :try_end_143} :catchall_159

    .line 165
    :catchall_143
    move-exception p1

    :try_start_144
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_148

    goto :goto_14c

    :catchall_148
    move-exception p2

    :try_start_149
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14c
    throw p1
    :try_end_14d
    .catchall {:try_start_149 .. :try_end_14d} :catchall_14d

    :catchall_14d
    move-exception p1

    if-eqz v6, :cond_158

    :try_start_150
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    goto :goto_158

    :catchall_154
    move-exception p2

    :try_start_155
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_158
    :goto_158
    throw p1
    :try_end_159
    .catchall {:try_start_155 .. :try_end_159} :catchall_159

    .line 174
    :catchall_159
    move-exception p1

    :try_start_15a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw p1
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_17e

    .line 161
    :catchall_15e
    move-exception p1

    if-eqz v3, :cond_169

    :try_start_161
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_165

    goto :goto_169

    :catchall_165
    move-exception p2

    :try_start_166
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_169
    :goto_169
    throw p1

    .line 159
    :cond_16a
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Invalid module library size"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_172
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Invalid module library name"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17a
    .catchall {:try_start_166 .. :try_end_17a} :catchall_17e

    .line 176
    :cond_17a
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 177
    return-object v2

    .line 149
    :catchall_17e
    move-exception p1

    :try_start_17f
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_182
    .catchall {:try_start_17f .. :try_end_182} :catchall_183

    goto :goto_187

    :catchall_183
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_187
    throw p1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 18

    .line 87
    move-object/from16 v1, p0

    .line 88
    if-nez v1, :cond_5

    return-void

    .line 89
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_201

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v3, 0x186a0

    rem-int/2addr v0, v3

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1b

    goto/16 :goto_201

    .line 91
    :cond_1b
    const-string v0, "io.github.chsbuffer.revancedxposed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 94
    :try_start_21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "content://settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "nt.nexalloy.module"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_1f4

    .line 98
    nop

    .line 99
    if-nez v0, :cond_36

    return-void

    .line 100
    :cond_36
    const-string v4, "enabledScope"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 101
    if-nez v3, :cond_47

    if-eqz v4, :cond_46

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    :cond_46
    return-void

    .line 102
    :cond_47
    invoke-static {}, Landroid/security/ntmanager/NexAlloyRuntime;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    .line 103
    if-eqz v4, :cond_54

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    return-void

    .line 104
    :cond_54
    sget-object v4, Landroid/security/ntmanager/NexAlloyRuntime;->INITIALIZED:Ljava/util/Set;

    monitor-enter v4

    :try_start_57
    sget-object v5, Landroid/security/ntmanager/NexAlloyRuntime;->INITIALIZED:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    monitor-exit v4

    return-void

    :cond_61
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_1f1

    .line 106
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_b6

    .line 109
    :try_start_66
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "nt.nexalloy.service"

    invoke-virtual {v0, v3, v7, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_ae

    const-string v3, "binder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 113
    const-string v3, "io.github.libxposed.service.XposedProvider"

    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v3, v5, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    .line 115
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProvider;

    .line 116
    const-string v4, "SendBinder"

    invoke-virtual {v3, v4, v6, v0}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 118
    const-string v0, "Original APK connected to ROM service"

    invoke-static {v1, v0, v6}, Landroid/security/ntmanager/NexAlloyRuntime;->status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void

    .line 117
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Original APK rejected the service binder"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "No module service binder"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_b6
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "ntnexalloy-manager-2"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_d6

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_ce

    goto :goto_d6

    :cond_ce
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot create engine cache"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_d6
    :goto_d6
    const-string v7, "ntmanager/NTXposedEngine.dex"

    const-string v8, "NTXposedEngine.dex"

    invoke-static {v3, v7, v8}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 124
    invoke-static {}, Landroid/security/ntmanager/NexAlloyRuntime;->is64Bit()Z

    move-result v8

    if-eqz v8, :cond_e7

    const-string v8, "arm64-v8a"

    goto :goto_e9

    :cond_e7
    const-string v8, "armeabi-v7a"

    .line 125
    :goto_e9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ntmanager/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/libc++_shared.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "libc++_shared.so"

    invoke-static {v3, v9, v10}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 126
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ntmanager/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/liblsplant.so"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "liblsplant.so"

    invoke-static {v3, v10, v11}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 127
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ntmanager/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/libaliuhook.so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "libaliuhook.so"

    invoke-static {v3, v11, v12}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 128
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {v7, v12, v13}, Landroid/security/ntmanager/NexAlloyRuntime;->newDelegateLastClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v7

    .line 129
    const-string v12, "ntmanager/NTModernBridge.dex"

    const-string v13, "NTModernBridge.dex"

    invoke-static {v3, v12, v13}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 130
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v7}, Landroid/security/ntmanager/NexAlloyRuntime;->newDelegateLastClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 131
    const-string v12, "com.nothingsvn.nexalloy.BridgeContract"

    invoke-static {v12, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 132
    const-string v13, "inspectArchive"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    aput-object v16, v15, v4

    const-class v16, Landroid/os/Bundle;

    aput-object v16, v15, v5

    invoke-virtual {v12, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 133
    const-string v12, "com.nothingsvn.nexalloy.ModuleHost"

    invoke-static {v12, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 134
    invoke-static {v1, v0, v8}, Landroid/security/ntmanager/NexAlloyRuntime;->extractModuleNative(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 135
    invoke-static {v7, v9, v10, v11}, Landroid/security/ntmanager/NexAlloyRuntime;->loadNative(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 136
    const-string v7, "attach"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v4

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v9, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v9, v14

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v3, "versionName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original APK ready version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/security/ntmanager/NexAlloyRuntime;->status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d4
    .catchall {:try_start_66 .. :try_end_1d4} :catchall_1d5

    .line 141
    goto :goto_1f0

    .line 138
    :catchall_1d5
    move-exception v0

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original APK attach failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/security/ntmanager/NexAlloyRuntime;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/security/ntmanager/NexAlloyRuntime;->status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_1f0
    return-void

    .line 104
    :catchall_1f1
    move-exception v0

    :try_start_1f2
    monitor-exit v4
    :try_end_1f3
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_1f1

    throw v0

    .line 95
    :catchall_1f4
    move-exception v0

    .line 96
    if-eqz v3, :cond_200

    const-string v2, "ROM module service unavailable"

    invoke-static {v0}, Landroid/security/ntmanager/NexAlloyRuntime;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/security/ntmanager/NexAlloyRuntime;->status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_200
    return-void

    .line 90
    :cond_201
    :goto_201
    return-void
.end method

.method private static invokeSingleArg(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method private static is64Bit()Z
    .registers 5

    .line 208
    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 209
    const-string v1, "getRuntime"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    const-string v3, "is64Bit"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return v0

    .line 211
    :catchall_2b
    move-exception v0

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method private static loadNative(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    const-string v0, "io.github.nexalloy.NTNativeLoader"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 183
    const-string v1, "load"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 188
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 184
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method private static newDelegateLastClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    const-string v0, "dalvik.system.DelegateLastClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/ClassLoader;

    aput-object v3, v1, v2

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    .line 193
    return-object p0
.end method

.method private static newInstanceUsingConstructor(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_40

    aget-object v4, v0, v3

    .line 301
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 302
    array-length v6, v5

    const/4 v7, 0x1

    if-nez v6, :cond_1d

    .line 303
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 304
    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 306
    :cond_1d
    array-length v6, v5

    if-ne v6, v7, :cond_3d

    .line 307
    aget-object p0, v5, v2

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 308
    invoke-virtual {p0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 309
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 310
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 311
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 300
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 314
    :cond_40
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " usable constructor"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static providerCall(Landroid/content/ContentProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    .line 58
    nop

    .line 59
    const-string v0, "settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_fa

    if-eqz p2, :cond_fa

    const-string p1, "nt.nexalloy."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_fa

    .line 60
    :cond_16
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 61
    if-eqz p0, :cond_f9

    const-string p1, "com.android.providers.settings"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 62
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const v1, 0x186a0

    rem-int/2addr p1, v1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_36

    goto/16 :goto_f9

    .line 65
    :cond_36
    :try_start_36
    const-class p1, Landroid/security/ntmanager/NexAlloyRuntime;

    monitor-enter p1
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_b1

    .line 66
    :try_start_39
    sget-object v1, Landroid/security/ntmanager/NexAlloyRuntime;->settingsService:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_7a

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ntnexalloy-manager-2"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_5e

    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot create ROM service cache"

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_5e
    :goto_5e
    const-string v3, "ntmanager/NTModernBridge.dex"

    const-string v4, "NTModernBridge.dex"

    invoke-static {v1, v3, v4}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v0, v3}, Landroid/security/ntmanager/NexAlloyRuntime;->newDelegateLastClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 71
    const-string v3, "com.nothingsvn.nexalloy.NexAlloyService"

    invoke-static {v3, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/security/ntmanager/NexAlloyRuntime;->settingsService:Ljava/lang/Class;

    .line 73
    :cond_7a
    sget-object v1, Landroid/security/ntmanager/NexAlloyRuntime;->settingsService:Ljava/lang/Class;

    .line 74
    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_39 .. :try_end_7d} :catchall_ae

    .line 75
    :try_start_7d
    const-string p1, "call"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-class v2, Landroid/os/Bundle;

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v1, "nt.nexalloy."

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_ad
    .catchall {:try_start_7d .. :try_end_ad} :catchall_b1

    .line 75
    return-object p0

    .line 74
    :catchall_ae
    move-exception p0

    :try_start_af
    monitor-exit p1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    .line 77
    :catchall_b1
    move-exception p0

    .line 78
    invoke-static {p0}, Landroid/security/ntmanager/NexAlloyRuntime;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 79
    const-string p1, "NTNexAlloy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ROM service operation failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_f6

    .line 81
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_d9

    check-cast p0, Ljava/lang/IllegalArgumentException;

    throw p0

    .line 82
    :cond_d9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "NexAlloy ROM service failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 80
    :cond_f6
    check-cast p0, Ljava/lang/SecurityException;

    throw p0

    .line 62
    :cond_f9
    :goto_f9
    return-object v0

    .line 59
    :cond_fa
    :goto_fa
    return-object v0
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method private static status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[manager-2] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    const-string v0, "NTNexAlloy"

    if-nez p2, :cond_1b

    .line 340
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 342
    :cond_1b
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :goto_1e
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTNexAlloy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    if-eqz p2, :cond_3d

    .line 346
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 349
    :cond_3d
    nop

    .line 351
    const/4 v0, 0x0

    :try_start_3f
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 352
    if-nez p0, :cond_47

    .line 368
    nop

    .line 353
    return-void

    .line 355
    :cond_47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    .line 356
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 358
    :cond_50
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "ntnexalloy.log"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v3, v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string p0, "UTF-8"

    invoke-direct {v2, v3, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_69
    .catchall {:try_start_3f .. :try_end_69} :catchall_99

    .line 361
    :try_start_69
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    if-eqz p2, :cond_91

    .line 363
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_91
    .catchall {:try_start_69 .. :try_end_91} :catchall_96

    .line 368
    :cond_91
    nop

    .line 369
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_9f

    .line 365
    :catchall_96
    move-exception p0

    move-object v0, v1

    goto :goto_9a

    :catchall_99
    move-exception p0

    .line 368
    :goto_9a
    if-eqz v0, :cond_9f

    .line 369
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 372
    :cond_9f
    :goto_9f
    return-void
.end method

.method private static unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 331
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_12

    .line 332
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 334
    :cond_12
    return-object p0
.end method
