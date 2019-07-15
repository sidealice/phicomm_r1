.class public Lin/srain/cube/views/ptr/header/StoreHouseHeader;
.super Landroid/view/View;
.source "StoreHouseHeader.java"

# interfaces
.implements Lin/srain/cube/views/ptr/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/ptr/header/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:I

.field private e:F

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/animation/Transformation;

.field private s:Z

.field private t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 24
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    const v1, 0x3f333333    # 0.7f

    .line 25
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    .line 26
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    .line 31
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    .line 32
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 33
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    const v2, 0x3ecccccd    # 0.4f

    .line 34
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    .line 35
    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    .line 36
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    const/16 v0, 0x3e8

    .line 38
    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 39
    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    const/16 v0, 0x190

    .line 40
    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    .line 42
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 43
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 44
    new-instance v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;Lin/srain/cube/views/ptr/header/StoreHouseHeader$1;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    .line 45
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->u:I

    .line 49
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 0

    .line 18
    iget p0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    return p0
.end method

.method private a()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lin/srain/cube/views/ptr/b/b;->a(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    invoke-static {v0}, Lin/srain/cube/views/ptr/b/b;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 65
    invoke-static {v0}, Lin/srain/cube/views/ptr/b/b;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 66
    sget v0, Lin/srain/cube/views/ptr/b/b;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 0

    .line 18
    iget p0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 183
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V

    .line 184
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    return-void
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 0

    .line 18
    iget p0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    return p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 189
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V

    return-void
.end method

.method static synthetic d(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F
    .locals 0

    .line 18
    iget p0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    return p0
.end method

.method static synthetic e(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F
    .locals 0

    .line 18
    iget p0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    return p0
.end method

.method private getBottomOffset()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getPaddingBottom()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lin/srain/cube/views/ptr/b/b;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTopOffset()I
    .locals 2

    .line 115
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getPaddingTop()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lin/srain/cube/views/ptr/b/b;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private setProgress(F)V
    .locals 0

    .line 70
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    return-void
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .line 251
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c()V

    const/4 p1, 0x0

    .line 252
    :goto_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/srain/cube/views/ptr/header/b;

    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/b;->a(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c()V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 0

    .line 276
    invoke-virtual {p4}, Lin/srain/cube/views/ptr/a/a;->y()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 277
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->setProgress(F)V

    .line 278
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b()V

    return-void
.end method

.method public getLoadingAniDuration()I
    .locals 1

    .line 74
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 146
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 197
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget-object v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/srain/cube/views/ptr/header/b;

    .line 203
    iget v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    int-to-float v5, v5

    iget-object v6, v4, Lin/srain/cube/views/ptr/header/b;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    .line 204
    iget v6, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    int-to-float v6, v6

    iget-object v7, v4, Lin/srain/cube/views/ptr/header/b;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    .line 206
    iget-boolean v7, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v7, :cond_0

    .line 207
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getDrawingTime()J

    move-result-wide v7

    iget-object v9, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v7, v8, v9}, Lin/srain/cube/views/ptr/header/b;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 208
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_0
    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-nez v8, :cond_1

    .line 212
    iget v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v4, v5}, Lin/srain/cube/views/ptr/header/b;->a(I)V

    goto :goto_4

    .line 216
    :cond_1
    iget v8, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    int-to-float v10, v3

    mul-float/2addr v8, v10

    int-to-float v10, v2

    div-float/2addr v8, v10

    .line 217
    iget v10, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    sub-float v10, v9, v10

    sub-float/2addr v10, v8

    cmpl-float v11, v0, v9

    if-eqz v11, :cond_4

    sub-float v10, v9, v10

    cmpl-float v10, v0, v10

    if-ltz v10, :cond_2

    goto :goto_2

    :cond_2
    cmpg-float v10, v0, v8

    if-gtz v10, :cond_3

    goto :goto_1

    :cond_3
    sub-float v7, v0, v8

    .line 228
    iget v8, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 230
    :goto_1
    iget v8, v4, Lin/srain/cube/views/ptr/header/b;->b:F

    sub-float/2addr v9, v7

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    .line 231
    iget v8, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 232
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v9, 0x43b40000    # 360.0f

    mul-float/2addr v9, v7

    .line 233
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 234
    invoke-virtual {v8, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 235
    invoke-virtual {v8, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    iget v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lin/srain/cube/views/ptr/header/b;->a(F)V

    .line 237
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 221
    :cond_4
    :goto_2
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    iget v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    invoke-virtual {v4, v5}, Lin/srain/cube/views/ptr/header/b;->a(F)V

    .line 240
    :goto_3
    invoke-virtual {v4, p1}, Lin/srain/cube/views/ptr/header/b;->a(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 243
    :cond_5
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v0, :cond_6

    .line 244
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    .line 246
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result p2

    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    add-int/2addr p2, v0

    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getBottomOffset()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 106
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 109
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 110
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result p1

    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 111
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result p1

    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    return-void
.end method

.method public setLoadingAniDuration(I)V
    .locals 0

    .line 78
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 79
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 150
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    return-void
.end method
