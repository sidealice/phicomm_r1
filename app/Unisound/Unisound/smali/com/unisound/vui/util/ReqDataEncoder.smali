.class public Lcom/unisound/vui/util/ReqDataEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final TOTAL_LEN_FIELD_LEN:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;[B)[B
    .locals 10
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "targetData"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v3, v0

    array-length v4, p1

    add-int/lit8 v0, v3, 0x5

    add-int/2addr v0, v4

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v0}, Lcom/unisound/vui/util/ReqDataEncoder;->intToByteArray(I)[B

    move-result-object v2

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    invoke-static {v2, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v3, v0, v6

    const/4 v2, 0x5

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v2, v5, v1

    add-int/lit8 v6, v3, 0x5

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_0

    rem-int v7, v1, v3

    aget-byte v7, v5, v7

    add-int v8, v6, v1

    aget-byte v9, p1, v1

    xor-int/2addr v2, v9

    xor-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    add-int v2, v6, v1

    aget-byte v2, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
