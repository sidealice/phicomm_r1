.class public Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;
.super Landroid/view/View;
.source "ClipImageBorderView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#FFFFFF"

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->d:I

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->e:I

    .line 53
    iget p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->e:I

    int-to-float p2, p2

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 55
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 53
    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->e:I

    .line 56
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    .line 57
    iget-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->c:I

    .line 66
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->c:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->b:I

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    const-string v1, "#cc000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 73
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 72
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->b:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->b:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 79
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 78
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    int-to-float v2, v0

    iget v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->b:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 85
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->b:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 84
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->a:I

    return-void
.end method
