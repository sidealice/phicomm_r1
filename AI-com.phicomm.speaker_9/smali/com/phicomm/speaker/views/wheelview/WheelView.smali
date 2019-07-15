.class public Lcom/phicomm/speaker/views/wheelview/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/wheelview/WheelView$Action;
    }
.end annotation


# instance fields
.field A:I

.field B:I

.field C:J

.field D:I

.field private E:Landroid/view/GestureDetector;

.field private F:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:F

.field private K:I

.field private L:I

.field private M:I

.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field c:Lcom/phicomm/speaker/views/wheelview/b/a;

.field d:Ljava/util/concurrent/ScheduledExecutorService;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field g:Landroid/graphics/Paint;

.field h:Lcom/phicomm/speaker/views/wheelview/a/c;

.field i:I

.field j:I

.field k:I

.field l:F

.field m:I

.field n:I

.field o:I

.field p:Z

.field q:F

.field r:F

.field s:F

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 p2, 0xb

    .line 107
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    const/4 p2, 0x0

    .line 121
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->J:F

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->C:J

    const/16 v0, 0x11

    .line 131
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->K:I

    .line 135
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->L:I

    .line 139
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->M:I

    .line 159
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->m:I

    .line 160
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->n:I

    .line 161
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->o:I

    .line 163
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPickerViewText"

    const/4 v3, 0x0

    .line 527
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 528
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 167
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->a:Landroid/content/Context;

    .line 168
    new-instance v0, Lcom/phicomm/speaker/views/wheelview/c;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/wheelview/c;-><init>(Lcom/phicomm/speaker/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->b:Landroid/os/Handler;

    .line 169
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/phicomm/speaker/views/wheelview/b;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/wheelview/b;-><init>(Lcom/phicomm/speaker/views/wheelview/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->E:Landroid/view/GestureDetector;

    .line 170
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->E:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    .line 173
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->i:I

    .line 175
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    const/4 p1, -0x1

    .line 176
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    .line 178
    invoke-direct {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->d()V

    const/high16 p1, 0x41800000    # 16.0f

    .line 180
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 543
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 544
    iget-object v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 545
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->K:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->L:I

    goto :goto_0

    .line 553
    :cond_1
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->L:I

    goto :goto_0

    .line 550
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->L:I

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 560
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 561
    iget-object v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 562
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->K:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->M:I

    goto :goto_0

    .line 570
    :cond_1
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->M:I

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->M:I

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->g:Landroid/graphics/Paint;

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->f()V

    .line 214
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->A:I

    .line 216
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->A:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->y:I

    .line 218
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->A:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->B:I

    .line 220
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->D:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    .line 222
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    .line 223
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    .line 224
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->y:I

    iget v2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->s:F

    .line 226
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 227
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v0}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    .line 234
    :cond_2
    :goto_0
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    return-void
.end method

.method private f()V
    .locals 6

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 242
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3, v2}, Lcom/phicomm/speaker/views/wheelview/a/c;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v4, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 246
    iget v4, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->j:I

    if-le v3, v4, :cond_0

    .line 247
    iput v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->j:I

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    const-string v4, "\u661f\u671f"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 252
    iget v4, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    if-le v3, v4, :cond_1

    .line 253
    iput v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 256
    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 665
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 666
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 667
    new-array v2, v1, [F

    .line 668
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move p1, v0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 670
    aget p2, v2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/2addr p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method

.method public a()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->F:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->F:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->F:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->F:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected final a(F)V
    .locals 7

    .line 274
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a()V

    .line 276
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/phicomm/speaker/views/wheelview/a;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/views/wheelview/a;-><init>(Lcom/phicomm/speaker/views/wheelview/WheelView;F)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->F:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final a(I)V
    .locals 7

    .line 324
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a()V

    add-int/lit8 p1, p1, 0x1

    .line 326
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    sub-int/2addr p1, v0

    .line 327
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v1}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    if-gez p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v0}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v0}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    :goto_0
    int-to-float p1, p1

    .line 334
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    .line 336
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/phicomm/speaker/views/wheelview/e;

    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/views/wheelview/e;-><init>(Lcom/phicomm/speaker/views/wheelview/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->F:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method a(Lcom/phicomm/speaker/views/wheelview/WheelView$Action;)V
    .locals 7

    .line 260
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a()V

    .line 261
    sget-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->FLING:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->DAGGLE:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    if-ne p1, v0, :cond_2

    .line 262
    :cond_0
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float p1, p1

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    rem-float/2addr p1, v0

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    .line 263
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    int-to-float p1, p1

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 264
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    goto :goto_0

    .line 266
    :cond_1
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    neg-int p1, p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    .line 270
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/phicomm/speaker/views/wheelview/e;

    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/views/wheelview/e;-><init>(Lcom/phicomm/speaker/views/wheelview/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->F:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 292
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final c()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->c:Lcom/phicomm/speaker/views/wheelview/b/a;

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcom/phicomm/speaker/views/wheelview/d;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/wheelview/d;-><init>(Lcom/phicomm/speaker/views/wheelview/WheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/phicomm/speaker/views/wheelview/a/c;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->H:I

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v0}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 371
    iget-object v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    if-nez v1, :cond_0

    return-void

    .line 375
    :cond_0
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    new-array v8, v1, [Ljava/lang/Object;

    .line 377
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v1, v1

    iget v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->w:I

    .line 380
    :try_start_0
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    iget v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->w:I

    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    :goto_0
    iget-boolean v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    const/4 v9, 0x0

    if-nez v1, :cond_2

    .line 386
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    if-gez v1, :cond_1

    .line 387
    iput v9, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    .line 389
    :cond_1
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    iget-object v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v2}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    .line 390
    iget-object v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v1}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    goto :goto_1

    .line 395
    :cond_2
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    if-gez v1, :cond_3

    .line 397
    iget-object v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v1}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v1

    iget v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    .line 400
    :cond_3
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    iget-object v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v2}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    .line 401
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    iget-object v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v2}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    .line 406
    :cond_4
    :goto_1
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v1, v1

    iget v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    rem-float/2addr v1, v2

    float-to-int v10, v1

    move v1, v9

    .line 409
    :goto_2
    iget v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    if-ge v1, v2, :cond_a

    .line 411
    iget v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->v:I

    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    .line 414
    iget-boolean v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    if-eqz v3, :cond_7

    if-gez v2, :cond_5

    .line 416
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_5

    move v2, v9

    .line 421
    :cond_5
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_6

    .line 422
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v3

    sub-int/2addr v2, v3

    .line 423
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_6

    .line 424
    iget-object v2, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v2}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 427
    :cond_6
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3, v2}, Lcom/phicomm/speaker/views/wheelview/a/c;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v1

    goto :goto_3

    :cond_7
    if-gez v2, :cond_8

    const-string v2, ""

    .line 429
    aput-object v2, v8, v1

    goto :goto_3

    .line 430
    :cond_8
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_9

    const-string v2, ""

    .line 431
    aput-object v2, v8, v1

    goto :goto_3

    .line 433
    :cond_9
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v3, v2}, Lcom/phicomm/speaker/views/wheelview/a/c;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 440
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    int-to-float v4, v1

    iget v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    iget-object v6, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->g:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 441
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    int-to-float v4, v1

    iget v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    iget-object v6, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->g:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 443
    iget-object v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->G:Ljava/lang/String;

    const/high16 v2, 0x40c00000    # 6.0f

    if-eqz v1, :cond_b

    .line 444
    iget v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->G:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 446
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->G:Ljava/lang/String;

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget v4, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->s:F

    iget-object v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    move v1, v9

    .line 449
    :goto_4
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    if-ge v1, v3, :cond_12

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 453
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v4, v3

    int-to-float v5, v10

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v11

    .line 454
    iget v6, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->A:I

    int-to-double v13, v6

    div-double/2addr v4, v13

    const-wide v13, 0x4056800000000000L    # 90.0

    div-double v11, v4, v11

    const-wide v15, 0x4066800000000000L    # 180.0

    mul-double/2addr v11, v15

    sub-double/2addr v13, v11

    double-to-float v6, v13

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v11, v6, v11

    if-gez v11, :cond_11

    const/high16 v11, -0x3d4c0000    # -90.0f

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_c

    goto/16 :goto_7

    .line 461
    :cond_c
    aget-object v6, v8, v1

    invoke-direct {v0, v6}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-direct {v0, v6}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Ljava/lang/String;)V

    .line 465
    invoke-direct {v0, v6}, Lcom/phicomm/speaker/views/wheelview/WheelView;->b(Ljava/lang/String;)V

    .line 466
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->B:I

    int-to-double v11, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    iget v15, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->B:I

    move/from16 v17, v10

    int-to-double v9, v15

    mul-double/2addr v13, v9

    sub-double/2addr v11, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget v13, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-double v13, v13

    mul-double/2addr v9, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v13

    sub-double/2addr v11, v9

    double-to-float v9, v11

    const/4 v10, 0x0

    .line 468
    invoke-virtual {v7, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 470
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    cmpg-float v11, v9, v11

    const v13, 0x3f4ccccd    # 0.8f

    if-gtz v11, :cond_e

    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v11, v11

    add-float/2addr v11, v9

    iget v14, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_e

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 473
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    int-to-float v11, v11

    iget v14, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    sub-float/2addr v14, v9

    invoke-virtual {v7, v10, v10, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 474
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    mul-float/2addr v11, v13

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 475
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->M:I

    int-to-float v11, v11

    iget v13, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v11, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 478
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    sub-float/2addr v11, v9

    iget v9, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    int-to-float v9, v9

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v10, v11, v9, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 479
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 480
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->L:I

    int-to-float v3, v3

    iget v4, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 482
    :cond_e
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    cmpg-float v11, v9, v11

    if-gtz v11, :cond_f

    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v11, v11

    add-float/2addr v11, v9

    iget v14, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_f

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 485
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    int-to-float v11, v11

    iget v14, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    sub-float/2addr v14, v9

    invoke-virtual {v7, v10, v10, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 486
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    mul-float/2addr v11, v12

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 487
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->L:I

    int-to-float v11, v11

    iget v14, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v14, v14

    sub-float/2addr v14, v2

    iget-object v15, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v11, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 490
    iget v11, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    sub-float/2addr v11, v9

    iget v9, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    int-to-float v9, v9

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v10, v11, v9, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 491
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v13

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 492
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->M:I

    int-to-float v3, v3

    iget v4, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 494
    :cond_f
    iget v10, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->q:F

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_10

    iget v10, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v10, v10

    add-float/2addr v10, v9

    iget v9, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->r:F

    cmpg-float v9, v10, v9

    if-gtz v9, :cond_10

    .line 496
    iget v4, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 497
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->L:I

    int-to-float v3, v3

    iget v4, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 498
    iget-object v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    aget-object v4, v8, v1

    invoke-interface {v3, v4}, Lcom/phicomm/speaker/views/wheelview/a/c;->a(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 500
    iput v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->H:I

    .line 501
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectitem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->H:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 505
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 506
    iget v9, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    float-to-int v3, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v9, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 507
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v13

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 508
    iget v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->M:I

    int-to-float v3, v3

    iget v4, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->k:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 511
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_11
    :goto_7
    move/from16 v17, v10

    move v10, v9

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v9, v10

    move/from16 v10, v17

    goto/16 :goto_4

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 578
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->D:I

    .line 579
    invoke-direct {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->e()V

    .line 580
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->z:I

    iget p2, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->y:I

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 585
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->E:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_6

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 620
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->B:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->B:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->B:I

    int-to-double v4, p1

    mul-double/2addr v0, v4

    .line 621
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    float-to-double v4, p1

    add-double/2addr v0, v4

    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    float-to-double v4, p1

    div-double/2addr v0, v4

    double-to-int p1, v0

    .line 623
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v0, v0

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    rem-float/2addr v0, v1

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    rem-float/2addr v0, v1

    .line 624
    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    div-int/2addr v1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->I:I

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->C:J

    sub-long v5, v0, v3

    const-wide/16 v0, 0x78

    cmp-long p1, v5, v0

    if-lez p1, :cond_0

    .line 628
    sget-object p1, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->DAGGLE:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Lcom/phicomm/speaker/views/wheelview/WheelView$Action;)V

    goto/16 :goto_1

    .line 631
    :cond_0
    sget-object p1, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->CLICK:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Lcom/phicomm/speaker/views/wheelview/WheelView$Action;)V

    goto/16 :goto_1

    .line 594
    :cond_1
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->J:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->J:F

    .line 596
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    .line 599
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    if-nez p1, :cond_6

    .line 600
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    neg-int p1, p1

    int-to-float p1, p1

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    mul-float/2addr p1, v1

    .line 601
    iget-object v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    invoke-interface {v1}, Lcom/phicomm/speaker/views/wheelview/a/c;->a()I

    move-result v1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    mul-float/2addr v1, v3

    .line 602
    iget v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-double v3, v3

    iget v5, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    float-to-double v5, v5

    const-wide v7, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    float-to-double v5, p1

    cmpg-double v9, v3, v5

    if-gez v9, :cond_2

    .line 603
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    goto :goto_0

    .line 604
    :cond_2
    iget v3, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-double v3, v3

    iget v5, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    float-to-double v5, v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    float-to-double v5, v1

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 605
    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 608
    :cond_3
    :goto_0
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_4

    float-to-int p1, p1

    .line 609
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    goto :goto_1

    .line 610
    :cond_4
    iget p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float p1, p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    float-to-int p1, v1

    .line 611
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    goto :goto_1

    .line 588
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->C:J

    .line 589
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a()V

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->J:F

    .line 636
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->invalidate()V

    return v2
.end method

.method public final setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->h:Lcom/phicomm/speaker/views/wheelview/a/c;

    .line 351
    invoke-direct {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->e()V

    .line 352
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->invalidate()V

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    const/4 p1, 0x0

    .line 315
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    .line 316
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->invalidate()V

    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 660
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->K:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->G:Ljava/lang/String;

    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/phicomm/speaker/views/wheelview/b/a;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->c:Lcom/phicomm/speaker/views/wheelview/b/a;

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->i:I

    .line 307
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->i:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 308
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->i:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setVisibleItemsCount(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x2

    .line 320
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/WheelView;->x:I

    return-void
.end method
