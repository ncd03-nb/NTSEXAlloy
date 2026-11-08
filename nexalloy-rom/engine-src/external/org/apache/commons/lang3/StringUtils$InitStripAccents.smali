.class Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitStripAccents"
.end annotation


# static fields
.field private static final java6Exception:Ljava/lang/Throwable;

.field private static final java6NormalizeMethod:Ljava/lang/reflect/Method;

.field private static final java6NormalizerFormNFD:Ljava/lang/Object;

.field private static final java6Pattern:Ljava/util/regex/Pattern;

.field private static final sunDecomposeMethod:Ljava/lang/reflect/Method;

.field private static final sunException:Ljava/lang/Throwable;

.field private static final sunPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 711
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    .line 716
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    sput-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "_java6NormalizerFormNFD":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 722
    .local v1, "_java6NormalizeMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 723
    .local v2, "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 724
    .local v3, "_java6Exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 728
    .local v4, "_sunException":Ljava/lang/Throwable;
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string v9, "java.text.Normalizer$Form"

    .line 729
    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 730
    .local v8, "normalizerFormClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "NFD"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .line 731
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "java.text.Normalizer"

    .line 732
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 733
    .local v9, "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "normalize"

    new-array v11, v5, [Ljava/lang/Class;

    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v11, v7

    aput-object v8, v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4a} :catch_4c

    move-object v1, v5

    .line 747
    .end local v8    # "normalizerFormClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_75

    .line 735
    :catch_4c
    move-exception v8

    .line 737
    .local v8, "e1":Ljava/lang/Exception;
    move-object v3, v8

    .line 740
    :try_start_4e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "sun.text.Normalizer"

    .line 741
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 742
    .restart local v9    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "decompose"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v7

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v11, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_71} :catch_73

    move-object v2, v5

    .line 746
    .end local v9    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_75

    .line 744
    :catch_73
    move-exception v5

    .line 745
    .local v5, "e2":Ljava/lang/Exception;
    move-object v4, v5

    .line 750
    .end local v5    # "e2":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/lang/Exception;
    :goto_75
    sput-object v3, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    .line 751
    sput-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    .line 752
    sput-object v1, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    .line 753
    sput-object v4, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    .line 754
    sput-object v2, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    .line 755
    .end local v0    # "_java6NormalizerFormNFD":Ljava/lang/Object;
    .end local v1    # "_java6NormalizeMethod":Ljava/lang/reflect/Method;
    .end local v2    # "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    .end local v3    # "_java6Exception":Ljava/lang/Throwable;
    .end local v4    # "_sunException":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    .line 707
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    .line 707
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Throwable;
    .registers 1

    .line 707
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Throwable;
    .registers 1

    .line 707
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .line 707
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .registers 1

    .line 707
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .registers 1

    .line 707
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
