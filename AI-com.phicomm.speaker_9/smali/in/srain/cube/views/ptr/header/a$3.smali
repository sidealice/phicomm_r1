.class Lin/srain/cube/views/ptr/header/a$3;
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

    .line 346
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a$3;->b:Lin/srain/cube/views/ptr/header/a;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/a$3;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 353
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$3;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a$c;->a()V

    .line 354
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$3;->a:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/a$c;->j()V

    .line 355
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$3;->a:Lin/srain/cube/views/ptr/header/a$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/header/a$c;->a(Z)V

    .line 356
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a$3;->b:Lin/srain/cube/views/ptr/header/a;

    invoke-static {p1}, Lin/srain/cube/views/ptr/header/a;->b(Lin/srain/cube/views/ptr/header/a;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a$3;->b:Lin/srain/cube/views/ptr/header/a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/a;->a(Lin/srain/cube/views/ptr/header/a;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
