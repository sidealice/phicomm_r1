.class public Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ClipZoomImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;
    }
.end annotation


# static fields
.field public static a:F = 4.0f

.field private static final b:Ljava/lang/String; = "ClipZoomImageView"

.field private static c:F = 2.0f


# instance fields
.field private d:F

.field private e:Z

.field private final f:[F

.field private g:Landroid/view/ScaleGestureDetector;

.field private final h:Landroid/graphics/Matrix;

.field private i:Landroid/view/GestureDetector;

.field private j:Z

.field private k:I

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:Landroid/content/Context;

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 43
    iput p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->e:Z

    const/16 p2, 0x9

    .line 49
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->f:[F

    .line 55
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->p:Landroid/content/Context;

    .line 82
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;-><init>(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->i:Landroid/view/GestureDetector;

    .line 106
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->g:Landroid/view/ScaleGestureDetector;

    .line 107
    invoke-virtual {p0, p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(FF)Z
    .locals 3

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 443
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->k:I

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->j:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    return p0
.end method

.method static synthetic c()F
    .locals 1

    .line 32
    sget v0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c:F

    return v0
.end method

.method static synthetic c(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private d()V
    .locals 11

    .line 404
    invoke-direct {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v1

    .line 409
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v2

    .line 410
    sget-object v3, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect.width() =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , width - 2 * mHorizontalPadding ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v3, v7

    iget v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/2addr v5, v6

    sub-int v5, v1, v5

    int-to-double v9, v5

    cmpl-double v5, v3, v9

    const/4 v3, 0x0

    if-ltz v5, :cond_2

    .line 416
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 417
    iget v4, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 419
    :goto_0
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v9, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    sub-int v9, v1, v9

    int-to-float v9, v9

    cmpg-float v5, v5, v9

    if-gez v5, :cond_1

    .line 420
    iget v4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    .line 423
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v4, v7

    iget v7, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    mul-int/2addr v6, v7

    sub-int v6, v2, v6

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_4

    .line 424
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 425
    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget v4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 427
    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 428
    iget v3, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v2, v0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d()V

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    .line 212
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 213
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 7

    .line 383
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->draw(Landroid/graphics/Canvas;)V

    .line 387
    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    iget v2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    .line 388
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 389
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 387
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 2

    const-string v0, "cropCache.jpg"

    .line 396
    invoke-static {v0}, Lcom/phicomm/speaker/f/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/n;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 305
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 310
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 311
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 317
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 318
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 9

    .line 332
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->e:Z

    if-eqz v0, :cond_4

    .line 333
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v4

    iput v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    .line 340
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v1

    .line 341
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v2

    .line 343
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 344
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/2addr v6, v4

    sub-int/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v3, v5, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v5

    iget v7, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    mul-int/2addr v7, v4

    sub-int/2addr v5, v7

    if-le v0, v5, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/2addr v7, v4

    int-to-float v7, v7

    sub-float/2addr v5, v7

    int-to-float v7, v3

    div-float/2addr v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 351
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    if-ge v0, v7, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    mul-int/2addr v7, v4

    int-to-float v7, v7

    sub-float/2addr v5, v7

    int-to-float v7, v0

    div-float/2addr v5, v7

    .line 356
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    if-ge v3, v7, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/2addr v7, v4

    int-to-float v7, v7

    sub-float/2addr v5, v7

    int-to-float v7, v3

    div-float/2addr v5, v7

    .line 360
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    iget v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    mul-int/2addr v6, v4

    int-to-float v6, v6

    sub-float/2addr v7, v6

    int-to-float v6, v0

    div-float/2addr v7, v6

    .line 361
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 364
    :cond_3
    iput v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    .line 365
    iget v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sput v6, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c:F

    .line 366
    iget v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    sput v6, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a:F

    .line 367
    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    sub-int/2addr v1, v3

    div-int/2addr v1, v4

    int-to-float v1, v1

    sub-int/2addr v2, v0

    div-int/2addr v2, v4

    int-to-float v0, v2

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 368
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    .line 369
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    .line 368
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 371
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->e:Z

    :cond_4
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getScale()F

    move-result v0

    .line 172
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 174
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 182
    :cond_0
    sget v2, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a:F

    cmpg-float v2, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v2, :cond_1

    cmpl-float v2, v1, v4

    if-gtz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    :cond_2
    mul-float v2, v1, v0

    .line 187
    iget v4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 188
    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d:F

    div-float/2addr v1, v0

    :cond_3
    mul-float v2, v1, v0

    .line 190
    sget v4, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 191
    sget v1, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a:F

    div-float/2addr v1, v0

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    .line 197
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 196
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 198
    invoke-direct {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d()V

    .line 199
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 233
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->i:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->g:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, p1, :cond_1

    .line 244
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v4, v6

    .line 245
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    .line 253
    iget v3, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->o:I

    if-eq p1, v3, :cond_2

    .line 254
    iput-boolean v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->n:Z

    .line 255
    iput v4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->l:F

    .line 256
    iput v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->m:F

    .line 259
    :cond_2
    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->o:I

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 262
    :pswitch_0
    iget p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->l:F

    sub-float p1, v4, p1

    .line 263
    iget p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->m:F

    sub-float p2, v5, p2

    .line 265
    iget-boolean v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->n:Z

    if-nez v1, :cond_3

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a(FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->n:Z

    .line 268
    :cond_3
    iget-boolean v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->n:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 270
    invoke-direct {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_4

    move p1, v2

    .line 276
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->r:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5

    move p2, v2

    .line 279
    :cond_5
    iget-object v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 280
    invoke-direct {p0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d()V

    .line 281
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 283
    :cond_6
    iput v4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->l:F

    .line 284
    iput v5, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->m:F

    goto :goto_1

    .line 289
    :pswitch_1
    iput v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->o:I

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHorizontalPadding(I)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->q:I

    return-void
.end method
