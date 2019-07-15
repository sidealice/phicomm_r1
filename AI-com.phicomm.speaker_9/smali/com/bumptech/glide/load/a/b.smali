.class public Lcom/bumptech/glide/load/a/b;
.super Ljava/lang/Object;
.source "ByteArrayFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/a/b;->a:[B

    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/a/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/a/b;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 1

    .line 23
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/bumptech/glide/load/a/b;->a:[B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
