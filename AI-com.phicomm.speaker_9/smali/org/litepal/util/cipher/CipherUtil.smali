.class public Lorg/litepal/util/cipher/CipherUtil;
.super Ljava/lang/Object;
.source "CipherUtil.java"


# static fields
.field private static final DIGITS_UPPER:[C

.field public static aesKey:Ljava/lang/String; = "LitePalKey"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 42
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/litepal/util/cipher/CipherUtil;->DIGITS_UPPER:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 75
    :cond_0
    :try_start_0
    sget-object v0, Lorg/litepal/util/cipher/CipherUtil;->aesKey:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/litepal/util/cipher/AESCrypt;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 77
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aesEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 57
    :cond_0
    :try_start_0
    sget-object v0, Lorg/litepal/util/cipher/CipherUtil;->aesKey:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/litepal/util/cipher/AESCrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static md5Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 90
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 91
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 92
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/cipher/CipherUtil;->toHex([B)[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 94
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static toHex([B)[C
    .locals 8

    .line 100
    sget-object v0, Lorg/litepal/util/cipher/CipherUtil;->DIGITS_UPPER:[C

    const/4 v1, 0x0

    .line 101
    array-length v2, p0

    shl-int/lit8 v3, v2, 0x1

    .line 102
    new-array v3, v3, [C

    move v4, v1

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xf0

    .line 105
    aget-byte v7, p0, v1

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    aput-char v6, v3, v4

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0xf

    .line 106
    aget-byte v7, p0, v1

    and-int/2addr v6, v7

    aget-char v6, v0, v6

    aput-char v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
