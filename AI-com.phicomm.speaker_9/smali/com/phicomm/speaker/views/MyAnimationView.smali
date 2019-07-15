.class public Lcom/phicomm/speaker/views/MyAnimationView;
.super Landroid/view/View;
.source "MyAnimationView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyAnimationView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/phicomm/speaker/views/MyAnimationView;->i:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget v0, p0, Lcom/phicomm/speaker/views/MyAnimationView;->i:F

    float-to-double v0, v0

    const-wide v2, 0x40091eb851eb851fL    # 3.14

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 143
    iget-object v2, p0, Lcom/phicomm/speaker/views/MyAnimationView;->e:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/phicomm/speaker/views/MyAnimationView;->f:F

    iget v4, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    add-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    float-to-double v5, v5

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget v5, p0, Lcom/phicomm/speaker/views/MyAnimationView;->h:F

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, p0, Lcom/phicomm/speaker/views/MyAnimationView;->f:F

    iget v5, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    float-to-double v6, v6

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iget v0, p0, Lcom/phicomm/speaker/views/MyAnimationView;->h:F

    float-to-double v0, v0

    sub-double/2addr v4, v0

    double-to-float v0, v4

    iget-object v1, p0, Lcom/phicomm/speaker/views/MyAnimationView;->a:Landroid/graphics/Paint;

    .line 143
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyAnimationView;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/phicomm/speaker/views/MyAnimationView;->f:F

    iget v2, p0, Lcom/phicomm/speaker/views/MyAnimationView;->f:F

    iget-object v3, p0, Lcom/phicomm/speaker/views/MyAnimationView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyAnimationView;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    iget-object v2, p0, Lcom/phicomm/speaker/views/MyAnimationView;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyAnimationView;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/phicomm/speaker/views/MyAnimationView;->f:F

    iget v2, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/phicomm/speaker/views/MyAnimationView;->f:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/phicomm/speaker/views/MyAnimationView;->g:F

    iget-object v3, p0, Lcom/phicomm/speaker/views/MyAnimationView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
