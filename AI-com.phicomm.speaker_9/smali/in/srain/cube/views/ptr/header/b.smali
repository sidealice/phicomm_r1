.class public Lin/srain/cube/views/ptr/header/b;
.super Landroid/view/animation/Animation;
.source "StoreHouseBarItem.java"


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:F

.field private final c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;


# virtual methods
.method public a(F)V
    .locals 2

    .line 68
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/b;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 62
    iput p1, p0, Lin/srain/cube/views/ptr/header/b;->d:F

    .line 63
    iput p2, p0, Lin/srain/cube/views/ptr/header/b;->e:F

    .line 64
    invoke-super {p0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    .line 51
    iput p1, p0, Lin/srain/cube/views/ptr/header/b;->b:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 72
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/b;->f:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/b;->f:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/b;->g:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/b;->g:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lin/srain/cube/views/ptr/header/b;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 56
    iget p2, p0, Lin/srain/cube/views/ptr/header/b;->d:F

    .line 57
    iget v0, p0, Lin/srain/cube/views/ptr/header/b;->e:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 58
    invoke-virtual {p0, p2}, Lin/srain/cube/views/ptr/header/b;->a(F)V

    return-void
.end method
