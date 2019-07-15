.class public Lcom/xiaomi/channel/commonutils/g/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[C

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/g/a;->a:Ljava/lang/String;

    const/16 v0, 0x40

    new-array v1, v0, [C

    sput-object v1, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    const/4 v1, 0x0

    const/16 v2, 0x41

    move v3, v1

    :goto_0
    const/16 v4, 0x5a

    if-gt v2, v4, :cond_0

    sget-object v4, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_0

    :cond_0
    const/16 v2, 0x61

    :goto_1
    const/16 v4, 0x7a

    if-gt v2, v4, :cond_1

    sget-object v4, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_1

    :cond_1
    const/16 v2, 0x30

    :goto_2
    const/16 v4, 0x39

    if-gt v2, v4, :cond_2

    sget-object v4, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2b

    aput-char v5, v2, v3

    sget-object v2, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    const/16 v3, 0x2f

    aput-char v3, v2, v4

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    move v2, v1

    :goto_3
    sget-object v3, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v1, v0, :cond_4

    sget-object v2, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    sget-object v3, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/g/a;->a([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([C)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/channel/commonutils/g/a;->a([CII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([CII)[B
    .locals 9

    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_1
    if-ge p1, p2, :cond_a

    add-int/lit8 v3, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v4, v3, 0x1

    aget-char v3, p0, v3

    const/16 v5, 0x41

    if-ge v4, p2, :cond_2

    add-int/lit8 v6, v4, 0x1

    aget-char v4, p0, v4

    goto :goto_2

    :cond_2
    move v6, v4

    move v4, v5

    :goto_2
    if-ge v6, p2, :cond_3

    add-int/lit8 v5, v6, 0x1

    aget-char v6, p0, v6

    move v8, v6

    move v6, v5

    move v5, v8

    :cond_3
    const/16 v7, 0x7f

    if-gt p1, v7, :cond_9

    if-gt v3, v7, :cond_9

    if-gt v4, v7, :cond_9

    if-le v5, v7, :cond_4

    goto :goto_6

    :cond_4
    sget-object v7, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    aget-byte p1, v7, p1

    sget-object v7, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    aget-byte v3, v7, v3

    sget-object v7, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    aget-byte v4, v7, v4

    sget-object v7, Lcom/xiaomi/channel/commonutils/g/a;->c:[B

    aget-byte v5, v7, v5

    if-ltz p1, :cond_8

    if-ltz v3, :cond_8

    if-ltz v4, :cond_8

    if-gez v5, :cond_5

    goto :goto_5

    :cond_5
    shl-int/lit8 p1, p1, 0x2

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr p1, v7

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x2

    or-int/2addr v3, v7

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    if-ge v5, v0, :cond_6

    add-int/lit8 p1, v5, 0x1

    int-to-byte v2, v3

    aput-byte v2, v1, v5

    goto :goto_3

    :cond_6
    move p1, v5

    :goto_3
    if-ge p1, v0, :cond_7

    add-int/lit8 v2, p1, 0x1

    int-to-byte v3, v4

    aput-byte v3, v1, p1

    goto :goto_4

    :cond_7
    move v2, p1

    :goto_4
    move p1, v6

    goto :goto_1

    :cond_8
    :goto_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal character in Base64 encoded data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal character in Base64 encoded data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return-object v1
.end method

.method public static a([B)[C
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/channel/commonutils/g/a;->a([BII)[C

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)[C
    .locals 10

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    add-int/2addr p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge p1, p2, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    if-ge v4, p2, :cond_0

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_1

    :cond_0
    move v5, v4

    move v4, v2

    :goto_1
    if-ge v5, p2, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    goto :goto_2

    :cond_1
    move v6, v5

    move v5, v2

    :goto_2
    ushr-int/lit8 v7, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    ushr-int/lit8 v8, v4, 0x4

    or-int/2addr p1, v8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    or-int/2addr v4, v8

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v8, v3, 0x1

    sget-object v9, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    aget-char v7, v9, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v8, 0x1

    sget-object v7, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    aget-char p1, v7, p1

    aput-char p1, v1, v8

    const/16 p1, 0x3d

    if-ge v3, v0, :cond_2

    sget-object v7, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    aget-char v4, v7, v4

    goto :goto_3

    :cond_2
    move v4, p1

    :goto_3
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_3

    sget-object p1, Lcom/xiaomi/channel/commonutils/g/a;->b:[C

    aget-char p1, p1, v5

    :cond_3
    aput-char p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    move p1, v6

    goto :goto_0

    :cond_4
    return-object v1
.end method
