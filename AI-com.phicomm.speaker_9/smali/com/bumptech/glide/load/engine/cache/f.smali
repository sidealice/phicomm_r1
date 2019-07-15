.class public Lcom/bumptech/glide/load/engine/cache/f;
.super Lcom/bumptech/glide/h/e;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/h/e<",
        "Lcom/bumptech/glide/load/b;",
        "Lcom/bumptech/glide/load/engine/j<",
        "*>;>;",
        "Lcom/bumptech/glide/load/engine/cache/g;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/cache/g$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/j;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;)I"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->c()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/cache/f;->a(Lcom/bumptech/glide/load/engine/j;)I

    move-result p1

    return p1
.end method

.method public synthetic a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/j;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/bumptech/glide/h/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/j;

    return-object p1
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/f;->a()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/f;->b()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/cache/f;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;)V"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/f;->a:Lcom/bumptech/glide/load/engine/cache/g$a;

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/f;->a:Lcom/bumptech/glide/load/engine/cache/g$a;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/cache/g$a;->b(Lcom/bumptech/glide/load/engine/j;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/cache/g$a;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/f;->a:Lcom/bumptech/glide/load/engine/cache/g$a;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/bumptech/glide/load/b;

    check-cast p2, Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/f;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/j;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/load/engine/j;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/h/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/j;

    return-object p1
.end method
