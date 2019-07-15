.class public Lcom/bumptech/glide/a;
.super Lcom/bumptech/glide/e;
.source "BitmapRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e<",
        "TModelType;",
        "Lcom/bumptech/glide/load/model/f;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/engine/a/c;

.field private h:Lcom/bumptech/glide/load/resource/bitmap/d;

.field private i:Lcom/bumptech/glide/load/DecodeFormat;

.field private j:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/f<",
            "TModelType;",
            "Lcom/bumptech/glide/load/model/f;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/e;-><init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    .line 50
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/d;->a:Lcom/bumptech/glide/load/resource/bitmap/d;

    iput-object p1, p0, Lcom/bumptech/glide/a;->h:Lcom/bumptech/glide/load/resource/bitmap/d;

    .line 58
    iget-object p1, p3, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    .line 59
    iget-object p1, p3, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/load/DecodeFormat;

    .line 61
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object p2, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    iget-object p3, p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object p1, p0, Lcom/bumptech/glide/a;->j:Lcom/bumptech/glide/load/d;

    .line 62
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    iget-object p2, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    iget-object p3, p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object p1, p0, Lcom/bumptech/glide/a;->k:Lcom/bumptech/glide/load/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 278
    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    iget-object v1, p0, Lcom/bumptech/glide/a;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->c()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 359
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(I)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 435
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 368
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a<",
            "Lcom/bumptech/glide/load/model/f;",
            ">;)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 454
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 469
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d<",
            "Lcom/bumptech/glide/load/model/f;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 426
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 475
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 417
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 302
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 264
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/f/b/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 498
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 291
    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    iget-object v1, p0, Lcom/bumptech/glide/a;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->d()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 389
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(I)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 398
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/a;->a(II)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Ljava/lang/Object;)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Z)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/bumptech/glide/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 481
    invoke-super {p0}, Lcom/bumptech/glide/e;->f()Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    return-object v0
.end method

.method public synthetic c(I)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->b(I)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/a;

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

    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->c()Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(I)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(I)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/a;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .locals 0

    .line 503
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->b()Lcom/bumptech/glide/a;

    return-void
.end method

.method e()V
    .locals 0

    .line 508
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    return-void
.end method

.method public synthetic f()Lcom/bumptech/glide/e;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->c()Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method
