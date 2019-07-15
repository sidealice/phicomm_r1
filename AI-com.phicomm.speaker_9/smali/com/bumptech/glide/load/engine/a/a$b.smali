.class Lcom/bumptech/glide/load/engine/a/a$b;
.super Lcom/bumptech/glide/load/engine/a/b;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/a/b<",
        "Lcom/bumptech/glide/load/engine/a/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/a/a$a;
    .locals 1

    .line 70
    new-instance v0, Lcom/bumptech/glide/load/engine/a/a$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/a$a;-><init>(Lcom/bumptech/glide/load/engine/a/a$b;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/a/a$a;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/a$b;->c()Lcom/bumptech/glide/load/engine/a/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/a$a;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/a/a$a;->a(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/a/h;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/a$b;->a()Lcom/bumptech/glide/load/engine/a/a$a;

    move-result-object v0

    return-object v0
.end method
