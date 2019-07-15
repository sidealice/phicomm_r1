.class public Lcom/bumptech/glide/load/model/stream/a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/k<",
        "Lcom/bumptech/glide/load/model/c;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/model/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/j<",
            "Lcom/bumptech/glide/load/model/c;",
            "Lcom/bumptech/glide/load/model/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/stream/a;-><init>(Lcom/bumptech/glide/load/model/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/j<",
            "Lcom/bumptech/glide/load/model/c;",
            "Lcom/bumptech/glide/load/model/c;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/a;->a:Lcom/bumptech/glide/load/model/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/model/c;II)Lcom/bumptech/glide/load/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/c;",
            "II)",
            "Lcom/bumptech/glide/load/a/c<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object p2, p0, Lcom/bumptech/glide/load/model/stream/a;->a:Lcom/bumptech/glide/load/model/j;

    if-eqz p2, :cond_1

    .line 53
    iget-object p2, p0, Lcom/bumptech/glide/load/model/stream/a;->a:Lcom/bumptech/glide/load/model/j;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Lcom/bumptech/glide/load/model/j;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/model/c;

    if-nez p2, :cond_0

    .line 55
    iget-object p2, p0, Lcom/bumptech/glide/load/model/stream/a;->a:Lcom/bumptech/glide/load/model/j;

    invoke-virtual {p2, p1, p3, p3, p1}, Lcom/bumptech/glide/load/model/j;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 59
    :cond_1
    :goto_0
    new-instance p2, Lcom/bumptech/glide/load/a/f;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/a/f;-><init>(Lcom/bumptech/glide/load/model/c;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 0

    .line 19
    check-cast p1, Lcom/bumptech/glide/load/model/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/stream/a;->a(Lcom/bumptech/glide/load/model/c;II)Lcom/bumptech/glide/load/a/c;

    move-result-object p1

    return-object p1
.end method
