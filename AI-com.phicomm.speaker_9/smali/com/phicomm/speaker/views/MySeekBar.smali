.class public Lcom/phicomm/speaker/views/MySeekBar;
.super Landroid/support/v7/widget/AppCompatSeekBar;
.source "MySeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/MySeekBar$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:Lcom/phicomm/speaker/views/MySeekBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/views/MySeekBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/MySeekBar;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/MySeekBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 45
    sget-object v0, Lcom/phicomm/speaker/R$styleable;->MySeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    const/4 v0, 0x2

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object p2, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/high16 v1, -0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MySeekBar;->getThumbOffset()I

    move-result p2

    iget-object v1, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MySeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {p0, p2, v1, v3, v0}, Lcom/phicomm/speaker/views/MySeekBar;->setPadding(IIII)V

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 57
    new-instance p1, Lcom/phicomm/speaker/views/MySeekBar$1;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/views/MySeekBar$1;-><init>(Lcom/phicomm/speaker/views/MySeekBar;)V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/MySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MySeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/MySeekBar;->setMax(I)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/MySeekBar;)Lcom/phicomm/speaker/views/MySeekBar$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/phicomm/speaker/views/MySeekBar;->d:Lcom/phicomm/speaker/views/MySeekBar$a;

    return-object p0
.end method


# virtual methods
.method public getShowMax()I
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MySeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getShowMin()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    return v0
.end method

.method public getShowProgress()I
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MySeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MySeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MySeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 90
    iget-object v1, p0, Lcom/phicomm/speaker/views/MySeekBar;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/phicomm/speaker/views/MySeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget v0, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    sub-int/2addr p1, v0

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

.method public setProgressChangeListener(Lcom/phicomm/speaker/views/MySeekBar$a;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar;->d:Lcom/phicomm/speaker/views/MySeekBar$a;

    return-void
.end method

.method public setShowProgress(I)V
    .locals 1

    .line 94
    iget v0, p0, Lcom/phicomm/speaker/views/MySeekBar;->c:I

    sub-int/2addr p1, v0

    .line 95
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/MySeekBar;->setProgress(I)V

    return-void
.end method
