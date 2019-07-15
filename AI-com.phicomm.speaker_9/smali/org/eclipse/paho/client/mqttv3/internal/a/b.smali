.class public Lorg/eclipse/paho/client/mqttv3/internal/a/b;
.super Ljava/lang/Object;
.source "SimpleBase64Encoder.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a:[C

    return-void
.end method

.method private static final a([BII)J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_0
    if-gtz p2, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v5, p1, 0x1

    .line 108
    aget-byte p1, p0, p1

    const/16 v6, 0x2f

    if-ne p1, v6, :cond_1

    const-wide/16 v6, 0x1

    goto :goto_1

    :cond_1
    move-wide v6, v0

    :goto_1
    const/16 v8, 0x30

    if-lt p1, v8, :cond_2

    const/16 v9, 0x39

    if-gt p1, v9, :cond_2

    const/4 v6, 0x2

    add-int/2addr v6, p1

    sub-int/2addr v6, v8

    int-to-long v6, v6

    :cond_2
    const/16 v8, 0x41

    if-lt p1, v8, :cond_3

    const/16 v9, 0x5a

    if-gt p1, v9, :cond_3

    const/16 v6, 0xc

    add-int/2addr v6, p1

    sub-int/2addr v6, v8

    int-to-long v6, v6

    :cond_3
    const/16 v8, 0x61

    if-lt p1, v8, :cond_4

    const/16 v9, 0x7a

    if-gt p1, v9, :cond_4

    const/16 v6, 0x26

    add-int/2addr v6, p1

    sub-int/2addr v6, v8

    int-to-long v6, v6

    :cond_4
    shl-long/2addr v6, v4

    add-long v8, v2, v6

    add-int/lit8 v4, v4, 0x6

    move p1, v5

    move-wide v2, v8

    goto :goto_0
.end method

.method private static final a(JI)Ljava/lang/String;
    .locals 6

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    if-gtz p2, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 92
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a:[C

    const-wide/16 v2, 0x3f

    and-long v4, p0, v2

    long-to-int v2, v4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x6

    shr-long/2addr p0, v1

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 32
    array-length v3, p0

    .line 33
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, 0x2

    div-int/2addr v5, v1

    mul-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    if-ge v3, v1, :cond_2

    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    .line 45
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v5, v6, v1}, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    .line 49
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-long v1, p0

    invoke-static {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_2
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v2, 0x1

    .line 38
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-long v5, v5

    .line 37
    invoke-static {v5, v6, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, -0x3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 14

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 56
    array-length v2, p0

    mul-int/lit8 v3, v2, 0x3

    .line 57
    div-int/2addr v3, v1

    new-array v3, v3, [B

    move v4, v0

    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x2

    const-wide/16 v7, 0xff

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 73
    invoke-static {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a([BII)J

    move-result-wide v9

    const/4 v1, 0x1

    :goto_1
    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    add-int v11, v4, v1

    and-long v12, v9, v7

    long-to-int v12, v12

    int-to-byte v12, v12

    .line 75
    aput-byte v12, v3, v11

    shr-long/2addr v9, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ne v2, v6, :cond_2

    .line 80
    invoke-static {p0, v0, v6}, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a([BII)J

    move-result-wide v0

    and-long v5, v0, v7

    long-to-int p0, v5

    int-to-byte p0, p0

    .line 81
    aput-byte p0, v3, v4

    :cond_2
    return-object v3

    .line 62
    :cond_3
    invoke-static {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/a/b;->a([BII)J

    move-result-wide v9

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v0, v0, 0x4

    :goto_3
    if-gez v6, :cond_4

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_4
    add-int v11, v4, v6

    and-long v12, v9, v7

    long-to-int v12, v12

    int-to-byte v12, v12

    .line 66
    aput-byte v12, v3, v11

    shr-long/2addr v9, v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_3
.end method
