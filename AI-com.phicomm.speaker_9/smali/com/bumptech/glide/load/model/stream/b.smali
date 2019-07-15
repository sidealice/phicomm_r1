.class public Lcom/bumptech/glide/load/model/stream/b;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/c<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 21
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/stream/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 0

    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/stream/b;->a([BII)Lcom/bumptech/glide/load/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a([BII)Lcom/bumptech/glide/load/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/bumptech/glide/load/a/c<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance p2, Lcom/bumptech/glide/load/a/b;

    iget-object p3, p0, Lcom/bumptech/glide/load/model/stream/b;->a:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/a/b;-><init>([BLjava/lang/String;)V

    return-object p2
.end method
