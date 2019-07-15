.class public Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;
.super Landroid/view/View;
.source "MyThreeCircleAnimationView.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->j:F

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->k:D

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 96
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    iget v0, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->j:F

    float-to-double v0, v0

    const-wide v2, 0x40091eb851eb851fL    # 3.14

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 184
    iget-object v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->f:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->g:F

    iget v4, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    add-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    float-to-double v5, v5

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget v5, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->i:F

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->g:F

    iget v5, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    float-to-double v6, v6

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iget v0, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->i:F

    float-to-double v0, v0

    sub-double/2addr v4, v0

    double-to-float v0, v4

    iget-object v1, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->a:Landroid/graphics/Paint;

    .line 184
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->g:F

    iget v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->g:F

    iget-object v3, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    iget-object v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    float-to-double v1, v1

    iget v4, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    float-to-double v4, v4

    const-wide v6, 0x3fe0bf258bf258bfL    # 0.5233333333333333

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    add-double/2addr v1, v4

    double-to-float v1, v1

    iget-object v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->g:F

    iget v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->g:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    float-to-double v2, v2

    iget v4, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->h:F

    float-to-double v4, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/phicomm/speaker/views/MyThreeCircleAnimationView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
