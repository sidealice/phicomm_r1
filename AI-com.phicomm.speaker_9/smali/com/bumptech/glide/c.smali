.class public Lcom/bumptech/glide/c;
.super Lcom/bumptech/glide/e;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e<",
        "TModelType;",
        "Lcom/bumptech/glide/load/model/f;",
        "Lcom/bumptech/glide/load/resource/c/a;",
        "Lcom/bumptech/glide/load/resource/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/e/f;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/bumptech/glide/e/f<",
            "TModelType;",
            "Lcom/bumptech/glide/load/model/f;",
            "Lcom/bumptech/glide/load/resource/c/a;",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/d/m;",
            "Lcom/bumptech/glide/d/g;",
            ")V"
        }
    .end annotation

    .line 48
    const-class v4, Lcom/bumptech/glide/load/resource/a/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->c()Lcom/bumptech/glide/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 179
    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    iget-object v1, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->e()Lcom/bumptech/glide/load/resource/c/f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 319
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(I)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 395
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 328
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a<",
            "Lcom/bumptech/glide/load/model/f;",
            ">;)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 404
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 419
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d<",
            "Lcom/bumptech/glide/load/model/f;",
            "Lcom/bumptech/glide/load/resource/c/a;",
            ">;)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 115
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 377
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 425
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 209
    array-length v1, p1

    new-array v1, v1, [Lcom/bumptech/glide/load/resource/c/f;

    .line 211
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 212
    new-instance v2, Lcom/bumptech/glide/load/resource/c/f;

    iget-object v3, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/c/f;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/c;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/f/b/j<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .line 448
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 194
    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    iget-object v1, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->f()Lcom/bumptech/glide/load/resource/c/f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 349
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(I)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 358
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/bumptech/glide/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/bumptech/glide/f/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/f/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/f/a/d;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public varargs c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f<",
            "Lcom/bumptech/glide/load/resource/c/a;",
            ">;)",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 228
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public synthetic c(I)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(I)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .locals 0

    .line 453
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->b()Lcom/bumptech/glide/c;

    return-void
.end method

.method e()V
    .locals 0

    .line 458
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/c;

    return-void
.end method

.method public synthetic f()Lcom/bumptech/glide/e;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 431
    invoke-super {p0}, Lcom/bumptech/glide/e;->f()Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/c;

    return-object v0
.end method
