.class Lin/srain/cube/views/ptr/header/a$2;
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

    .line 328
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a$2;->b:Lin/srain/cube/views/ptr/header/a;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 332
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p2}, Lin/srain/cube/views/ptr/header/a$c;->i()F

    move-result p2

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p2, v0

    .line 334
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->e()F

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    .line 335
    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/a$c;->f()F

    move-result v1

    iget-object v2, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/header/a$c;->e()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 337
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/header/a$c;->b(F)V

    .line 338
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->i()F

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    .line 339
    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/a$c;->i()F

    move-result v1

    sub-float/2addr p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    .line 340
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p2, v0}, Lin/srain/cube/views/ptr/header/a$c;->d(F)V

    .line 341
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a$2;->a:Lin/srain/cube/views/ptr/header/a$c;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lin/srain/cube/views/ptr/header/a$c;->e(F)V

    return-void
.end method
