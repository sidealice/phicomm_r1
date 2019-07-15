.class public Lcom/bumptech/glide/b/a;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static final b:Landroid/graphics/Bitmap$Config;


# instance fields
.field private c:[I

.field private d:Ljava/nio/ByteBuffer;

.field private final e:[B

.field private f:[S

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[I

.field private k:I

.field private l:[B

.field private m:Lcom/bumptech/glide/b/c;

.field private n:Lcom/bumptech/glide/b/a$a;

.field private o:Landroid/graphics/Bitmap;

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;)V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 114
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->e:[B

    .line 155
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/a$a;

    .line 156
    new-instance p1, Lcom/bumptech/glide/b/c;

    invoke-direct {p1}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    .locals 13

    .line 427
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->f:I

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v9, v1, Lcom/bumptech/glide/b/c;->g:I

    .line 431
    iget-object v10, p0, Lcom/bumptech/glide/b/a;->j:[I

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eqz p2, :cond_2

    .line 434
    iget v1, p2, Lcom/bumptech/glide/b/b;->g:I

    if-lez v1, :cond_2

    .line 437
    iget v1, p2, Lcom/bumptech/glide/b/b;->g:I

    if-ne v1, v12, :cond_1

    .line 440
    iget-boolean p2, p1, Lcom/bumptech/glide/b/b;->f:Z

    if-nez p2, :cond_0

    .line 441
    iget-object p2, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget p2, p2, Lcom/bumptech/glide/b/c;->l:I

    goto :goto_0

    :cond_0
    move p2, v11

    .line 443
    :goto_0
    invoke-static {v10, p2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 444
    :cond_1
    iget p2, p2, Lcom/bumptech/glide/b/b;->g:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 446
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 451
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;)V

    const/16 p2, 0x8

    const/4 v1, 0x1

    move v3, p2

    move v2, v1

    move p2, v11

    .line 457
    :goto_2
    iget v4, p1, Lcom/bumptech/glide/b/b;->d:I

    if-ge v11, v4, :cond_8

    .line 459
    iget-boolean v4, p1, Lcom/bumptech/glide/b/b;->e:Z

    if-eqz v4, :cond_4

    .line 460
    iget v4, p1, Lcom/bumptech/glide/b/b;->d:I

    const/4 v5, 0x4

    if-lt p2, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move p2, v1

    move v3, v12

    goto :goto_3

    :pswitch_1
    move v3, v5

    move p2, v12

    goto :goto_3

    :pswitch_2
    move p2, v5

    :cond_3
    :goto_3
    add-int v4, p2, v3

    goto :goto_4

    :cond_4
    move v4, p2

    move p2, v11

    .line 481
    :goto_4
    iget v5, p1, Lcom/bumptech/glide/b/b;->b:I

    add-int/2addr p2, v5

    .line 482
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v5, v5, Lcom/bumptech/glide/b/c;->g:I

    if-ge p2, v5, :cond_7

    .line 483
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v5, v5, Lcom/bumptech/glide/b/c;->f:I

    mul-int/2addr p2, v5

    .line 485
    iget v5, p1, Lcom/bumptech/glide/b/b;->a:I

    add-int/2addr v5, p2

    .line 487
    iget v6, p1, Lcom/bumptech/glide/b/b;->c:I

    add-int/2addr v6, v5

    .line 488
    iget-object v7, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v7, v7, Lcom/bumptech/glide/b/c;->f:I

    add-int/2addr v7, p2

    if-ge v7, v6, :cond_5

    .line 490
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v6, v6, Lcom/bumptech/glide/b/c;->f:I

    add-int/2addr v6, p2

    .line 493
    :cond_5
    iget p2, p1, Lcom/bumptech/glide/b/b;->c:I

    mul-int/2addr p2, v11

    :goto_5
    if-ge v5, v6, :cond_7

    .line 496
    iget-object v7, p0, Lcom/bumptech/glide/b/a;->i:[B

    add-int/lit8 v8, p2, 0x1

    aget-byte p2, v7, p2

    and-int/lit16 p2, p2, 0xff

    .line 497
    iget-object v7, p0, Lcom/bumptech/glide/b/a;->c:[I

    aget p2, v7, p2

    if-eqz p2, :cond_6

    .line 499
    aput p2, v10, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move p2, v8

    goto :goto_5

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move p2, v4

    goto :goto_2

    .line 507
    :cond_8
    iget-boolean p2, p0, Lcom/bumptech/glide/b/a;->p:Z

    if-eqz p2, :cond_b

    iget p2, p1, Lcom/bumptech/glide/b/b;->g:I

    if-eqz p2, :cond_9

    iget p1, p1, Lcom/bumptech/glide/b/b;->g:I

    if-ne p1, v1, :cond_b

    .line 509
    :cond_9
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    if-nez p1, :cond_a

    .line 510
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    .line 512
    :cond_a
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 516
    :cond_b
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    .line 517
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 701
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 527
    iget-object v2, v0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/b/b;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    .line 530
    iget-object v1, v0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/bumptech/glide/b/b;->c:I

    iget v1, v1, Lcom/bumptech/glide/b/b;->d:I

    mul-int/2addr v1, v2

    .line 534
    :goto_0
    iget-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    array-length v2, v2

    if-ge v2, v1, :cond_3

    .line 536
    :cond_2
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    .line 538
    :cond_3
    iget-object v2, v0, Lcom/bumptech/glide/b/a;->f:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_4

    .line 539
    new-array v2, v3, [S

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->f:[S

    .line 541
    :cond_4
    iget-object v2, v0, Lcom/bumptech/glide/b/a;->g:[B

    if-nez v2, :cond_5

    .line 542
    new-array v2, v3, [B

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->g:[B

    .line 544
    :cond_5
    iget-object v2, v0, Lcom/bumptech/glide/b/a;->h:[B

    if-nez v2, :cond_6

    const/16 v2, 0x1001

    .line 545
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->h:[B

    .line 549
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->h()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v5, :cond_7

    .line 558
    iget-object v11, v0, Lcom/bumptech/glide/b/a;->f:[S

    aput-short v9, v11, v10

    .line 559
    iget-object v11, v0, Lcom/bumptech/glide/b/a;->g:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, -0x1

    move/from16 v21, v2

    move/from16 v19, v7

    move/from16 v20, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v22, v10

    :goto_2
    if-ge v11, v1, :cond_14

    const/4 v9, 0x3

    if-nez v12, :cond_9

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->i()I

    move-result v12

    if-gtz v12, :cond_8

    .line 570
    iput v9, v0, Lcom/bumptech/glide/b/a;->q:I

    goto/16 :goto_b

    :cond_8
    const/4 v15, 0x0

    .line 576
    :cond_9
    iget-object v3, v0, Lcom/bumptech/glide/b/a;->e:[B

    aget-byte v3, v3, v15

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v16

    add-int/2addr v14, v3

    add-int/lit8 v16, v16, 0x8

    add-int/2addr v15, v4

    add-int/2addr v12, v10

    move/from16 v3, v16

    move/from16 v23, v17

    move/from16 v4, v22

    move/from16 v16, v11

    move/from16 v17, v13

    move/from16 v13, v19

    move/from16 v11, v21

    :goto_3
    if-lt v3, v11, :cond_13

    and-int v10, v14, v20

    shr-int/2addr v14, v11

    sub-int/2addr v3, v11

    if-ne v10, v5, :cond_a

    move v11, v2

    move v13, v7

    move/from16 v20, v8

    const/4 v4, -0x1

    :goto_4
    const/4 v10, -0x1

    goto :goto_3

    :cond_a
    if-le v10, v13, :cond_b

    .line 598
    iput v9, v0, Lcom/bumptech/glide/b/a;->q:I

    goto :goto_5

    :cond_b
    if-ne v10, v6, :cond_c

    :goto_5
    move/from16 v22, v4

    move/from16 v21, v11

    move/from16 v19, v13

    move/from16 v11, v16

    move/from16 v13, v17

    move/from16 v17, v23

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move/from16 v16, v3

    goto/16 :goto_a

    :cond_c
    const/4 v9, -0x1

    if-ne v4, v9, :cond_d

    .line 607
    iget-object v4, v0, Lcom/bumptech/glide/b/a;->h:[B

    add-int/lit8 v19, v18, 0x1

    iget-object v9, v0, Lcom/bumptech/glide/b/a;->g:[B

    aget-byte v9, v9, v10

    aput-byte v9, v4, v18

    move v4, v10

    move/from16 v23, v4

    move/from16 v18, v19

    :goto_6
    const/4 v9, 0x3

    goto :goto_4

    :cond_d
    if-lt v10, v13, :cond_e

    .line 614
    iget-object v9, v0, Lcom/bumptech/glide/b/a;->h:[B

    add-int/lit8 v19, v18, 0x1

    move/from16 v24, v2

    move/from16 v2, v23

    int-to-byte v2, v2

    aput-byte v2, v9, v18

    move v2, v4

    move/from16 v18, v19

    goto :goto_7

    :cond_e
    move/from16 v24, v2

    move v2, v10

    :goto_7
    if-lt v2, v5, :cond_f

    .line 618
    iget-object v9, v0, Lcom/bumptech/glide/b/a;->h:[B

    add-int/lit8 v19, v18, 0x1

    move/from16 v25, v3

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->g:[B

    aget-byte v3, v3, v2

    aput-byte v3, v9, v18

    .line 619
    iget-object v3, v0, Lcom/bumptech/glide/b/a;->f:[S

    aget-short v2, v3, v2

    move/from16 v18, v19

    move/from16 v3, v25

    goto :goto_7

    :cond_f
    move/from16 v25, v3

    .line 621
    iget-object v3, v0, Lcom/bumptech/glide/b/a;->g:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 622
    iget-object v3, v0, Lcom/bumptech/glide/b/a;->h:[B

    add-int/lit8 v9, v18, 0x1

    move/from16 v26, v5

    int-to-byte v5, v2

    aput-byte v5, v3, v18

    const/16 v3, 0x1000

    if-ge v13, v3, :cond_11

    .line 626
    iget-object v3, v0, Lcom/bumptech/glide/b/a;->f:[S

    int-to-short v4, v4

    aput-short v4, v3, v13

    .line 627
    iget-object v3, v0, Lcom/bumptech/glide/b/a;->g:[B

    aput-byte v5, v3, v13

    add-int/lit8 v13, v13, 0x1

    and-int v3, v13, v20

    if-nez v3, :cond_10

    const/16 v3, 0x1000

    if-ge v13, v3, :cond_11

    add-int/lit8 v11, v11, 0x1

    add-int v20, v20, v13

    goto :goto_8

    :cond_10
    const/16 v3, 0x1000

    :cond_11
    :goto_8
    move/from16 v18, v9

    :goto_9
    if-lez v18, :cond_12

    add-int/lit8 v18, v18, -0x1

    .line 639
    iget-object v4, v0, Lcom/bumptech/glide/b/a;->i:[B

    add-int/lit8 v5, v17, 0x1

    iget-object v9, v0, Lcom/bumptech/glide/b/a;->h:[B

    aget-byte v9, v9, v18

    aput-byte v9, v4, v17

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v5

    goto :goto_9

    :cond_12
    move/from16 v23, v2

    move v4, v10

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v5, v26

    goto :goto_6

    :cond_13
    move/from16 v24, v2

    move/from16 v26, v5

    move/from16 v2, v23

    move/from16 v22, v4

    move/from16 v21, v11

    move/from16 v19, v13

    move/from16 v11, v16

    move/from16 v13, v17

    const/4 v4, 0x1

    const/4 v9, 0x0

    move/from16 v17, v2

    move/from16 v16, v3

    move/from16 v2, v24

    :goto_a
    const/16 v3, 0x1000

    goto/16 :goto_2

    :cond_14
    :goto_b
    if-ge v13, v1, :cond_15

    .line 647
    iget-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private h()I
    .locals 1

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 659
    iput v0, p0, Lcom/bumptech/glide/b/a;->q:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()I
    .locals 5

    .line 670
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->h()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    :goto_0
    if-ge v1, v0, :cond_0

    sub-int v2, v0, v1

    .line 677
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->e:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 682
    sget-object v2, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 683
    iput v0, p0, Lcom/bumptech/glide/b/a;->q:I

    :cond_0
    return v1
.end method

.method private j()Landroid/graphics/Bitmap;
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    sget-object v3, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->f:I

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->g:I

    sget-object v2, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-ge p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/b/b;

    iget p1, p1, Lcom/bumptech/glide/b/b;->i:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    .line 187
    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/a;->k:I

    return-void
.end method

.method public a(Lcom/bumptech/glide/b/c;[B)V
    .locals 2

    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    .line 360
    iput-object p2, p0, Lcom/bumptech/glide/b/a;->l:[B

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lcom/bumptech/glide/b/a;->q:I

    const/4 v1, -0x1

    .line 362
    iput v1, p0, Lcom/bumptech/glide/b/a;->k:I

    .line 364
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    .line 365
    iget-object p2, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 366
    iget-object p2, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 370
    iput-boolean v0, p0, Lcom/bumptech/glide/b/a;->p:Z

    .line 371
    iget-object p2, p1, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 372
    iget v0, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 373
    iput-boolean p2, p0, Lcom/bumptech/glide/b/a;->p:Z

    .line 379
    :cond_1
    iget p2, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v0, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr p2, v0

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/bumptech/glide/b/a;->i:[B

    .line 380
    iget p2, p1, Lcom/bumptech/glide/b/c;->f:I

    iget p1, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr p2, p1

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/bumptech/glide/b/a;->j:[I

    return-void
.end method

.method public b()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/a;->a(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public c()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    return v0
.end method

.method public declared-synchronized f()Landroid/graphics/Bitmap;
    .locals 9

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    if-gez v0, :cond_2

    .line 253
    :cond_0
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v4, v4, Lcom/bumptech/glide/b/c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/b/a;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    iput v2, p0, Lcom/bumptech/glide/b/a;->q:I

    .line 258
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/b/a;->q:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/bumptech/glide/b/a;->q:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/bumptech/glide/b/a;->q:I

    .line 266
    iget-object v4, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v4, v4, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/b/a;->k:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/b/b;

    .line 268
    iget v5, p0, Lcom/bumptech/glide/b/a;->k:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_4

    .line 270
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v6, v6, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/b/b;

    goto :goto_0

    :cond_4
    move-object v5, v3

    .line 274
    :goto_0
    iget-object v6, v4, Lcom/bumptech/glide/b/b;->k:[I

    if-nez v6, :cond_5

    .line 275
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v6, v6, Lcom/bumptech/glide/b/c;->a:[I

    iput-object v6, p0, Lcom/bumptech/glide/b/a;->c:[I

    goto :goto_1

    .line 277
    :cond_5
    iget-object v6, v4, Lcom/bumptech/glide/b/b;->k:[I

    iput-object v6, p0, Lcom/bumptech/glide/b/a;->c:[I

    .line 278
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v6, v6, Lcom/bumptech/glide/b/c;->j:I

    iget v7, v4, Lcom/bumptech/glide/b/b;->h:I

    if-ne v6, v7, :cond_6

    .line 279
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iput v0, v6, Lcom/bumptech/glide/b/c;->l:I

    .line 284
    :cond_6
    :goto_1
    iget-boolean v6, v4, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v6, :cond_7

    .line 285
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->c:[I

    iget v7, v4, Lcom/bumptech/glide/b/b;->h:I

    aget v6, v6, v7

    .line 287
    iget-object v7, p0, Lcom/bumptech/glide/b/a;->c:[I

    iget v8, v4, Lcom/bumptech/glide/b/b;->h:I

    aput v0, v7, v8

    move v0, v6

    .line 289
    :cond_7
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->c:[I

    if-nez v6, :cond_9

    .line 290
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_8
    iput v2, p0, Lcom/bumptech/glide/b/a;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-object v3

    .line 299
    :cond_9
    :try_start_1
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    iget-boolean v2, v4, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v2, :cond_a

    .line 303
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->c:[I

    iget v3, v4, Lcom/bumptech/glide/b/b;->h:I

    aput v0, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :cond_a
    monitor-exit p0

    return-object v1

    .line 259
    :cond_b
    :goto_2
    :try_start_2
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 260
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/b/a;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_c
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    .line 251
    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    .line 348
    iput-object v0, p0, Lcom/bumptech/glide/b/a;->l:[B

    .line 349
    iput-object v0, p0, Lcom/bumptech/glide/b/a;->i:[B

    .line 350
    iput-object v0, p0, Lcom/bumptech/glide/b/a;->j:[I

    .line 351
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/a$a;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/b/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 354
    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    .line 355
    iput-object v0, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    return-void
.end method
