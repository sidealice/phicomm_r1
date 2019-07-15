.class public Lcom/bumptech/glide/e/e;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/e/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/f<",
        "TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/model/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/k<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/resource/transcode/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/b<",
            "TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/resource/transcode/b;Lcom/bumptech/glide/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "TZ;TR;>;",
            "Lcom/bumptech/glide/e/b<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ModelLoader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e/e;->a:Lcom/bumptech/glide/load/model/k;

    if-nez p2, :cond_1

    .line 33
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Transcoder must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/bumptech/glide/e/e;->b:Lcom/bumptech/glide/load/resource/transcode/b;

    if-nez p3, :cond_2

    .line 38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "DataLoadProvider must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/bumptech/glide/e/e;->c:Lcom/bumptech/glide/e/b;

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
            "TZ;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/e/e;->c:Lcom/bumptech/glide/e/b;

    invoke-interface {v0}, Lcom/bumptech/glide/e/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/e/e;->c:Lcom/bumptech/glide/e/b;

    invoke-interface {v0}, Lcom/bumptech/glide/e/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/e/e;->c:Lcom/bumptech/glide/e/b;

    invoke-interface {v0}, Lcom/bumptech/glide/e/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e<",
            "TZ;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/e/e;->c:Lcom/bumptech/glide/e/b;

    invoke-interface {v0}, Lcom/bumptech/glide/e/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/load/model/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;TT;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/e/e;->a:Lcom/bumptech/glide/load/model/k;

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/load/resource/transcode/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/e/e;->b:Lcom/bumptech/glide/load/resource/transcode/b;

    return-object v0
.end method
