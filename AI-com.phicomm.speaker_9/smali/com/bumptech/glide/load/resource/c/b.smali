.class public Lcom/bumptech/glide/load/resource/c/b;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/j<",
        "Lcom/bumptech/glide/load/resource/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/c/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/c/a;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Data must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/b;->a:Lcom/bumptech/glide/load/resource/c/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/resource/c/a;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/b;->a:Lcom/bumptech/glide/load/resource/c/a;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/c/b;->a()Lcom/bumptech/glide/load/resource/c/a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/b;->a:Lcom/bumptech/glide/load/resource/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/c/a;->a()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/b;->a:Lcom/bumptech/glide/load/resource/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/c/a;->b()Lcom/bumptech/glide/load/engine/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/j;->d()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/b;->a:Lcom/bumptech/glide/load/resource/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/c/a;->c()Lcom/bumptech/glide/load/engine/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/j;->d()V

    :cond_1
    return-void
.end method
