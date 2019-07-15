.class public final Lcom/phicomm/speaker/zxing/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Landroid/text/TextPaint;

.field d:Landroid/graphics/Paint;

.field e:Landroid/text/StaticLayout;

.field f:[I

.field private g:Lcom/phicomm/speaker/zxing/camera/d;

.field private final h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Bitmap;

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    .line 103
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0x28

    .line 67
    iput v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    const/4 v1, 0x6

    .line 69
    iput v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    const/16 v1, 0x11

    .line 78
    iput v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->q:I

    const/4 v1, 0x3

    .line 94
    new-array v1, v1, [I

    const/16 v2, 0x70

    const/16 v3, 0x10

    const/16 v4, 0xad

    const/4 v5, 0x0

    .line 95
    invoke-static {v3, v5, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v1, v5

    const/16 v6, 0xff

    const/16 v7, 0xf9

    .line 96
    invoke-static {v6, v5, v4, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v1, v7

    .line 97
    invoke-static {v3, v5, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iput-object v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->f:[I

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 106
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->p:F

    .line 107
    iget v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    int-to-float v2, v2

    iget v3, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->p:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    .line 111
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    .line 112
    iget-object v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 113
    iget-object v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 114
    iget-object v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    iget v3, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->q:I

    int-to-float v3, v3

    iget v4, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->p:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 115
    iget-object v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    const-string v3, "System"

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 116
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v9, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    iget v11, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3fc00000    # 1.5f

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->e:Landroid/text/StaticLayout;

    .line 119
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    .line 120
    iget-object v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b6

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->j:I

    const v2, 0x7f060097

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->k:I

    const v2, 0x7f06006f

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->l:I

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->m:Ljava/util/List;

    .line 129
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->d:Landroid/graphics/Paint;

    .line 130
    iget-object v1, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->d:Landroid/graphics/Paint;

    iget v2, v0, Lcom/phicomm/speaker/zxing/ViewfinderView;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->i:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->invalidate()V

    return-void
.end method

.method public a(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->m:Ljava/util/List;

    .line 250
    monitor-enter v0

    .line 251
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0xa

    .line 255
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 257
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTextHeight()I
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget v0, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->p:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 149
    invoke-virtual {v7, v9, v8}, Lcom/phicomm/speaker/zxing/ViewfinderView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 150
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->g:Lcom/phicomm/speaker/zxing/camera/d;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->g:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/d;->e()Landroid/graphics/Rect;

    move-result-object v10

    .line 154
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->g:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/d;->f()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v10, :cond_7

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 158
    :cond_1
    iget-boolean v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->a:Z

    if-nez v0, :cond_2

    .line 159
    iput-boolean v9, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->a:Z

    .line 160
    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    iput v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->r:I

    .line 161
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    iput v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->s:I

    .line 163
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 167
    iget-object v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    iget-object v2, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->i:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget v2, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->k:I

    goto :goto_0

    :cond_3
    iget v2, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->j:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v12, v0

    .line 169
    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 170
    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    iget v0, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v9

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 172
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v9

    int-to-float v2, v0

    int-to-float v4, v11

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->i:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v8, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 180
    :cond_4
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->p:F

    const/4 v8, 0x0

    mul-float v11, v8, v0

    .line 182
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v4, v0, v11

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v3, v0, v11

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 184
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v2, v0, v11

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v1, v0, v11

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v3, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 189
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v3, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 191
    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v3, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v3, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->n:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->h:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 200
    iget v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->r:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->r:I

    .line 201
    iget v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->r:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->s:I

    if-lt v0, v1, :cond_5

    .line 202
    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    iput v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->r:I

    .line 204
    :cond_5
    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 205
    iget v1, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->r:I

    sub-int/2addr v1, v9

    .line 206
    iget v2, v10, Landroid/graphics/Rect;->right:I

    iget v3, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x0

    .line 207
    iget v3, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->r:I

    add-int/2addr v3, v9

    .line 208
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    int-to-float v12, v4

    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v15, v4

    iget v4, v10, Landroid/graphics/Rect;->right:I

    int-to-float v14, v4

    iget-object v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->f:[I

    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v13, v15

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 209
    iget-object v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->d:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v9, 0x41200000    # 10.0f

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v9, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 210
    iget-object v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->d:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f06006f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v0, -0xa

    int-to-float v4, v0

    int-to-float v5, v1

    add-int/lit8 v2, v2, 0xa

    int-to-float v9, v2

    int-to-float v11, v3

    .line 212
    iget-object v12, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->d:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v4

    move v2, v5

    move v3, v9

    move v4, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->p:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 216
    iget-object v0, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->e:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    const-wide/16 v1, 0x50

    .line 219
    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v3, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v4, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v5, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->o:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x0

    iget v6, v7, Lcom/phicomm/speaker/zxing/ViewfinderView;->s:I

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/zxing/ViewfinderView;->postInvalidateDelayed(JIIII)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public setCameraManager(Lcom/phicomm/speaker/zxing/camera/d;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->g:Lcom/phicomm/speaker/zxing/camera/d;

    return-void
.end method

.method public setIsFirst(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->a:Z

    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 9

    .line 261
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 263
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 266
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->p:F

    .line 267
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->c:Landroid/text/TextPaint;

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/ViewfinderView;->e:Landroid/text/StaticLayout;

    .line 276
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->invalidate()V

    return-void
.end method
