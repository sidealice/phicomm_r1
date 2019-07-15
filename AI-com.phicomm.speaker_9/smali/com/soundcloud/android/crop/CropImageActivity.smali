.class public Lcom/soundcloud/android/crop/CropImageActivity;
.super Lcom/soundcloud/android/crop/MonitoredActivity;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/CropImageActivity$Cropper;
    }
.end annotation


# static fields
.field private static final SIZE_DEFAULT:I = 0x800

.field private static final SIZE_LIMIT:I = 0x1000


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private cropView:Lcom/soundcloud/android/crop/HighlightView;

.field private exifRotation:I

.field private final handler:Landroid/os/Handler;

.field private imageView:Lcom/soundcloud/android/crop/CropImageView;

.field private isSaving:Z

.field private maxX:I

.field private maxY:I

.field private rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

.field private sampleSize:I

.field private saveAsPng:Z

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/MonitoredActivity;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/RotateBitmap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    return p0
.end method

.method static synthetic access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    return p0
.end method

.method static synthetic access$800(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/HighlightView;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calculateBitmapSampleSize(Landroid/net/Uri;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-static {p1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 167
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxImageSize()I

    move-result v2

    .line 169
    :goto_0
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p1, v1

    if-gt p1, v2, :cond_1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr p1, v1

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 164
    :goto_2
    invoke-static {v2}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private clearImageView()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->clear()V

    .line 374
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->recycle()V

    .line 377
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private decodeRegionCrop(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/soundcloud/android/crop/CropImageActivity;->clearImageView()V

    const/4 v4, 0x0

    .line 329
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v1, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    .line 330
    :try_start_1
    invoke-static {v5, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 331
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v7

    .line 332
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    .line 334
    iget v9, v1, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    if-eqz v9, :cond_2

    .line 336
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 337
    iget v10, v1, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 339
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 340
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v12, p1

    invoke-direct {v11, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 343
    iget v9, v10, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x0

    cmpg-float v9, v9, v11

    if-gez v9, :cond_0

    int-to-float v9, v7

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    iget v12, v10, Landroid/graphics/RectF;->top:F

    cmpg-float v12, v12, v11

    if-gez v12, :cond_1

    int-to-float v11, v8

    :cond_1
    invoke-virtual {v10, v9, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 344
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v10, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v10, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-direct {v9, v11, v12, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v9

    goto :goto_1

    :cond_2
    move-object/from16 v12, p1

    .line 348
    :goto_1
    :try_start_2
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v6, v12, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    .line 349
    :try_start_3
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gt v4, v2, :cond_3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_4

    .line 350
    :cond_3
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    .line 351
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v2, v9

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v3, v9

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 352
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object v13, v6

    move-object/from16 v18, v4

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v4, v6

    goto :goto_3

    :cond_4
    move-object v2, v6

    .line 367
    :goto_2
    invoke-static {v5}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v6, v2

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 356
    :goto_3
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rectangle "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is outside of the image ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    :goto_4
    move-object v4, v5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    :goto_5
    move-object v4, v5

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v5, v4

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    .line 364
    :goto_6
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOM cropping image: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    invoke-direct {v1, v2}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    .line 361
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error cropping image: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    invoke-direct {v1, v2}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 367
    :goto_8
    invoke-static {v4}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    :goto_9
    return-object v6

    :goto_a
    invoke-static {v5}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private getMaxImageSize()I
    .locals 2

    .line 176
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxTextureSize()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    return v0

    :cond_0
    const/16 v1, 0x1000

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaxTextureSize()I
    .locals 3

    const/4 v0, 0x1

    .line 186
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd33

    .line 187
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 188
    aget v0, v0, v1

    return v0
.end method

.method private loadInput()V
    .locals 5

    .line 121
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "aspect_x"

    .line 125
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    const-string v2, "aspect_y"

    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    const-string v2, "max_x"

    .line 127
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    const-string v2, "max_y"

    .line 128
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    const-string v2, "as_png"

    const/4 v3, 0x0

    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveAsPng:Z

    const-string v2, "output"

    .line 130
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    .line 134
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil;->getExifRotation(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->calculateBitmapSampleSize(Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    .line 140
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    new-instance v3, Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v3, v0, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 148
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOM reading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 145
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :goto_2
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :goto_4
    return-void
.end method

.method private onSaveClicked()V
    .locals 7

    .line 268
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    .line 274
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/soundcloud/android/crop/HighlightView;->getScaledCropRect(F)Landroid/graphics/Rect;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 276
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 280
    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    if-gt v2, v4, :cond_1

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    if-le v3, v4, :cond_3

    :cond_1
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 282
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v3, v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v3, :cond_2

    .line 283
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    .line 284
    iget v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    goto :goto_0

    .line 286
    :cond_2
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    .line 287
    iget v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    move v6, v3

    move v3, v2

    move v2, v6

    .line 292
    :cond_3
    :goto_0
    :try_start_0
    invoke-direct {p0, v1, v2, v3}, Lcom/soundcloud/android/crop/CropImageActivity;->decodeRegionCrop(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 300
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v3, Lcom/soundcloud/android/crop/RotateBitmap;

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v3, v1, v4}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3, v0}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    .line 301
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->center()V

    .line 302
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    :cond_4
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->saveImage(Landroid/graphics/Bitmap;)V

    return-void

    :catch_0
    move-exception v0

    .line 294
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 295
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/soundcloud/android/crop/R$string;->crop__saving:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$5;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/soundcloud/android/crop/CropUtil;->startBackgroundJob(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    :goto_0
    return-void
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 386
    :try_start_1
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveAsPng:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 394
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 391
    :goto_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 398
    :goto_3
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-static {p0, v1, v2}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 397
    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/CropUtil;->copyExifRotation(Ljava/io/File;Ljava/io/File;)Z

    .line 402
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultUri(Landroid/net/Uri;)V

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 394
    :goto_4
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .line 406
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$6;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void
.end method

.method private setResultException(Ljava/lang/Throwable;)V
    .locals 2

    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x194

    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setResultUri(Landroid/net/Uri;)V
    .locals 2

    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setupViews()V
    .locals 2

    .line 94
    sget v0, Lcom/soundcloud/android/crop/R$layout;->crop__activity_crop:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setContentView(I)V

    .line 96
    sget v0, Lcom/soundcloud/android/crop/R$id;->crop_image:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/CropImageView;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    .line 97
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iput-object p0, v0, Lcom/soundcloud/android/crop/CropImageView;->context:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$1;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$1;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/CropImageView;->setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V

    .line 106
    sget v0, Lcom/soundcloud/android/crop/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$2;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$2;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lcom/soundcloud/android/crop/R$id;->btn_done:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$3;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$3;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupWindowFlags()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method private startCrop()V
    .locals 4

    .line 192
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/soundcloud/android/crop/R$string;->crop__wait:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$4;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/CropImageActivity$4;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/soundcloud/android/crop/CropUtil;->startBackgroundJob(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method

.method public isSaving()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->setupWindowFlags()V

    .line 75
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->setupViews()V

    .line 77
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->loadInput()V

    .line 78
    iget-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->startCrop()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 418
    invoke-super {p0}, Lcom/soundcloud/android/crop/MonitoredActivity;->onDestroy()V

    .line 419
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method
