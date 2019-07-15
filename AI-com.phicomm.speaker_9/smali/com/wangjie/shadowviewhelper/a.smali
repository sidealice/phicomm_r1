.class public Lcom/wangjie/shadowviewhelper/a;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowViewDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:I

.field private d:I

.field private e:Lcom/wangjie/shadowviewhelper/ShadowProperty;

.field private f:I

.field private g:Landroid/graphics/RectF;

.field private h:F

.field private i:F

.field private j:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Lcom/wangjie/shadowviewhelper/ShadowProperty;IFF)V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    .line 85
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->j:Landroid/graphics/PorterDuffXfermode;

    .line 34
    iput-object p1, p0, Lcom/wangjie/shadowviewhelper/a;->e:Lcom/wangjie/shadowviewhelper/ShadowProperty;

    .line 35
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->e:Lcom/wangjie/shadowviewhelper/ShadowProperty;

    invoke-virtual {v0}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->getShadowOffset()I

    move-result v0

    iput v0, p0, Lcom/wangjie/shadowviewhelper/a;->f:I

    .line 37
    iput p3, p0, Lcom/wangjie/shadowviewhelper/a;->h:F

    .line 38
    iput p4, p0, Lcom/wangjie/shadowviewhelper/a;->i:F

    .line 40
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    .line 41
    iget-object p3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object p3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 46
    iget-object p3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 47
    iget-object p3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object p3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object p2, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->getShadowRadius()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->getShadowDx()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->getShadowDy()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->getShadowColor()I

    move-result p1

    invoke-virtual {p2, p3, p4, v0, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/wangjie/shadowviewhelper/a;->g:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->g:Landroid/graphics/RectF;

    iget v1, p0, Lcom/wangjie/shadowviewhelper/a;->h:F

    iget v2, p0, Lcom/wangjie/shadowviewhelper/a;->i:F

    iget-object v3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wangjie/shadowviewhelper/a;->j:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->g:Landroid/graphics/RectF;

    iget v1, p0, Lcom/wangjie/shadowviewhelper/a;->h:F

    iget v2, p0, Lcom/wangjie/shadowviewhelper/a;->i:F

    iget-object v3, p0, Lcom/wangjie/shadowviewhelper/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .line 59
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 60
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 62
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 63
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 64
    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 65
    iget-object p1, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/wangjie/shadowviewhelper/a;->c:I

    .line 66
    iget-object p1, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/wangjie/shadowviewhelper/a;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/wangjie/shadowviewhelper/a;->d:I

    .line 71
    iget-object p1, p0, Lcom/wangjie/shadowviewhelper/a;->e:Lcom/wangjie/shadowviewhelper/ShadowProperty;

    invoke-virtual {p1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->getShadowSide()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 72
    iget v0, p0, Lcom/wangjie/shadowviewhelper/a;->f:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    .line 73
    iget v1, p0, Lcom/wangjie/shadowviewhelper/a;->f:I

    goto :goto_1

    :cond_1
    move v1, v2

    .line 74
    :goto_1
    iget v3, p0, Lcom/wangjie/shadowviewhelper/a;->c:I

    and-int/lit16 v4, p1, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/wangjie/shadowviewhelper/a;->f:I

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    sub-int/2addr v3, v4

    .line 75
    iget v4, p0, Lcom/wangjie/shadowviewhelper/a;->d:I

    const/16 v5, 0x1000

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_3

    iget v2, p0, Lcom/wangjie/shadowviewhelper/a;->f:I

    :cond_3
    sub-int/2addr v4, v2

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v3

    int-to-float v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/wangjie/shadowviewhelper/a;->g:Landroid/graphics/RectF;

    .line 80
    invoke-virtual {p0}, Lcom/wangjie/shadowviewhelper/a;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
