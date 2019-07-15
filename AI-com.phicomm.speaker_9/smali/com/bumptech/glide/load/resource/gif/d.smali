.class public Lcom/bumptech/glide/load/resource/gif/d;
.super Lcom/bumptech/glide/load/resource/a/a;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/a/a<",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/b;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/a/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/b;->d()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/h/h;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/b;->stop()V

    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/b;->f()V

    return-void
.end method
