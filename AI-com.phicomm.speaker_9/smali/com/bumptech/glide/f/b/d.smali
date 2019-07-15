.class public Lcom/bumptech/glide/f/b/d;
.super Lcom/bumptech/glide/f/b/e;
.source "GlideDrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/f/b/e<",
        "Lcom/bumptech/glide/load/resource/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lcom/bumptech/glide/load/resource/a/b;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/f/b/d;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/b/e;-><init>(Landroid/widget/ImageView;)V

    .line 38
    iput p2, p0, Lcom/bumptech/glide/f/b/d;->b:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/resource/a/b;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/f/b/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/resource/a/b;Lcom/bumptech/glide/f/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/a/b;",
            "Lcom/bumptech/glide/f/a/c<",
            "-",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/f/b/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bumptech/glide/f/b/d;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 60
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/a/b;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/a/b;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 63
    new-instance v0, Lcom/bumptech/glide/f/b/i;

    iget-object v1, p0, Lcom/bumptech/glide/f/b/d;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/f/b/i;-><init>(Lcom/bumptech/glide/load/resource/a/b;I)V

    move-object p1, v0

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/f/b/e;->a(Ljava/lang/Object;Lcom/bumptech/glide/f/a/c;)V

    .line 67
    iput-object p1, p0, Lcom/bumptech/glide/f/b/d;->c:Lcom/bumptech/glide/load/resource/a/b;

    .line 68
    iget p2, p0, Lcom/bumptech/glide/f/b/d;->b:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/resource/a/b;->a(I)V

    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/a/b;->start()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/b/d;->a(Lcom/bumptech/glide/load/resource/a/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/f/a/c;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f/b/d;->a(Lcom/bumptech/glide/load/resource/a/b;Lcom/bumptech/glide/f/a/c;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/f/b/d;->c:Lcom/bumptech/glide/load/resource/a/b;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/f/b/d;->c:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->start()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/f/b/d;->c:Lcom/bumptech/glide/load/resource/a/b;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/f/b/d;->c:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->stop()V

    :cond_0
    return-void
.end method
