.class public Lcom/bumptech/glide/h/f;
.super Ljava/io/FilterInputStream;
.source "MarkEnforcingInputStream.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 p1, -0x80000000

    .line 14
    iput p1, p0, Lcom/bumptech/glide/h/f;->a:I

    return-void
.end method

.method private a(J)J
    .locals 3

    .line 73
    iget v0, p0, Lcom/bumptech/glide/h/f;->a:I

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 75
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/h/f;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bumptech/glide/h/f;->a:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 76
    iget p1, p0, Lcom/bumptech/glide/h/f;->a:I

    int-to-long p1, p1

    return-wide p1

    :cond_1
    return-wide p1
.end method

.method private b(J)V
    .locals 4

    .line 83
    iget v0, p0, Lcom/bumptech/glide/h/f;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 84
    iget v0, p0, Lcom/bumptech/glide/h/f;->a:I

    int-to-long v0, v0

    sub-long v2, v0, p1

    long-to-int p1, v2

    iput p1, p0, Lcom/bumptech/glide/h/f;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lcom/bumptech/glide/h/f;->a:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bumptech/glide/h/f;->a:I

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public mark(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 23
    iput p1, p0, Lcom/bumptech/glide/h/f;->a:I

    return-void
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/h/f;->a(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v0, -0x1

    return v0

    .line 32
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/h/f;->b(J)V

    return v2
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/h/f;->a(J)J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/h/f;->b(J)V

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    const/high16 v0, -0x80000000

    .line 52
    iput v0, p0, Lcom/bumptech/glide/h/f;->a:I

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/h/f;->a(J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/h/f;->b(J)V

    return-wide p1
.end method
