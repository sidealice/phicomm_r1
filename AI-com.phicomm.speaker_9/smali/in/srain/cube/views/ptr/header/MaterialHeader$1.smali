.class Lin/srain/cube/views/ptr/header/MaterialHeader$1;
.super Landroid/view/animation/Animation;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/header/MaterialHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 26
    iget-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p2, v0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a(Lin/srain/cube/views/ptr/header/MaterialHeader;F)F

    .line 27
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-static {p1}, Lin/srain/cube/views/ptr/header/MaterialHeader;->b(Lin/srain/cube/views/ptr/header/MaterialHeader;)Lin/srain/cube/views/ptr/header/a;

    move-result-object p1

    iget-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-static {p2}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a(Lin/srain/cube/views/ptr/header/MaterialHeader;)F

    move-result p2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lin/srain/cube/views/ptr/header/a;->setAlpha(I)V

    .line 28
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    return-void
.end method
