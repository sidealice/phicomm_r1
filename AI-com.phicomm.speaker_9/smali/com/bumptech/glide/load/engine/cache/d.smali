.class public Lcom/bumptech/glide/load/engine/cache/d;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/d$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/bumptech/glide/load/engine/cache/d$a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/d$a;I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/bumptech/glide/load/engine/cache/d;->a:I

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/d;->b:Lcom/bumptech/glide/load/engine/cache/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/d$1;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/d$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/engine/cache/d;-><init>(Lcom/bumptech/glide/load/engine/cache/d$a;I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/cache/a;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/d;->b:Lcom/bumptech/glide/load/engine/cache/d$a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/d$a;->a()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    .line 66
    :cond_2
    iget v1, p0, Lcom/bumptech/glide/load/engine/cache/d;->a:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/cache/e;->a(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/a;

    move-result-object v0

    return-object v0
.end method
