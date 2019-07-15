.class public Lcn/kuwo/autosdk/o;
.super Ljava/lang/Object;


# direct methods
.method public static a([BZ)I
    .locals 2

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcn/kuwo/autosdk/o;->a([BIZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static a([BIZ)J
    .locals 9

    const/16 v7, 0x8

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte array is null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-lt v2, v6, :cond_3

    :cond_2
    return-wide v0

    :cond_3
    shl-long/2addr v0, v7

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    or-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v6, -0x1

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_1
    if-ltz v2, :cond_2

    shl-long/2addr v0, v7

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    or-long/2addr v4, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_1
.end method
