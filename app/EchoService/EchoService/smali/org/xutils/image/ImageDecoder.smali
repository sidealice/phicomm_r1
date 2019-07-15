.class public final Lorg/xutils/image/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# static fields
.field private static final BITMAP_DECODE_MAX_WORKER:I

.field private static final GIF_HEADER:[B

.field private static final THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

.field private static final THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final bitmapDecodeLock:Ljava/lang/Object;

.field private static final bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final gifDecodeLock:Ljava/lang/Object;

.field private static final supportWebP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v3, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    .line 46
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lorg/xutils/image/ImageDecoder;->gifDecodeLock:Ljava/lang/Object;

    .line 47
    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    sput-object v3, Lorg/xutils/image/ImageDecoder;->GIF_HEADER:[B

    .line 49
    new-instance v3, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v3, v2, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v3, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 50
    const-string v3, "xUtils_img_thumb"

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v3

    sput-object v3, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lorg/xutils/image/ImageDecoder;->supportWebP:Z

    .line 56
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 57
    .local v0, "cpuCount":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    sput v2, Lorg/xutils/image/ImageDecoder;->BITMAP_DECODE_MAX_WORKER:I

    .line 58
    return-void

    .line 47
    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Lorg/xutils/image/ImageOptions;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->saveThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 5
    .param p0, "rawWidth"    # I
    .param p1, "rawHeight"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 333
    const/4 v1, 0x1

    .line 335
    .local v1, "sampleSize":I
    if-gt p0, p2, :cond_0

    if-le p1, p3, :cond_3

    .line 336
    :cond_0
    if-le p0, p1, :cond_2

    .line 337
    int-to-float v3, p1

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 342
    :goto_0
    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 343
    const/4 v1, 0x1

    .line 346
    :cond_1
    mul-int v3, p0, p1

    int-to-float v2, v3

    .line 348
    .local v2, "totalPixels":F
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 350
    .local v0, "maxTotalPixels":F
    :goto_1
    mul-int v3, v1, v1

    int-to-float v3, v3

    div-float v3, v2, v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_3

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    .end local v0    # "maxTotalPixels":F
    .end local v2    # "totalPixels":F
    :cond_2
    int-to-float v3, p0

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 354
    :cond_3
    return v1
.end method

.method static clearCacheFiles()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    .line 66
    return-void
.end method

.method public static cut2Circular(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "recycleSource"    # Z

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 394
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 395
    .local v2, "height":I
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 396
    .local v1, "diameter":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 397
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 398
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 399
    .local v4, "result":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 400
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 401
    .local v0, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 402
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 403
    sub-int v6, v1, v5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, v1, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, p0, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 404
    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    const/4 p0, 0x0

    .line 411
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-object v4

    .line 409
    :cond_1
    move-object v4, p0

    goto :goto_0
.end method

.method public static cut2RoundCorner(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "isSquare"    # Z
    .param p3, "recycleSource"    # Z

    .prologue
    const/4 v10, 0x0

    .line 424
    if-gtz p1, :cond_0

    .line 451
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 426
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 427
    .local v5, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 428
    .local v4, "sourceHeight":I
    move v7, v5

    .line 429
    .local v7, "targetWidth":I
    move v6, v4

    .line 430
    .local v6, "targetHeight":I
    if-eqz p2, :cond_1

    .line 431
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v6

    .line 434
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 435
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 437
    .local v3, "result":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 438
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 439
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v8, v7

    int-to-float v9, v6

    invoke-direct {v2, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 440
    .local v2, "rect":Landroid/graphics/RectF;
    int-to-float v8, p1

    int-to-float v9, p1

    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 441
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 442
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-int v9, v6, v4

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, p0, v8, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 444
    if-eqz p3, :cond_2

    .line 445
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    const/4 p0, 0x0

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "rect":Landroid/graphics/RectF;
    :cond_2
    :goto_1
    move-object p0, v3

    .line 451
    goto :goto_0

    .line 449
    :cond_3
    move-object v3, p0

    goto :goto_1
.end method

.method public static cut2ScaleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "recycleSource"    # Z

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 465
    .local v14, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 466
    .local v9, "height":I
    move/from16 v0, p1

    if-ne v14, v0, :cond_0

    move/from16 v0, p2

    if-ne v9, v0, :cond_0

    .line 503
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 471
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 472
    .local v6, "m":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .local v2, "l":I
    const/4 v3, 0x0

    .local v3, "t":I
    move v10, v14

    .local v10, "r":I
    move v8, v9

    .line 474
    .local v8, "b":I
    move/from16 v0, p1

    int-to-float v1, v0

    int-to-float v4, v14

    div-float v12, v1, v4

    .line 475
    .local v12, "sx":F
    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v4, v9

    div-float v13, v1, v4

    .line 477
    .local v13, "sy":F
    cmpl-float v1, v12, v13

    if-lez v1, :cond_2

    .line 478
    move v13, v12

    .line 479
    const/4 v2, 0x0

    .line 480
    move v10, v14

    .line 481
    int-to-float v1, v9

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v4, v12

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v3, v1

    .line 482
    int-to-float v1, v9

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v4, v12

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v8, v1

    .line 490
    :goto_1
    invoke-virtual {v6, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 493
    sub-int v4, v10, v2

    sub-int v5, v8, v3

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 495
    .local v11, "result":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_3

    .line 496
    if-eqz p3, :cond_1

    if-eq v11, p0, :cond_1

    .line 497
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 498
    const/4 p0, 0x0

    :cond_1
    :goto_2
    move-object p0, v11

    .line 503
    goto :goto_0

    .line 484
    .end local v11    # "result":Landroid/graphics/Bitmap;
    :cond_2
    move v12, v13

    .line 485
    int-to-float v1, v14

    move/from16 v0, p1

    int-to-float v4, v0

    div-float/2addr v4, v12

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v2, v1

    .line 486
    int-to-float v1, v14

    move/from16 v0, p1

    int-to-float v4, v0

    div-float/2addr v4, v12

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v10, v1

    .line 487
    const/4 v3, 0x0

    .line 488
    move v8, v9

    goto :goto_1

    .line 501
    .restart local v11    # "result":Landroid/graphics/Bitmap;
    :cond_3
    move-object v11, p0

    goto :goto_2
.end method

.method public static cut2Square(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "recycleSource"    # Z

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 366
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 367
    .local v0, "height":I
    if-ne v3, v0, :cond_0

    .line 382
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 371
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 372
    .local v2, "squareWith":I
    sub-int v4, v3, v2

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v0, v2

    div-int/lit8 v5, v5, 0x2

    invoke-static {p0, v4, v5, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    .local v1, "result":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 375
    if-eqz p1, :cond_1

    if-eq v1, p0, :cond_1

    .line 376
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 377
    const/4 p0, 0x0

    :cond_1
    :goto_1
    move-object p0, v1

    .line 382
    goto :goto_0

    .line 380
    :cond_2
    move-object v1, p0

    goto :goto_1
.end method

.method public static decodeBitmap(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;
    .param p2, "cancelable"    # Lorg/xutils/common/Callback$Cancelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    :cond_0
    const/4 v7, 0x0

    .line 276
    :goto_0
    return-object v7

    .line 174
    :cond_1
    if-nez p1, :cond_2

    .line 175
    sget-object p1, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 177
    :cond_2
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxWidth()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxHeight()I

    move-result v9

    if-gtz v9, :cond_4

    .line 178
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/xutils/image/ImageOptions;->optimizeMaxSize(Landroid/widget/ImageView;)V

    .line 182
    :cond_4
    const/4 v7, 0x0

    .line 184
    .local v7, "result":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_5

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 185
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled during decode image"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "ex":Ljava/io/IOException;
    throw v2

    .line 189
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_5
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 190
    .local v1, "bitmapOps":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    const/4 v9, 0x1

    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 192
    const/4 v9, 0x1

    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 193
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 194
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    iput-object v9, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 196
    const/4 v8, 0x0

    .line 197
    .local v8, "rotateAngle":I
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 198
    .local v6, "rawWidth":I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 199
    .local v5, "rawHeight":I
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getWidth()I

    move-result v4

    .line 200
    .local v4, "optionWith":I
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getHeight()I

    move-result v3

    .line 201
    .local v3, "optionHeight":I
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isAutoRotate()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/xutils/image/ImageDecoder;->getRotateAngle(Ljava/lang/String;)I

    move-result v8

    .line 203
    div-int/lit8 v9, v8, 0x5a

    rem-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 204
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 205
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 208
    :cond_6
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCrop()Z

    move-result v9

    if-nez v9, :cond_7

    if-lez v4, :cond_7

    if-lez v3, :cond_7

    .line 209
    div-int/lit8 v9, v8, 0x5a

    rem-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 210
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 211
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 219
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxWidth()I

    move-result v9

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxHeight()I

    move-result v10

    .line 217
    invoke-static {v6, v5, v9, v10}, Lorg/xutils/image/ImageDecoder;->calculateSampleSize(IIII)I

    move-result v9

    iput v9, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 221
    if-eqz p2, :cond_9

    invoke-interface/range {p2 .. p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 222
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled during decode image"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .end local v1    # "bitmapOps":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "optionHeight":I
    .end local v4    # "optionWith":I
    .end local v5    # "rawHeight":I
    .end local v6    # "rawWidth":I
    .end local v8    # "rotateAngle":I
    :catch_1
    move-exception v2

    .line 272
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 213
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "bitmapOps":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "optionHeight":I
    .restart local v4    # "optionWith":I
    .restart local v5    # "rawHeight":I
    .restart local v6    # "rawWidth":I
    .restart local v8    # "rotateAngle":I
    :cond_8
    :try_start_2
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 214
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    .line 226
    :cond_9
    const/4 v0, 0x0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    if-nez v0, :cond_a

    .line 229
    new-instance v9, Ljava/io/IOException;

    const-string v10, "decode image error"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 233
    :cond_a
    if-eqz p2, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 234
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled during decode image"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    :cond_b
    if-eqz v8, :cond_c

    .line 237
    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lorg/xutils/image/ImageDecoder;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    :cond_c
    if-eqz p2, :cond_d

    invoke-interface/range {p2 .. p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 240
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled during decode image"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 242
    :cond_d
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCrop()Z

    move-result v9

    if-eqz v9, :cond_e

    if-lez v4, :cond_e

    if-lez v3, :cond_e

    .line 243
    const/4 v9, 0x1

    invoke-static {v0, v4, v3, v9}, Lorg/xutils/image/ImageDecoder;->cut2ScaleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    :cond_e
    if-nez v0, :cond_f

    .line 248
    new-instance v9, Ljava/io/IOException;

    const-string v10, "decode image error"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 252
    :cond_f
    if-eqz p2, :cond_10

    invoke-interface/range {p2 .. p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 253
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled during decode image"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 255
    :cond_10
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCircular()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 256
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lorg/xutils/image/ImageDecoder;->cut2Circular(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    :cond_11
    :goto_2
    if-nez v0, :cond_14

    .line 265
    new-instance v9, Ljava/io/IOException;

    const-string v10, "decode image error"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 257
    :cond_12
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getRadius()I

    move-result v9

    if-lez v9, :cond_13

    .line 258
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getRadius()I

    move-result v9

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isSquare()Z

    move-result v10

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Lorg/xutils/image/ImageDecoder;->cut2RoundCorner(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 259
    :cond_13
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isSquare()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 260
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lorg/xutils/image/ImageDecoder;->cut2Square(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2

    .line 268
    :cond_14
    move-object v7, v0

    goto/16 :goto_0
.end method

.method static decodeFileWithLock(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;
    .param p2, "cancelable"    # Lorg/xutils/common/Callback$Cancelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 144
    :cond_1
    :goto_0
    return-object v4

    .line 82
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    new-instance v5, Lorg/xutils/common/Callback$CancelledException;

    const-string v6, "cancelled during decode image"

    invoke-direct {v5, v6}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_3
    const/4 v4, 0x0

    .line 87
    .local v4, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isIgnoreGif()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p0}, Lorg/xutils/image/ImageDecoder;->isGif(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "movie":Landroid/graphics/Movie;
    sget-object v6, Lorg/xutils/image/ImageDecoder;->gifDecodeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 90
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->decodeGif(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Movie;

    move-result-object v3

    .line 91
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-eqz v3, :cond_1

    .line 93
    new-instance v4, Lorg/xutils/image/GifDrawable;

    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v4, v3, v5}, Lorg/xutils/image/GifDrawable;-><init>(Landroid/graphics/Movie;I)V

    .restart local v4    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 96
    .end local v3    # "movie":Landroid/graphics/Movie;
    :cond_4
    const/4 v0, 0x0

    .line 99
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_2
    sget-object v6, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    :goto_1
    :try_start_3
    sget-object v5, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    sget v7, Lorg/xutils/image/ImageDecoder;->BITMAP_DECODE_MAX_WORKER:I

    if-lt v5, v7, :cond_6

    if-eqz p2, :cond_5

    .line 101
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_6

    .line 103
    :cond_5
    :try_start_4
    sget-object v5, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "iex":Ljava/lang/InterruptedException;
    :try_start_5
    new-instance v5, Lorg/xutils/common/Callback$CancelledException;

    const-string v7, "cancelled during decode image"

    invoke-direct {v5, v7}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    .end local v2    # "iex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 134
    :catchall_2
    move-exception v5

    sget-object v6, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 135
    sget-object v6, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 136
    :try_start_7
    sget-object v7, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v5

    .line 109
    :cond_6
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 111
    if-eqz p2, :cond_7

    :try_start_9
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 112
    new-instance v5, Lorg/xutils/common/Callback$CancelledException;

    const-string v6, "cancelled during decode image"

    invoke-direct {v5, v6}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_7
    sget-object v5, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 117
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCompress()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 118
    invoke-static {p0, p1}, Lorg/xutils/image/ImageDecoder;->getThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    :cond_8
    if-nez v0, :cond_9

    .line 121
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->decodeBitmap(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCompress()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 124
    move-object v1, v0

    .line 125
    .local v1, "finalBitmap":Landroid/graphics/Bitmap;
    sget-object v5, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v6, Lorg/xutils/image/ImageDecoder$1;

    invoke-direct {v6, p0, p1, v1}, Lorg/xutils/image/ImageDecoder$1;-><init>(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 134
    .end local v1    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_9
    sget-object v5, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 135
    sget-object v6, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 136
    :try_start_a
    sget-object v5, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 140
    if-eqz v0, :cond_1

    .line 141
    new-instance v4, Lorg/xutils/image/ReusableBitmapDrawable;

    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/xutils/image/ReusableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v4    # "result":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 137
    :catchall_3
    move-exception v5

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v5

    :catchall_4
    move-exception v5

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v5

    .line 106
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method public static decodeGif(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Movie;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;
    .param p2, "cancelable"    # Lorg/xutils/common/Callback$Cancelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 290
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    move-object v4, v5

    .line 318
    :goto_0
    return-object v4

    .line 299
    :cond_1
    const/4 v2, 0x0

    .line 301
    .local v2, "in":Ljava/io/InputStream;
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    new-instance v6, Lorg/xutils/common/Callback$CancelledException;

    const-string v7, "cancelled during decode image"

    invoke-direct {v6, v7}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 304
    :cond_2
    const/16 v0, 0x4000

    .line 305
    .local v0, "buffSize":I
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->mark(I)V

    .line 307
    invoke-static {v3}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v4

    .line 308
    .local v4, "movie":Landroid/graphics/Movie;
    if-nez v4, :cond_3

    .line 309
    new-instance v6, Ljava/io/IOException;

    const-string v7, "decode image error"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 312
    .end local v4    # "movie":Landroid/graphics/Movie;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 318
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "movie":Landroid/graphics/Movie;
    :cond_3
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 314
    .end local v0    # "buffSize":I
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "movie":Landroid/graphics/Movie;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 315
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v4, v5

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "buffSize":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 314
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getRotateAngle(Ljava/lang/String;)I
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "angle":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 549
    .local v2, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 552
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 563
    :pswitch_0
    const/4 v0, 0x0

    .line 569
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    return v0

    .line 554
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 555
    goto :goto_0

    .line 557
    :pswitch_2
    const/16 v0, 0xb4

    .line 558
    goto :goto_0

    .line 560
    :pswitch_3
    const/16 v0, 0x10e

    .line 561
    goto :goto_0

    .line 566
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 567
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 612
    .local v1, "cacheFile":Lorg/xutils/cache/DiskCacheFile;
    :try_start_0
    sget-object v3, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    invoke-virtual {v3, v4}, Lorg/xutils/cache/LruDiskCache;->getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 616
    .local v0, "bitmapOps":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 617
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 618
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 619
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 620
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 625
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 627
    .end local v0    # "bitmapOps":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .line 625
    :cond_0
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 627
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v2

    .line 623
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static isGif(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 150
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    :try_start_1
    invoke-static {v3, v4, v5, v6}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v1

    .line 152
    .local v1, "header":[B
    sget-object v4, Lorg/xutils/image/ImageDecoder;->GIF_HEADER:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 156
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 159
    .end local v1    # "header":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_0
    return v4

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    const/4 v4, 0x0

    goto :goto_0

    .line 156
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 153
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "angle"    # I
    .param p2, "recycleSource"    # Z

    .prologue
    .line 515
    const/4 v8, 0x0

    .line 517
    .local v8, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 519
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 520
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 522
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 528
    .end local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    .line 529
    if-eqz p2, :cond_1

    if-eq v8, p0, :cond_1

    .line 530
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 531
    const/4 p0, 0x0

    .line 536
    :cond_1
    :goto_1
    return-object v8

    .line 523
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v7

    .line 524
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 534
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_2
    move-object v8, p0

    goto :goto_1
.end method

.method private static saveThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;
    .param p2, "thumbBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 580
    new-instance v1, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v1}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 581
    .local v1, "entity":Lorg/xutils/cache/DiskCacheEntity;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 581
    invoke-virtual {v1, v5}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "cacheFile":Lorg/xutils/cache/DiskCacheFile;
    const/4 v3, 0x0

    .line 586
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    sget-object v5, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    invoke-virtual {v5, v1}, Lorg/xutils/cache/LruDiskCache;->createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_0

    .line 588
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1
    sget-boolean v5, Lorg/xutils/image/ImageDecoder;->supportWebP:Z

    if-eqz v5, :cond_1

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v6, 0x50

    invoke-virtual {p2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 590
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 591
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v3, v4

    .line 597
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 598
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 600
    :goto_1
    return-void

    .line 589
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_1
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 593
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 594
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 595
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 597
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 598
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 597
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 598
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 597
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 593
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method
