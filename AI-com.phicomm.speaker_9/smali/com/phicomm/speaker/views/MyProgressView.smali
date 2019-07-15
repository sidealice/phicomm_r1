.class public Lcom/phicomm/speaker/views/MyProgressView;
.super Landroid/view/View;
.source "MyProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/MyProgressView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Lcom/phicomm/speaker/views/MyProgressView$a;

.field private f:Landroid/graphics/RectF;

.field private g:I

.field private h:F

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Lcom/phicomm/speaker/views/MyProgressView$a;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/views/MyProgressView$a;-><init>(Lcom/phicomm/speaker/views/MyProgressView;)V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    .line 33
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/MyProgressView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 7

    .line 37
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/R$styleable;->phiProgress:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    const/4 v1, 0x5

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    const/4 v2, 0x3

    .line 39
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    const/4 v2, 0x4

    const/high16 v3, -0x1000000

    .line 40
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x2

    const/high16 v4, -0x10000

    .line 41
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x6

    const/16 v5, 0x5a

    .line 42
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/phicomm/speaker/views/MyProgressView;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/phicomm/speaker/views/MyProgressView;->i:I

    const/16 v6, 0x64

    .line 44
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/phicomm/speaker/views/MyProgressView;->j:I

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget v0, v0, Lcom/phicomm/speaker/views/MyProgressView$a;->a:F

    iget-object v1, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget v1, v1, Lcom/phicomm/speaker/views/MyProgressView$a;->b:F

    iget-object v2, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget v2, v2, Lcom/phicomm/speaker/views/MyProgressView$a;->c:F

    iget-object v3, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    iget-object v5, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->g:I

    int-to-float v6, v0

    iget v7, p0, Lcom/phicomm/speaker/views/MyProgressView;->h:F

    iget-object v9, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/phicomm/speaker/views/MyProgressView;->getDefaultSize(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/phicomm/speaker/views/MyProgressView;->getDefaultSize(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->a:I

    .line 66
    iget p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->a:I

    iput p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->b:I

    .line 67
    iget p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->a:I

    iget p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->b:I

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/MyProgressView;->setMeasuredDimension(II)V

    .line 68
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->a:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p1, Lcom/phicomm/speaker/views/MyProgressView$a;->a:F

    .line 69
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget-object p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget p2, p2, Lcom/phicomm/speaker/views/MyProgressView$a;->a:F

    iput p2, p1, Lcom/phicomm/speaker/views/MyProgressView$a;->b:F

    .line 70
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget-object p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->e:Lcom/phicomm/speaker/views/MyProgressView$a;

    iget p2, p2, Lcom/phicomm/speaker/views/MyProgressView$a;->a:F

    iget-object v1, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v0

    sub-float/2addr p2, v1

    iput p2, p1, Lcom/phicomm/speaker/views/MyProgressView$a;->c:F

    .line 71
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 72
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->a:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 73
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/phicomm/speaker/views/MyProgressView;->f:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 75
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 93
    iget v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->i:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->j:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    int-to-float p1, p1

    mul-float/2addr v0, p1

    .line 96
    iget p1, p0, Lcom/phicomm/speaker/views/MyProgressView;->j:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->h:F

    .line 97
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->invalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->invalidate()V

    return-void
.end method

.method public setProgressWidth(F)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->invalidate()V

    return-void
.end method

.method public setRingColor(I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->invalidate()V

    return-void
.end method

.method public setRingWidth(F)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyProgressView;->invalidate()V

    return-void
.end method
