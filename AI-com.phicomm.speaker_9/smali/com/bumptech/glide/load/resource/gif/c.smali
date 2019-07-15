.class public Lcom/bumptech/glide/load/resource/gif/c;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/e/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

.field private final b:Lcom/bumptech/glide/load/resource/gif/i;

.field private final c:Lcom/bumptech/glide/load/model/n;

.field private final d:Lcom/bumptech/glide/load/resource/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/b/c<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    .line 28
    new-instance p1, Lcom/bumptech/glide/load/resource/b/c;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/c;->d:Lcom/bumptech/glide/load/resource/b/c;

    .line 29
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/i;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/resource/gif/i;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/c;->b:Lcom/bumptech/glide/load/resource/gif/i;

    .line 30
    new-instance p1, Lcom/bumptech/glide/load/model/n;

    invoke-direct {p1}, Lcom/bumptech/glide/load/model/n;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/c;->c:Lcom/bumptech/glide/load/model/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->d:Lcom/bumptech/glide/load/resource/b/c;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->c:Lcom/bumptech/glide/load/model/n;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->b:Lcom/bumptech/glide/load/resource/gif/i;

    return-object v0
.end method
