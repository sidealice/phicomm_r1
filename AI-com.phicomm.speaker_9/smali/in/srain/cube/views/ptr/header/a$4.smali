.class Lin/srain/cube/views/ptr/header/a$4;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/srain/cube/views/ptr/header/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/header/a$c;

.field final synthetic b:Lin/srain/cube/views/ptr/header/a;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/a;Lin/srain/cube/views/ptr/header/a$c;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a$4;->b:Lin/srain/cube/views/ptr/header/a;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 368
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p2}, Lin/srain/cube/views/ptr/header/a$c;->c()F

    move-result p2

    float-to-double v0, p2

    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    .line 369
    invoke-virtual {p2}, Lin/srain/cube/views/ptr/header/a$c;->h()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v2

    div-double/2addr v0, v4

    .line 368
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 370
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->f()F

    move-result v0

    .line 371
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/a$c;->e()F

    move-result v1

    .line 372
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/header/a$c;->i()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    sub-float p2, v3, p2

    .line 376
    invoke-static {}, Lin/srain/cube/views/ptr/header/a;->a()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr p2, v4

    add-float/2addr v0, p2

    .line 377
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p2, v0}, Lin/srain/cube/views/ptr/header/a$c;->c(F)V

    .line 379
    invoke-static {}, Lin/srain/cube/views/ptr/header/a;->b()Landroid/view/animation/Interpolator;

    move-result-object p2

    .line 380
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    .line 381
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p2, v1}, Lin/srain/cube/views/ptr/header/a$c;->b(F)V

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    .line 383
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$4;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p2, v2}, Lin/srain/cube/views/ptr/header/a$c;->d(F)V

    const/high16 p2, 0x43100000    # 144.0f

    mul-float/2addr p2, p1

    .line 384
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$4;->b:Lin/srain/cube/views/ptr/header/a;

    .line 385
    invoke-static {p1}, Lin/srain/cube/views/ptr/header/a;->c(Lin/srain/cube/views/ptr/header/a;)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x44340000    # 720.0f

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 386
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$4;->b:Lin/srain/cube/views/ptr/header/a;

    invoke-virtual {p1, p2}, Lin/srain/cube/views/ptr/header/a;->c(F)V

    return-void
.end method
