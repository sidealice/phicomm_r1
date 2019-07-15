.class public Lin/srain/cube/views/ptr/header/MaterialHeader;
.super Landroid/view/View;
.source "MaterialHeader.java"

# interfaces
.implements Lin/srain/cube/views/ptr/e;


# instance fields
.field private a:Lin/srain/cube/views/ptr/header/a;

.field private b:F

.field private c:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 23
    new-instance p1, Lin/srain/cube/views/ptr/header/MaterialHeader$1;

    invoke-direct {p1, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 34
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialHeader;)F
    .locals 0

    .line 17
    iget p0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    return p0
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialHeader;F)F
    .locals 0

    .line 17
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    return p1
.end method

.method private a()V
    .locals 2

    .line 79
    new-instance v0, Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lin/srain/cube/views/ptr/header/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    .line 80
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/a;->b(I)V

    .line 81
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/header/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/MaterialHeader;)Lin/srain/cube/views/ptr/header/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    return-object p0
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;
    .locals 0

    .line 17
    iget-object p0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    return-object p0
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 129
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 130
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a;->stop()V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V
    .locals 0

    .line 160
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a;->stop()V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 2

    .line 166
    invoke-virtual {p4}, Lin/srain/cube/views/ptr/a/a;->y()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p4, 0x2

    if-ne p3, p4, :cond_0

    .line 169
    iget-object p3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p4, p1

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Lin/srain/cube/views/ptr/header/a;->setAlpha(I)V

    .line 170
    iget-object p3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lin/srain/cube/views/ptr/header/a;->a(Z)V

    const p3, 0x3f4ccccd    # 0.8f

    mul-float p4, p1, p3

    .line 173
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {v0, v1, p3}, Lin/srain/cube/views/ptr/header/a;->a(FF)V

    .line 174
    iget-object p3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p3, p2}, Lin/srain/cube/views/ptr/header/a;->a(F)V

    const/high16 p2, -0x41800000    # -0.25f

    const p3, 0x3ecccccd    # 0.4f

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p2, p1

    .line 178
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p1, p2}, Lin/srain/cube/views/ptr/header/a;->b(F)V

    .line 179
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/header/a;->setAlpha(I)V

    .line 150
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a;->start()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    if-ne p1, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 114
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {v4}, Lin/srain/cube/views/ptr/header/a;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 116
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    iget v2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    iget v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 118
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {v1, p1}, Lin/srain/cube/views/ptr/header/a;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 107
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a;->getIntrinsicHeight()I

    move-result p1

    .line 108
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p1, p1}, Lin/srain/cube/views/ptr/header/a;->setBounds(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 100
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p2}, Lin/srain/cube/views/ptr/header/a;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 101
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setColorSchemeColors([I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a;->a([I)V

    .line 95
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    return-void
.end method

.method public setPtrFrameLayout(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 4

    .line 49
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$2;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$2;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    .line 56
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    new-instance v2, Lin/srain/cube/views/ptr/header/MaterialHeader$3;

    invoke-direct {v2, p0, v0}, Lin/srain/cube/views/ptr/header/MaterialHeader$3;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;Lin/srain/cube/views/ptr/g;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 74
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->c:Lin/srain/cube/views/ptr/PtrFrameLayout;

    .line 75
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->c:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lin/srain/cube/views/ptr/g;)V

    return-void
.end method
