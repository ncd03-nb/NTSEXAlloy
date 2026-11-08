.class public final Landroid/security/ntmanager/NexAlloyRuntime;
.super Ljava/lang/Object;
.source "NexAlloyRuntime.java"


# static fields
.field private static final APP_SETTINGS_PREFIX:Ljava/lang/String; = "nt_nexalloy_app_"

.field private static final BRIDGE_DIGEST:Ljava/lang/String; = "6f54b399a7aef98d2cc3cbb4194b91ffb65432099d0821e185c41b9ad8230852"

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

    .line 319
    :try_start_0
    const-string v0, "sun.misc.Unsafe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 320
    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 321
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 322
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 323
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

    .line 324
    :catchall_2b
    move-exception v0

    .line 325
    invoke-static {p0}, Landroid/security/ntmanager/NexAlloyRuntime;->newInstanceUsingConstructor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static currentProcessName()Ljava/lang/String;
    .registers 5

    .line 230
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

    .line 231
    :catchall_15
    move-exception v1

    .line 232
    return-object v0
.end method

.method private static digest(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 290
    :try_start_5
    invoke-static {v0}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 291
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 290
    return-object p0

    .line 289
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

    .line 295
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 296
    const v1, 0x8000

    new-array v1, v1, [B

    .line 297
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_17

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_b

    .line 298
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
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

    .line 300
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static enableModuleReflection()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getRuntime"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "setHiddenApiExemptions"

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "L"

    aput-object v4, v3, v1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "NTNexAlloy"

    const-string v1, "Module reflection enabled in selected app process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method private static expectedDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 305
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

    .line 313
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

    .line 312
    :pswitch_6b
    const-string p0, "fc545ee9c7c1b367e936973139da3db2b290e6e767fef332ca7bb0619982ef05"

    return-object p0

    .line 311
    :pswitch_6e
    const-string p0, "fc965c4d2de9137e49796aa4278b0281df54694e9b0f12c82b1899909b2508cd"

    return-object p0

    .line 310
    :pswitch_71
    const-string p0, "38331a1efcb446eb1a0db440a8db8f41fa4fb698d15c061ab8c491426531c2c0"

    return-object p0

    .line 309
    :pswitch_74
    const-string p0, "61c62a44b2b05154ba7d1545c93e1a66bf875c1f7f82fbdba87b8d033d09176c"

    return-object p0

    .line 308
    :pswitch_77
    const-string p0, "53eff56530dbd91cdfdee42d5c7b91e6479ef088b7a5906d6abf3e61e1055a7a"

    return-object p0

    .line 307
    :pswitch_7a
    const-string p0, "b5d97c38a728afe28d341cda3369f512d35eaf9c680c1b0563cd6a63e395230f"

    return-object p0

    .line 306
    :pswitch_7d
    const-string p0, "1db1bc6d55baca1463f89de40d3728666ecaf389b372f922a42914bef8df0870"

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

    .line 248
    const-string v0, "ntmanager/NTModernBridge.dex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "6f54b399a7aef98d2cc3cbb4194b91ffb65432099d0821e185c41b9ad8230852"

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/security/ntmanager/NexAlloyRuntime;->expectedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v1}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 251
    return-object v1

    .line 254
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

    .line 255
    new-instance p0, Ljava/util/zip/ZipFile;

    const-string v3, "/system/framework/framework.jar"

    invoke-direct {p0, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 256
    :try_start_44
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 257
    if-eqz v3, :cond_e5

    .line 260
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_fe

    .line 261
    :try_start_4e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_d9

    .line 262
    const v5, 0x8000

    :try_start_56
    new-array v5, v5, [B

    .line 264
    :goto_58
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_64

    .line 265
    invoke-virtual {v4, v5, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_58

    .line 267
    :cond_64
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_cf

    .line 268
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_d9

    if-eqz v3, :cond_73

    :try_start_70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_fe

    .line 269
    :cond_73
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 271
    invoke-static {v2}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 276
    const/4 p0, 0x1

    invoke-virtual {v2, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 277
    invoke-virtual {v2, p0, p0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 278
    invoke-virtual {v2, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 279
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 282
    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 283
    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 284
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 285
    return-object v1

    .line 280
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

    .line 272
    :cond_b3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 273
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

    .line 260
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

    .line 258
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

    .line 255
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

    .line 175
    const-string v0, "/"

    new-instance v1, Ljava/io/File;

    const-string v2, "apk"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {v1}, Landroid/security/ntmanager/NexAlloyRuntime;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 177
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

    .line 178
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

    .line 179
    :cond_42
    :goto_42
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 180
    :try_start_47
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 181
    :cond_4b
    :goto_4b
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 182
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 183
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

    .line 184
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

    .line 185
    :cond_85
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 186
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

    .line 187
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
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

    .line 191
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

    .line 192
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

    .line 193
    :cond_e0
    const-string v3, "native-"

    const-string v6, ".tmp"

    invoke-static {v3, v6, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_e8
    .catchall {:try_start_cb .. :try_end_e8} :catchall_17e

    .line 195
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

    .line 196
    const/4 v8, 0x0

    :try_start_f2
    invoke-virtual {v3, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 197
    const v9, 0x8000

    new-array v9, v9, [B

    .line 198
    :goto_fa
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_104

    invoke-virtual {v7, v9, v8, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_fa

    .line 199
    :cond_104
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10b
    .catchall {:try_start_f2 .. :try_end_10b} :catchall_143

    .line 200
    :try_start_10b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_14d

    if-eqz v6, :cond_113

    :try_start_110
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 201
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

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v4, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_136
    .catchall {:try_start_110 .. :try_end_136} :catchall_159

    .line 204
    :try_start_136
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_17e

    .line 205
    goto/16 :goto_4b

    .line 202
    :cond_13b
    :try_start_13b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot publish module library"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_143
    .catchall {:try_start_13b .. :try_end_143} :catchall_159

    .line 195
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

    .line 204
    :catchall_159
    move-exception p1

    :try_start_15a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw p1
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_17e

    .line 191
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

    .line 189
    :cond_16a
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Invalid module library size"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_172
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Invalid module library name"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17a
    .catchall {:try_start_166 .. :try_end_17a} :catchall_17e

    .line 206
    :cond_17a
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 207
    return-object v2

    .line 179
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

    .line 103
    move-object/from16 v1, p0

    .line 104
    if-nez v1, :cond_5

    return-void

    .line 105
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_204

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v3, 0x186a0

    rem-int/2addr v0, v3

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1b

    goto/16 :goto_204

    .line 107
    :cond_1b
    const-string v0, "io.github.chsbuffer.revancedxposed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 110
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
    .catchall {:try_start_21 .. :try_end_32} :catchall_1f7

    .line 114
    nop

    .line 115
    if-nez v0, :cond_36

    return-void

    .line 116
    :cond_36
    const-string v4, "enabledScope"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 117
    if-nez v3, :cond_47

    if-eqz v4, :cond_46

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    :cond_46
    return-void

    .line 118
    :cond_47
    invoke-static {}, Landroid/security/ntmanager/NexAlloyRuntime;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    .line 119
    if-eqz v4, :cond_54

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    return-void

    .line 120
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
    .catchall {:try_start_57 .. :try_end_62} :catchall_1f4

    .line 122
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_b6

    .line 125
    :try_start_66
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "nt.nexalloy.service"

    invoke-virtual {v0, v3, v7, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_ae

    const-string v3, "binder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 129
    const-string v3, "io.github.libxposed.service.XposedProvider"

    .line 130
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v3, v5, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    .line 131
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProvider;

    .line 132
    const-string v4, "SendBinder"

    invoke-virtual {v3, v4, v6, v0}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 134
    const-string v0, "Original APK connected to ROM service"

    invoke-static {v1, v0, v6}, Landroid/security/ntmanager/NexAlloyRuntime;->status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void

    .line 133
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Original APK rejected the service binder"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "No module service binder"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_b6
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "ntnexalloy-manager-2"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
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

    .line 139
    :cond_d6
    :goto_d6
    const-string v7, "ntmanager/NTXposedEngine.dex"

    const-string v8, "NTXposedEngine.dex"

    invoke-static {v3, v7, v8}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 140
    invoke-static {}, Landroid/security/ntmanager/NexAlloyRuntime;->is64Bit()Z

    move-result v8

    if-eqz v8, :cond_e7

    const-string v8, "arm64-v8a"

    goto :goto_e9

    :cond_e7
    const-string v8, "armeabi-v7a"

    .line 141
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

    .line 142
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

    .line 143
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

    .line 144
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {v7, v12, v13}, Landroid/security/ntmanager/NexAlloyRuntime;->newDelegateLastClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v7

    .line 145
    const-string v12, "ntmanager/NTModernBridge.dex"

    const-string v13, "NTModernBridge.dex"

    invoke-static {v3, v12, v13}, Landroid/security/ntmanager/NexAlloyRuntime;->extract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 146
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v7}, Landroid/security/ntmanager/NexAlloyRuntime;->newDelegateLastClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 147
    const-string v12, "com.nothingsvn.nexalloy.BridgeContract"

    invoke-static {v12, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 148
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

    .line 154
    invoke-static {}, Landroid/security/ntmanager/NexAlloyRuntime;->enableModuleReflection()V

    .line 155
    const-string v12, "com.nothingsvn.nexalloy.ModuleHost"

    invoke-static {v12, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 156
    invoke-static {v1, v0, v8}, Landroid/security/ntmanager/NexAlloyRuntime;->extractModuleNative(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 157
    invoke-static {v7, v9, v10, v11}, Landroid/security/ntmanager/NexAlloyRuntime;->loadNative(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 158
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

    .line 159
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
    :try_end_1d7
    .catchall {:try_start_66 .. :try_end_1d7} :catchall_1d8

    .line 163
    goto :goto_1f3

    .line 160
    :catchall_1d8
    move-exception v0

    .line 161
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

    .line 164
    :goto_1f3
    return-void

    .line 120
    :catchall_1f4
    move-exception v0

    :try_start_1f5
    monitor-exit v4
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f4

    throw v0

    .line 111
    :catchall_1f7
    move-exception v0

    .line 112
    if-eqz v3, :cond_203

    const-string v2, "ROM module service unavailable"

    invoke-static {v0}, Landroid/security/ntmanager/NexAlloyRuntime;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/security/ntmanager/NexAlloyRuntime;->status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :cond_203
    return-void

    .line 106
    :cond_204
    :goto_204
    return-void
.end method

.method public static initBeforeApplication(Landroid/content/Context;)V
    .registers 6

    .line 88
    if-eqz p0, :cond_63

    :try_start_2
    const-string v0, "io.github.chsbuffer.revancedxposed"

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v1, 0x186a0

    rem-int/2addr v0, v1

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1d

    goto :goto_63

    .line 93
    :cond_1d
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    const-string v1, "ro.mi.os.version.name"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    const-string v3, "ro.miui.ui.version.name"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    :cond_56
    invoke-static {p0}, Landroid/security/ntmanager/NexAlloyRuntime;->init(Landroid/content/Context;)V
    :try_end_59
    .catchall {:try_start_2 .. :try_end_59} :catchall_5a

    .line 99
    :cond_59
    goto :goto_62

    .line 97
    :catchall_5a
    move-exception p0

    .line 98
    const-string v0, "NTNexAlloy"

    const-string v1, "Early module attach failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :goto_62
    return-void

    .line 90
    :cond_63
    :goto_63
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

    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-void
.end method

.method private static is64Bit()Z
    .registers 5

    .line 238
    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 239
    const-string v1, "getRuntime"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 240
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

    .line 241
    :catchall_2b
    move-exception v0

    .line 242
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

    .line 212
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

    .line 213
    const-string v1, "load"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 214
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private static newDelegateLastClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
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

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    .line 223
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

    .line 330
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_40

    aget-object v4, v0, v3

    .line 331
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 332
    array-length v6, v5

    const/4 v7, 0x1

    if-nez v6, :cond_1d

    .line 333
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 334
    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 336
    :cond_1d
    array-length v6, v5

    if-ne v6, v7, :cond_3d

    .line 337
    aget-object p0, v5, v2

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 338
    invoke-virtual {p0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 339
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 340
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 341
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 330
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 344
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

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method private static status(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[manager-2] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 369
    const-string v0, "NTNexAlloy"

    if-nez p2, :cond_1b

    .line 370
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 372
    :cond_1b
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
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

    .line 375
    if-eqz p2, :cond_3d

    .line 376
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 379
    :cond_3d
    nop

    .line 381
    const/4 v0, 0x0

    :try_start_3f
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 382
    if-nez p0, :cond_47

    .line 398
    nop

    .line 383
    return-void

    .line 385
    :cond_47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    .line 386
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 388
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

    .line 391
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

    .line 392
    if-eqz p2, :cond_91

    .line 393
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_91
    .catchall {:try_start_69 .. :try_end_91} :catchall_96

    .line 398
    :cond_91
    nop

    .line 399
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_9f

    .line 395
    :catchall_96
    move-exception p0

    move-object v0, v1

    goto :goto_9a

    :catchall_99
    move-exception p0

    .line 398
    :goto_9a
    if-eqz v0, :cond_9f

    .line 399
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 402
    :cond_9f
    :goto_9f
    return-void
.end method

.method private static unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 361
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_12

    .line 362
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 364
    :cond_12
    return-object p0
.end method
