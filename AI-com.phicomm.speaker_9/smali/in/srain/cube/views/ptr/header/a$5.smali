.class Lin/srain/cube/views/ptr/header/a$5;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 393
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a$5;->b:Lin/srain/cube/views/ptr/header/a;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/a$5;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    .line 406
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$5;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a$c;->j()V

    .line 407
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$5;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a$c;->a()V

    .line 408
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$5;->a:Lin/srain/cube/views/ptr/header/a$c;

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$5;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->g()F

    move-result v0

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/header/a$c;->b(F)V

    .line 409
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$5;->b:Lin/srain/cube/views/ptr/header/a;

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$5;->b:Lin/srain/cube/views/ptr/header/a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/a;->c(Lin/srain/cube/views/ptr/header/a;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr v0, v1

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/header/a;->a(Lin/srain/cube/views/ptr/header/a;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 396
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$5;->b:Lin/srain/cube/views/ptr/header/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/header/a;->a(Lin/srain/cube/views/ptr/header/a;F)F

    return-void
.end method
