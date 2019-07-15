.class public Lcom/phicomm/speaker/f/a/k;
.super Ljava/lang/Object;
.source "IoUtil.java"


# direct methods
.method public static a([BLjava/io/OutputStream;Lcom/phicomm/speaker/b/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    invoke-interface {p2}, Lcom/phicomm/speaker/b/i;->c()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p2}, Lcom/phicomm/speaker/b/i;->c()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1000

    :goto_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    move-wide v4, v0

    move v0, v3

    .line 95
    :cond_1
    :goto_1
    invoke-interface {p2}, Lcom/phicomm/speaker/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_2

    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 96
    array-length v1, v2

    array-length v6, p0

    sub-int/2addr v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 97
    invoke-virtual {p1, v2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v4

    .line 100
    invoke-interface {p2}, Lcom/phicomm/speaker/b/i;->b()I

    move-result v1

    int-to-long v10, v1

    cmp-long v1, v8, v10

    if-ltz v1, :cond_1

    int-to-long v4, v0

    .line 101
    invoke-interface {p2, v4, v5}, Lcom/phicomm/speaker/b/i;->a(J)V

    move-wide v4, v6

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 106
    array-length p0, p0

    if-ge v0, p0, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-interface {p2, v3}, Lcom/phicomm/speaker/b/i;->a(Z)V

    return-void
.end method
