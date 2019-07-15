.class Lcom/bumptech/glide/c/b;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:[I

.field f:[I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:[I

.field p:I

.field q:[B

.field private r:I

.field private s:I

.field private t:[B

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method constructor <init>(II[BI)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 48
    iput v0, p0, Lcom/bumptech/glide/c/b;->b:I

    const/16 v0, 0x1000

    .line 52
    iput v0, p0, Lcom/bumptech/glide/c/b;->d:I

    const/16 v0, 0x138b

    .line 54
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/c/b;->e:[I

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/c/b;->f:[I

    .line 58
    iput v0, p0, Lcom/bumptech/glide/c/b;->g:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/bumptech/glide/c/b;->h:I

    .line 64
    iput-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    .line 99
    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 101
    iput v0, p0, Lcom/bumptech/glide/c/b;->n:I

    const/16 v0, 0x11

    .line 103
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/bumptech/glide/c/b;->o:[I

    const/16 v0, 0x100

    .line 110
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/c/b;->q:[B

    .line 114
    iput p1, p0, Lcom/bumptech/glide/c/b;->r:I

    .line 115
    iput p2, p0, Lcom/bumptech/glide/c/b;->s:I

    .line 116
    iput-object p3, p0, Lcom/bumptech/glide/c/b;->t:[B

    const/4 p1, 0x2

    .line 117
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/c/b;->u:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private a()I
    .locals 3

    .line 245
    iget v0, p0, Lcom/bumptech/glide/c/b;->v:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 248
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/c/b;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/c/b;->v:I

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->t:[B

    iget v1, p0, Lcom/bumptech/glide/c/b;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/c/b;->w:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a(BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->q:[B

    iget v1, p0, Lcom/bumptech/glide/c/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/c/b;->p:I

    aput-byte p1, v0, v1

    .line 124
    iget p1, p0, Lcom/bumptech/glide/c/b;->p:I

    const/16 v0, 0xfe

    if-lt p1, v0, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/c/b;->c(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/bumptech/glide/c/b;->e:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(ILjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iput p1, p0, Lcom/bumptech/glide/c/b;->j:I

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    .line 159
    iget v1, p0, Lcom/bumptech/glide/c/b;->j:I

    iput v1, p0, Lcom/bumptech/glide/c/b;->a:I

    .line 160
    iget v1, p0, Lcom/bumptech/glide/c/b;->a:I

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/c/b;->b(I)I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/c/b;->c:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    .line 162
    iput p1, p0, Lcom/bumptech/glide/c/b;->k:I

    .line 163
    iget p1, p0, Lcom/bumptech/glide/c/b;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/c/b;->l:I

    .line 164
    iget p1, p0, Lcom/bumptech/glide/c/b;->k:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/c/b;->h:I

    .line 166
    iput v0, p0, Lcom/bumptech/glide/c/b;->p:I

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/c/b;->a()I

    move-result p1

    .line 171
    iget v2, p0, Lcom/bumptech/glide/c/b;->g:I

    :goto_0
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x8

    .line 175
    iget v2, p0, Lcom/bumptech/glide/c/b;->g:I

    .line 176
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/c/b;->a(I)V

    .line 178
    iget v3, p0, Lcom/bumptech/glide/c/b;->k:I

    invoke-virtual {p0, v3, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 181
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/c/b;->a()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 182
    iget v4, p0, Lcom/bumptech/glide/c/b;->b:I

    shl-int v4, v3, v4

    add-int/2addr v4, p1

    shl-int v5, v3, v0

    xor-int/2addr v5, p1

    .line 185
    iget-object v6, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_1

    .line 186
    iget-object p1, p0, Lcom/bumptech/glide/c/b;->f:[I

    aget p1, p1, v5

    goto :goto_1

    .line 188
    :cond_1
    iget-object v6, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v6, v6, v5

    if-ltz v6, :cond_5

    sub-int v6, v2, v5

    if-nez v5, :cond_2

    move v6, v1

    :cond_2
    sub-int/2addr v5, v6

    if-gez v5, :cond_3

    add-int/2addr v5, v2

    .line 197
    :cond_3
    iget-object v7, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v7, v7, v5

    if-ne v7, v4, :cond_4

    .line 198
    iget-object p1, p0, Lcom/bumptech/glide/c/b;->f:[I

    aget p1, p1, v5

    goto :goto_1

    .line 201
    :cond_4
    iget-object v7, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v7, v7, v5

    if-gez v7, :cond_2

    .line 203
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 205
    iget p1, p0, Lcom/bumptech/glide/c/b;->h:I

    iget v6, p0, Lcom/bumptech/glide/c/b;->d:I

    if-ge p1, v6, :cond_6

    .line 206
    iget-object p1, p0, Lcom/bumptech/glide/c/b;->f:[I

    iget v6, p0, Lcom/bumptech/glide/c/b;->h:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/bumptech/glide/c/b;->h:I

    aput v6, p1, v5

    .line 207
    iget-object p1, p0, Lcom/bumptech/glide/c/b;->e:[I

    aput v4, p1, v5

    goto :goto_2

    .line 209
    :cond_6
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/c/b;->a(Ljava/io/OutputStream;)V

    :goto_2
    move p1, v3

    goto :goto_1

    .line 212
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 213
    iget p1, p0, Lcom/bumptech/glide/c/b;->l:I

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    return-void
.end method

.method a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget v0, p0, Lcom/bumptech/glide/c/b;->g:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/b;->a(I)V

    .line 133
    iget v0, p0, Lcom/bumptech/glide/c/b;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/c/b;->h:I

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    .line 136
    iget v0, p0, Lcom/bumptech/glide/c/b;->k:I

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    return-void
.end method

.method final b(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    return p1
.end method

.method b(ILjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    iget-object v1, p0, Lcom/bumptech/glide/c/b;->o:[I

    iget v2, p0, Lcom/bumptech/glide/c/b;->n:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 258
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    if-lez v0, :cond_0

    .line 259
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->n:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    goto :goto_0

    .line 261
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 263
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->n:I

    .line 265
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 266
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/c/b;->a(BLjava/io/OutputStream;)V

    .line 267
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    shr-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 268
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->n:I

    goto :goto_1

    .line 273
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/c/b;->h:I

    iget v2, p0, Lcom/bumptech/glide/c/b;->c:I

    if-gt v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    if-eqz v0, :cond_5

    .line 274
    :cond_2
    iget-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    if-eqz v0, :cond_3

    .line 275
    iget v0, p0, Lcom/bumptech/glide/c/b;->j:I

    iput v0, p0, Lcom/bumptech/glide/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/b;->c:I

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    goto :goto_2

    .line 278
    :cond_3
    iget v0, p0, Lcom/bumptech/glide/c/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/c/b;->a:I

    .line 279
    iget v0, p0, Lcom/bumptech/glide/c/b;->a:I

    iget v2, p0, Lcom/bumptech/glide/c/b;->b:I

    if-ne v0, v2, :cond_4

    .line 280
    iget v0, p0, Lcom/bumptech/glide/c/b;->d:I

    iput v0, p0, Lcom/bumptech/glide/c/b;->c:I

    goto :goto_2

    .line 282
    :cond_4
    iget v0, p0, Lcom/bumptech/glide/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/b;->c:I

    .line 286
    :cond_5
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/c/b;->l:I

    if-ne p1, v0, :cond_7

    .line 288
    :goto_3
    iget p1, p0, Lcom/bumptech/glide/c/b;->n:I

    if-lez p1, :cond_6

    .line 289
    iget p1, p0, Lcom/bumptech/glide/c/b;->m:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c/b;->a(BLjava/io/OutputStream;)V

    .line 290
    iget p1, p0, Lcom/bumptech/glide/c/b;->m:I

    shr-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 291
    iget p1, p0, Lcom/bumptech/glide/c/b;->n:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/c/b;->n:I

    goto :goto_3

    .line 294
    :cond_6
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/c/b;->c(Ljava/io/OutputStream;)V

    :cond_7
    return-void
.end method

.method b(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget v0, p0, Lcom/bumptech/glide/c/b;->u:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 220
    iget v0, p0, Lcom/bumptech/glide/c/b;->r:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->s:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->v:I

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/bumptech/glide/c/b;->w:I

    .line 223
    iget v1, p0, Lcom/bumptech/glide/c/b;->u:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/bumptech/glide/c/b;->a(ILjava/io/OutputStream;)V

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method c(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/bumptech/glide/c/b;->p:I

    if-lez v0, :cond_0

    .line 231
    iget v0, p0, Lcom/bumptech/glide/c/b;->p:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->q:[B

    iget v1, p0, Lcom/bumptech/glide/c/b;->p:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iput v2, p0, Lcom/bumptech/glide/c/b;->p:I

    :cond_0
    return-void
.end method
