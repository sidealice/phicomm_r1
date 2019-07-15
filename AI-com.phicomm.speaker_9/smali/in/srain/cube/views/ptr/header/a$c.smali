.class Lin/srain/cube/views/ptr/header/a$c;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/header/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:[I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Landroid/graphics/Path;

.field private r:F

.field private s:D

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->a:Landroid/graphics/RectF;

    .line 418
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->c:Landroid/graphics/Paint;

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->e:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->f:F

    .line 423
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->g:F

    .line 424
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->h:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 425
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->i:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 426
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->j:F

    .line 445
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 446
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 447
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 448
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 449
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 452
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 493
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/header/a$c;->p:Z

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    .line 496
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 502
    :goto_0
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->j:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lin/srain/cube/views/ptr/header/a$c;->r:F

    mul-float/2addr v0, v1

    .line 503
    iget-wide v1, p0, Lin/srain/cube/views/ptr/header/a$c;->s:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 504
    iget-wide v5, p0, Lin/srain/cube/views/ptr/header/a$c;->s:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 509
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 510
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    iget v5, p0, Lin/srain/cube/views/ptr/header/a$c;->t:I

    int-to-float v5, v5

    iget v6, p0, Lin/srain/cube/views/ptr/header/a$c;->r:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 511
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    iget v4, p0, Lin/srain/cube/views/ptr/header/a$c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lin/srain/cube/views/ptr/header/a$c;->r:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lin/srain/cube/views/ptr/header/a$c;->u:I

    int-to-float v5, v5

    iget v6, p0, Lin/srain/cube/views/ptr/header/a$c;->r:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 513
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 514
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 516
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a$c;->k:[I

    iget v2, p0, Lin/srain/cube/views/ptr/header/a$c;->l:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->c:Landroid/graphics/Paint;

    iget v1, p0, Lin/srain/cube/views/ptr/header/a$c;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 518
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 519
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 518
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 520
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$c;->q:Landroid/graphics/Path;

    iget-object p3, p0, Lin/srain/cube/views/ptr/header/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    .line 703
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 548
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a$c;->k:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->l:I

    return-void
.end method

.method public a(D)V
    .locals 0

    .line 650
    iput-wide p1, p0, Lin/srain/cube/views/ptr/header/a$c;->s:D

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 579
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->i:F

    .line 580
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 581
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a$c;->l()V

    return-void
.end method

.method public a(FF)V
    .locals 0

    float-to-int p1, p1

    .line 466
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->t:I

    float-to-int p1, p2

    .line 467
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->u:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 456
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->w:I

    return-void
.end method

.method public a(II)V
    .locals 4

    .line 626
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 628
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/a$c;->s:D

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    const/high16 v0, 0x40000000    # 2.0f

    if-lez p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    float-to-double p1, p1

    .line 631
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/a$c;->s:D

    sub-double/2addr p1, v0

    double-to-float p1, p1

    goto :goto_1

    .line 629
    :cond_1
    :goto_0
    iget p1, p0, Lin/srain/cube/views/ptr/header/a$c;->i:F

    div-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 633
    :goto_1
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->j:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 475
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->e:Landroid/graphics/Paint;

    iget v1, p0, Lin/srain/cube/views/ptr/header/a$c;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->e:Landroid/graphics/Paint;

    iget v1, p0, Lin/srain/cube/views/ptr/header/a$c;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 478
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lin/srain/cube/views/ptr/header/a$c;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 480
    iget-object v5, p0, Lin/srain/cube/views/ptr/header/a$c;->a:Landroid/graphics/RectF;

    .line 481
    invoke-virtual {v5, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 482
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->j:F

    iget v1, p0, Lin/srain/cube/views/ptr/header/a$c;->j:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 483
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->f:F

    iget v1, p0, Lin/srain/cube/views/ptr/header/a$c;->h:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    .line 484
    iget v2, p0, Lin/srain/cube/views/ptr/header/a$c;->g:F

    iget v3, p0, Lin/srain/cube/views/ptr/header/a$c;->h:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    sub-float v1, v2, v0

    .line 486
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lin/srain/cube/views/ptr/header/a$c;->k:[I

    iget v4, p0, Lin/srain/cube/views/ptr/header/a$c;->l:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    iget v3, p0, Lin/srain/cube/views/ptr/header/a$c;->v:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 488
    iget-object v9, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v4, p1

    move v6, v0

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 489
    invoke-direct {p0, p1, v0, v1, p2}, Lin/srain/cube/views/ptr/header/a$c;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 553
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a$c;->l()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 657
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/header/a$c;->p:Z

    if-eq v0, p1, :cond_0

    .line 658
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/header/a$c;->p:Z

    .line 659
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a$c;->l()V

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 0

    .line 530
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a$c;->k:[I

    const/4 p1, 0x0

    .line 532
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/header/a$c;->b(I)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 560
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->v:I

    return v0
.end method

.method public b(F)V
    .locals 0

    .line 591
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->f:F

    .line 592
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a$c;->l()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 540
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->l:I

    return-void
.end method

.method public c()F
    .locals 1

    .line 572
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->i:F

    return v0
.end method

.method public c(F)V
    .locals 0

    .line 610
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->g:F

    .line 611
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a$c;->l()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 567
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->v:I

    return-void
.end method

.method public d()F
    .locals 1

    .line 586
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->f:F

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 621
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->h:F

    .line 622
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a$c;->l()V

    return-void
.end method

.method public e()F
    .locals 1

    .line 596
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->m:F

    return v0
.end method

.method public e(F)V
    .locals 1

    .line 667
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->r:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 668
    iput p1, p0, Lin/srain/cube/views/ptr/header/a$c;->r:F

    .line 669
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a$c;->l()V

    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .line 600
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->n:F

    return v0
.end method

.method public g()F
    .locals 1

    .line 605
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->g:F

    return v0
.end method

.method public h()D
    .locals 2

    .line 642
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/a$c;->s:D

    return-wide v0
.end method

.method public i()F
    .locals 1

    .line 677
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->o:F

    return v0
.end method

.method public j()V
    .locals 1

    .line 685
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->f:F

    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->m:F

    .line 686
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->g:F

    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->n:F

    .line 687
    iget v0, p0, Lin/srain/cube/views/ptr/header/a$c;->h:F

    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->o:F

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 694
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->m:F

    .line 695
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->n:F

    .line 696
    iput v0, p0, Lin/srain/cube/views/ptr/header/a$c;->o:F

    .line 697
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/a$c;->b(F)V

    .line 698
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/a$c;->c(F)V

    .line 699
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/a$c;->d(F)V

    return-void
.end method
