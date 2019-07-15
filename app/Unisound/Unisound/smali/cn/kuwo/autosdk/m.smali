.class public final Lcn/kuwo/autosdk/m;
.super Ljava/lang/Object;


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x40

    const/4 v1, 0x0

    new-array v0, v5, [C

    sput-object v0, Lcn/kuwo/autosdk/m;->a:[C

    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    sget-object v0, Lcn/kuwo/autosdk/m;->a:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    sget-object v0, Lcn/kuwo/autosdk/m;->a:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcn/kuwo/autosdk/m;->b:[B

    move v0, v1

    :goto_3
    sget-object v2, Lcn/kuwo/autosdk/m;->b:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    :goto_4
    if-lt v1, v5, :cond_4

    return-void

    :cond_0
    sget-object v4, Lcn/kuwo/autosdk/m;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lcn/kuwo/autosdk/m;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    :cond_2
    sget-object v4, Lcn/kuwo/autosdk/m;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    :cond_3
    sget-object v2, Lcn/kuwo/autosdk/m;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    sget-object v0, Lcn/kuwo/autosdk/m;->b:[B

    sget-object v2, Lcn/kuwo/autosdk/m;->a:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static a([BI)[C
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/kuwo/autosdk/m;->a([BILjava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static a([BILjava/lang/String;)[C
    .locals 12

    const/16 v4, 0x3d

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move v0, v1

    :cond_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    :cond_1
    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v7, v0, [C

    move v5, v1

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_3

    return-object v7

    :cond_2
    move v2, v1

    :goto_1
    array-length v3, v5

    if-ge v2, v3, :cond_0

    array-length v3, p0

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget-byte v6, p0, v0

    aget-byte v7, v5, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p0, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v8, v2, 0xff

    if-ge v0, p1, :cond_4

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    move v0, v2

    :goto_2
    if-ge v0, p1, :cond_5

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    :goto_3
    ushr-int/lit8 v9, v8, 0x2

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v10, v3, 0x4

    or-int/2addr v8, v10

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v10, v0, 0x6

    or-int/2addr v3, v10

    and-int/lit8 v10, v0, 0x3f

    add-int/lit8 v0, v5, 0x1

    sget-object v11, Lcn/kuwo/autosdk/m;->a:[C

    aget-char v9, v11, v9

    aput-char v9, v7, v5

    add-int/lit8 v5, v0, 0x1

    sget-object v9, Lcn/kuwo/autosdk/m;->a:[C

    aget-char v8, v9, v8

    aput-char v8, v7, v0

    if-ge v5, v6, :cond_6

    sget-object v0, Lcn/kuwo/autosdk/m;->a:[C

    aget-char v0, v0, v3

    :goto_4
    aput-char v0, v7, v5

    add-int/lit8 v3, v5, 0x1

    if-ge v3, v6, :cond_7

    sget-object v0, Lcn/kuwo/autosdk/m;->a:[C

    aget-char v0, v0, v10

    :goto_5
    aput-char v0, v7, v3

    add-int/lit8 v0, v3, 0x1

    move v5, v0

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    move v2, v0

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_4

    :cond_7
    move v0, v4

    goto :goto_5
.end method
