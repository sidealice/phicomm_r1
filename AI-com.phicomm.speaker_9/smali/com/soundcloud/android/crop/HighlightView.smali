.class Lcom/soundcloud/android/crop/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/HighlightView$HandleMode;,
        Lcom/soundcloud/android/crop/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_HIGHLIGHT_COLOR:I = -0xcc4a1b

.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field private static final HANDLE_RADIUS_DP:F = 12.0f

.field public static final MOVE:I = 0x20

.field private static final OUTLINE_DP:F = 2.0f


# instance fields
.field cropRect:Landroid/graphics/RectF;

.field drawRect:Landroid/graphics/Rect;

.field private handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

.field private final handlePaint:Landroid/graphics/Paint;

.field private handleRadius:F

.field private highlightColor:I

.field private imageRect:Landroid/graphics/RectF;

.field private initialAspectRatio:F

.field private isFocused:Z

.field private maintainAspectRatio:Z

.field matrix:Landroid/graphics/Matrix;

.field private modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private outlineWidth:F

.field private final outsidePaint:Landroid/graphics/Paint;

.field private showCircle:Z

.field private showThirds:Z

.field private viewContext:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    .line 72
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .line 73
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    .line 81
    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->initStyles(Landroid/content/Context;)V

    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 5

    .line 376
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 378
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 379
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 380
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private dpToPx(F)F
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawHandles(Landroid/graphics/Canvas;)V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 195
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 197
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v0, v0

    .line 198
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 199
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawOutsideFallback(Landroid/graphics/Canvas;)V
    .locals 7

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 173
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawThirds(Landroid/graphics/Canvas;)V
    .locals 10

    .line 204
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    .line 206
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    .line 208
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v4, v2, v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v6, v2, v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    add-float v5, v2, v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v7, v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v8, v0, v1

    iget-object v9, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v1, v3

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v8, v0, v1

    iget-object v9, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initStyles(Landroid/content/Context;)V
    .locals 4

    .line 86
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/soundcloud/android/crop/R$attr;->cropImageStyle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 88
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    sget-object v1, Lcom/soundcloud/android/crop/R$styleable;->CropImageView:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    :try_start_0
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showThirds:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->showThirds:Z

    .line 91
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showCircle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->showCircle:Z

    .line 92
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_highlightColor:I

    const v2, -0xcc4a1b

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    .line 94
    invoke-static {}, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->values()[Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    move-result-object v0

    sget v2, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showHandles:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private isClipPathSupported(Landroid/graphics/Canvas;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 185
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlineWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/HighlightView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 135
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 136
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 139
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->isClipPathSupported(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 143
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawOutsideFallback(Landroid/graphics/Canvas;)V

    .line 148
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 149
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->showThirds:Z

    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawThirds(Landroid/graphics/Canvas;)V

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->showCircle:Z

    if-eqz v0, :cond_3

    .line 156
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    sget-object v1, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Always:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    sget-object v1, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    sget-object v1, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->Grow:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_5

    .line 161
    :cond_4
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawHandles(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getHit(FF)I
    .locals 7

    .line 232
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 238
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 240
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    move v3, v4

    .line 244
    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    if-eqz v1, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :cond_2
    move v5, v4

    .line 247
    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v2

    if-gez v6, :cond_3

    if-eqz v1, :cond_3

    or-int/lit8 v5, v5, 0x4

    .line 250
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    if-eqz v3, :cond_4

    or-int/lit8 v5, v5, 0x8

    .line 253
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    if-eqz v3, :cond_5

    or-int/lit8 v5, v5, 0x10

    :cond_5
    if-ne v5, v4, :cond_6

    float-to-int p1, p1

    float-to-int p2, p2

    .line 258
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v5, 0x20

    :cond_6
    return v5
.end method

.method public getScaledCropRect(F)Landroid/graphics/Rect;
    .locals 5

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, p1

    float-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method growBy(FF)V
    .locals 5

    .line 312
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 314
    iget p2, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float p2, p1, p2

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 316
    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    mul-float/2addr p1, p2

    .line 323
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v2, p1, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_2

    .line 324
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v4, v3, p1

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 325
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    .line 326
    iget-boolean v2, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v2, :cond_2

    .line 327
    iget p2, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float p2, p1, p2

    :cond_2
    cmpl-float v2, p2, v1

    if-lez v2, :cond_3

    .line 330
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v4, v3, p2

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 331
    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr p2, v2

    div-float/2addr p2, v3

    .line 332
    iget-boolean v2, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v2, :cond_3

    .line 333
    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    mul-float/2addr p1, p2

    :cond_3
    neg-float p1, p1

    neg-float p2, p2

    .line 337
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 341
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x41c80000    # 25.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 342
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float p1, p2, p1

    neg-float p1, p1

    div-float/2addr p1, v3

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 344
    :cond_4
    iget-boolean p1, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float/2addr p2, p1

    .line 347
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    .line 348
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 352
    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    .line 353
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 354
    :cond_7
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    .line 355
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 357
    :cond_8
    :goto_1
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 358
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 359
    :cond_9
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a

    .line 360
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 363
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 364
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 365
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method handleMotion(IFF)V
    .locals 3

    .line 267
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float/2addr p2, p1

    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    .line 271
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p3, p1

    .line 270
    invoke-virtual {p0, p2, p3}, Lcom/soundcloud/android/crop/HighlightView;->moveBy(FF)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move p2, v2

    :cond_1
    const/16 v1, 0x18

    and-int/2addr v1, p1

    if-nez v1, :cond_2

    move p3, v2

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr p2, v1

    .line 283
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr p3, v1

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    int-to-float p1, v1

    mul-float/2addr p1, p3

    .line 284
    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/HighlightView;->growBy(FF)V

    :goto_1
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->isFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 384
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    return-void
.end method

.method moveBy(FF)V
    .locals 4

    .line 291
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 293
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 296
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    .line 297
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 298
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 296
    invoke-virtual {p1, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 300
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v2

    .line 301
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    .line 302
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 300
    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 304
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 305
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 306
    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    float-to-int p1, p1

    neg-int p1, p1

    iget p2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    float-to-int p2, p2

    neg-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 307
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lcom/soundcloud/android/crop/HighlightView;->isFocused:Z

    return-void
.end method

.method public setMode(Lcom/soundcloud/android/crop/HighlightView$ModifyMode;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 225
    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .line 226
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V
    .locals 1

    .line 101
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    .line 103
    iput-object p3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    .line 104
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    .line 105
    iput-boolean p4, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    .line 107
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    .line 108
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 110
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    const/16 p2, 0x32

    const/16 p3, 0x7d

    invoke-virtual {p1, p3, p2, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 111
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 113
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlineWidth:F

    .line 115
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 118
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    .line 120
    sget-object p1, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    return-void
.end method
