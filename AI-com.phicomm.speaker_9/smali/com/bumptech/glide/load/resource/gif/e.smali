.class public Lcom/bumptech/glide/load/resource/gif/e;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/a/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/e;->a:Lcom/bumptech/glide/load/f;

    .line 20
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Lcom/bumptech/glide/load/engine/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/j;II)Lcom/bumptech/glide/load/engine/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/j<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/b;

    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v2, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 33
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/e;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v3, v2, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/j;II)Lcom/bumptech/glide/load/engine/j;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 36
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/d;

    new-instance p3, Lcom/bumptech/glide/load/resource/gif/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/e;->a:Lcom/bumptech/glide/load/f;

    invoke-direct {p3, v0, p2, v1}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Lcom/bumptech/glide/load/resource/gif/b;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/f;)V

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/resource/gif/d;-><init>(Lcom/bumptech/glide/load/resource/gif/b;)V

    return-object p1

    :cond_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/e;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
