.class public Lcom/bumptech/glide/load/resource/transcode/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/b<",
        "Lcom/bumptech/glide/load/resource/c/a;",
        "Lcom/bumptech/glide/load/resource/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/transcode/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/transcode/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/f;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/a;->a:Lcom/bumptech/glide/load/resource/transcode/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/load/engine/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "Lcom/bumptech/glide/load/resource/c/a;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/j<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/c/a;

    .line 27
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/c/a;->b()Lcom/bumptech/glide/load/engine/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/a;->a:Lcom/bumptech/glide/load/resource/transcode/b;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/resource/transcode/b;->a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/load/engine/j;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/c/a;->c()Lcom/bumptech/glide/load/engine/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
