.class public Lcom/bumptech/glide/c/a;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Integer;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/io/OutputStream;

.field private i:Landroid/graphics/Bitmap;

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/bumptech/glide/c/a;->c:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/bumptech/glide/c/a;->e:I

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/bumptech/glide/c/a;->f:I

    .line 56
    iput-boolean v1, p0, Lcom/bumptech/glide/c/a;->g:Z

    const/16 v2, 0x100

    .line 70
    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/bumptech/glide/c/a;->n:[Z

    const/4 v2, 0x7

    .line 72
    iput v2, p0, Lcom/bumptech/glide/c/a;->o:I

    .line 74
    iput v0, p0, Lcom/bumptech/glide/c/a;->p:I

    .line 76
    iput-boolean v1, p0, Lcom/bumptech/glide/c/a;->q:Z

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/bumptech/glide/c/a;->r:Z

    .line 80
    iput-boolean v1, p0, Lcom/bumptech/glide/c/a;->s:Z

    const/16 v0, 0xa

    .line 82
    iput v0, p0, Lcom/bumptech/glide/c/a;->t:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 527
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 9

    .line 347
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->m:[B

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 349
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 350
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 351
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/high16 v2, 0x1000000

    .line 354
    iget-object v3, p0, Lcom/bumptech/glide/c/a;->m:[B

    const/4 v4, 0x0

    array-length v3, v3

    move v5, v2

    move v2, v4

    :goto_0
    if-ge v4, v3, :cond_2

    .line 356
    iget-object v6, p0, Lcom/bumptech/glide/c/a;->m:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    sub-int v4, v0, v4

    .line 357
    iget-object v6, p0, Lcom/bumptech/glide/c/a;->m:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v6, v1, v6

    .line 358
    iget-object v7, p0, Lcom/bumptech/glide/c/a;->m:[B

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    sub-int v7, p1, v7

    mul-int/2addr v4, v4

    mul-int/2addr v6, v6

    add-int/2addr v4, v6

    mul-int/2addr v7, v7

    add-int/2addr v4, v7

    .line 360
    div-int/lit8 v6, v8, 0x3

    .line 361
    iget-object v7, p0, Lcom/bumptech/glide/c/a;->n:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_1

    if-ge v4, v5, :cond_1

    move v5, v4

    move v2, v6

    :cond_1
    add-int/lit8 v4, v8, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private b()V
    .locals 9

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->j:[B

    const/4 v1, 0x0

    array-length v0, v0

    .line 312
    div-int/lit8 v2, v0, 0x3

    .line 313
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/bumptech/glide/c/a;->k:[B

    .line 314
    new-instance v3, Lcom/bumptech/glide/c/c;

    iget-object v4, p0, Lcom/bumptech/glide/c/a;->j:[B

    iget v5, p0, Lcom/bumptech/glide/c/a;->t:I

    invoke-direct {v3, v4, v0, v5}, Lcom/bumptech/glide/c/c;-><init>([BII)V

    .line 316
    invoke-virtual {v3}, Lcom/bumptech/glide/c/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c/a;->m:[B

    move v0, v1

    .line 318
    :goto_0
    iget-object v4, p0, Lcom/bumptech/glide/c/a;->m:[B

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 319
    iget-object v4, p0, Lcom/bumptech/glide/c/a;->m:[B

    aget-byte v4, v4, v0

    .line 320
    iget-object v5, p0, Lcom/bumptech/glide/c/a;->m:[B

    iget-object v6, p0, Lcom/bumptech/glide/c/a;->m:[B

    add-int/lit8 v7, v0, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v0

    .line 321
    iget-object v5, p0, Lcom/bumptech/glide/c/a;->m:[B

    aput-byte v4, v5, v7

    .line 322
    iget-object v4, p0, Lcom/bumptech/glide/c/a;->n:[Z

    div-int/lit8 v5, v0, 0x3

    aput-boolean v1, v4, v5

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    move v4, v0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 327
    iget-object v5, p0, Lcom/bumptech/glide/c/a;->j:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/bumptech/glide/c/a;->j:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcom/bumptech/glide/c/a;->j:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/c/c;->a(III)I

    move-result v4

    .line 328
    iget-object v5, p0, Lcom/bumptech/glide/c/a;->n:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 329
    iget-object v5, p0, Lcom/bumptech/glide/c/a;->k:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v4, v8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/bumptech/glide/c/a;->j:[B

    const/16 v0, 0x8

    .line 332
    iput v0, p0, Lcom/bumptech/glide/c/a;->l:I

    const/4 v0, 0x7

    .line 333
    iput v0, p0, Lcom/bumptech/glide/c/a;->o:I

    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/a;->d:I

    goto :goto_2

    .line 337
    :cond_2
    iget-boolean v0, p0, Lcom/bumptech/glide/c/a;->u:Z

    if-eqz v0, :cond_3

    .line 338
    invoke-direct {p0, v1}, Lcom/bumptech/glide/c/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/a;->d:I

    :cond_3
    :goto_2
    return-void
.end method

.method private c()V
    .locals 11

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 377
    iget v0, p0, Lcom/bumptech/glide/c/a;->a:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/c/a;->b:I

    if-eq v8, v0, :cond_1

    .line 379
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/c/a;->a:I

    iget v1, p0, Lcom/bumptech/glide/c/a;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 381
    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    iput-object v0, p0, Lcom/bumptech/glide/c/a;->i:Landroid/graphics/Bitmap;

    :cond_1
    mul-int v0, v7, v8

    .line 384
    new-array v0, v0, [I

    .line 385
    iget-object v1, p0, Lcom/bumptech/glide/c/a;->i:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 388
    array-length v3, v0

    mul-int/2addr v3, v1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/bumptech/glide/c/a;->j:[B

    .line 391
    iput-boolean v2, p0, Lcom/bumptech/glide/c/a;->u:Z

    .line 393
    array-length v3, v0

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v3, :cond_3

    aget v7, v0, v4

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 397
    :cond_2
    iget-object v8, p0, Lcom/bumptech/glide/c/a;->j:[B

    add-int/lit8 v9, v6, 0x1

    and-int/lit16 v10, v7, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    .line 398
    iget-object v6, p0, Lcom/bumptech/glide/c/a;->j:[B

    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 399
    iget-object v6, p0, Lcom/bumptech/glide/c/a;->j:[B

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    add-int/lit8 v4, v4, 0x1

    move v6, v9

    goto :goto_0

    :cond_3
    const/16 v3, 0x64

    mul-int/2addr v3, v5

    int-to-double v3, v3

    .line 402
    array-length v0, v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    const/4 v2, 0x1

    .line 405
    :cond_4
    iput-boolean v2, p0, Lcom/bumptech/glide/c/a;->u:Z

    const-string v0, "AnimatedGifEncoder"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AnimatedGifEncoder"

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got pixels for frame with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "% transparent pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 520
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 417
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 419
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->c:Ljava/lang/Integer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/c/a;->u:Z

    if-nez v0, :cond_0

    move v0, v2

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    move v0, v1

    .line 426
    :goto_0
    iget v4, p0, Lcom/bumptech/glide/c/a;->p:I

    if-ltz v4, :cond_1

    .line 427
    iget v0, p0, Lcom/bumptech/glide/c/a;->p:I

    and-int/lit8 v0, v0, 0x7

    :cond_1
    shl-int/2addr v0, v1

    .line 432
    iget-object v1, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    or-int/2addr v0, v2

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 437
    iget v0, p0, Lcom/bumptech/glide/c/a;->f:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 438
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/c/a;->d:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 439
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 448
    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 449
    iget v1, p0, Lcom/bumptech/glide/c/a;->a:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 450
    iget v1, p0, Lcom/bumptech/glide/c/a;->b:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 452
    iget-boolean v1, p0, Lcom/bumptech/glide/c/a;->r:Z

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x80

    iget v2, p0, Lcom/bumptech/glide/c/a;->o:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget v0, p0, Lcom/bumptech/glide/c/a;->a:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 471
    iget v0, p0, Lcom/bumptech/glide/c/a;->b:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 473
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/c/a;->o:I

    const/16 v2, 0xf0

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 478
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 479
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 487
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 488
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    .line 489
    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->a(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 492
    iget v0, p0, Lcom/bumptech/glide/c/a;->e:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/a;->c(I)V

    .line 493
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/bumptech/glide/c/a;->m:[B

    iget-object v2, p0, Lcom/bumptech/glide/c/a;->m:[B

    const/4 v3, 0x0

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/c/a;->m:[B

    array-length v0, v0

    rsub-int v0, v0, 0x300

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 503
    iget-object v2, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/bumptech/glide/c/b;

    iget v1, p0, Lcom/bumptech/glide/c/a;->a:I

    iget v2, p0, Lcom/bumptech/glide/c/a;->b:I

    iget-object v3, p0, Lcom/bumptech/glide/c/a;->k:[B

    iget v4, p0, Lcom/bumptech/glide/c/a;->l:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/c/b;-><init>(II[BI)V

    .line 512
    iget-object v1, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 94
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/c/a;->f:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/bumptech/glide/c/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/c/a;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/c/a;->a:I

    .line 258
    iput p2, p0, Lcom/bumptech/glide/c/a;->b:I

    .line 259
    iget p1, p0, Lcom/bumptech/glide/c/a;->a:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    const/16 p1, 0x140

    .line 260
    iput p1, p0, Lcom/bumptech/glide/c/a;->a:I

    .line 261
    :cond_1
    iget p1, p0, Lcom/bumptech/glide/c/a;->b:I

    if-ge p1, p2, :cond_2

    const/16 p1, 0xf0

    .line 262
    iput p1, p0, Lcom/bumptech/glide/c/a;->b:I

    .line 263
    :cond_2
    iput-boolean p2, p0, Lcom/bumptech/glide/c/a;->s:Z

    return-void
.end method

.method public a()Z
    .locals 4

    .line 190
    iget-boolean v0, p0, Lcom/bumptech/glide/c/a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    iput-boolean v1, p0, Lcom/bumptech/glide/c/a;->g:Z

    const/4 v0, 0x1

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v2, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 197
    iget-boolean v2, p0, Lcom/bumptech/glide/c/a;->q:Z

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    .line 205
    :goto_0
    iput v1, p0, Lcom/bumptech/glide/c/a;->d:I

    const/4 v3, 0x0

    .line 206
    iput-object v3, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    .line 207
    iput-object v3, p0, Lcom/bumptech/glide/c/a;->i:Landroid/graphics/Bitmap;

    .line 208
    iput-object v3, p0, Lcom/bumptech/glide/c/a;->j:[B

    .line 209
    iput-object v3, p0, Lcom/bumptech/glide/c/a;->k:[B

    .line 210
    iput-object v3, p0, Lcom/bumptech/glide/c/a;->m:[B

    .line 211
    iput-boolean v1, p0, Lcom/bumptech/glide/c/a;->q:Z

    .line 212
    iput-boolean v0, p0, Lcom/bumptech/glide/c/a;->r:Z

    return v2
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 151
    iget-boolean v1, p0, Lcom/bumptech/glide/c/a;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 156
    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/c/a;->s:Z

    if-nez v2, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/c/a;->a(II)V

    .line 160
    :cond_1
    iput-object p1, p0, Lcom/bumptech/glide/c/a;->i:Landroid/graphics/Bitmap;

    .line 161
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->c()V

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->b()V

    .line 163
    iget-boolean p1, p0, Lcom/bumptech/glide/c/a;->r:Z

    if-eqz p1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->f()V

    .line 165
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->h()V

    .line 166
    iget p1, p0, Lcom/bumptech/glide/c/a;->e:I

    if-ltz p1, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->g()V

    .line 171
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->d()V

    .line 172
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->e()V

    .line 173
    iget-boolean p1, p0, Lcom/bumptech/glide/c/a;->r:Z

    if-nez p1, :cond_3

    .line 174
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->h()V

    .line 176
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;->i()V

    .line 177
    iput-boolean v0, p0, Lcom/bumptech/glide/c/a;->r:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/bumptech/glide/c/a;->q:Z

    .line 279
    iput-object p1, p0, Lcom/bumptech/glide/c/a;->h:Ljava/io/OutputStream;

    :try_start_0
    const-string p1, "GIF89a"

    .line 281
    invoke-direct {p0, p1}, Lcom/bumptech/glide/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 285
    :catch_0
    iput-boolean v0, p0, Lcom/bumptech/glide/c/a;->g:Z

    return v0
.end method
