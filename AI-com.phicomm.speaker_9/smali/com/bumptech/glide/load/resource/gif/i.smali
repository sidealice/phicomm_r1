.class public Lcom/bumptech/glide/load/resource/gif/i;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/e<",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/gif/i$a;


# instance fields
.field private final b:Lcom/bumptech/glide/b/a$a;

.field private final c:Lcom/bumptech/glide/load/engine/a/c;

.field private final d:Lcom/bumptech/glide/load/resource/gif/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/i$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/i$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/i;->a:Lcom/bumptech/glide/load/resource/gif/i$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/i;->a:Lcom/bumptech/glide/load/resource/gif/i$a;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/gif/i;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/gif/i$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/gif/i$a;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/i;->c:Lcom/bumptech/glide/load/engine/a/c;

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/a;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/i;->b:Lcom/bumptech/glide/b/a$a;

    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/i;->d:Lcom/bumptech/glide/load/resource/gif/i$a;

    return-void
.end method

.method private a([B)Lcom/bumptech/glide/b/a;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/i;->d:Lcom/bumptech/glide/load/resource/gif/i$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/i$a;->a()Lcom/bumptech/glide/b/d;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b/d;->a([B)Lcom/bumptech/glide/b/d;

    .line 103
    invoke-virtual {v0}, Lcom/bumptech/glide/b/d;->b()Lcom/bumptech/glide/b/c;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/i;->d:Lcom/bumptech/glide/load/resource/gif/i$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/i;->b:Lcom/bumptech/glide/b/a$a;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/resource/gif/i$a;->a(Lcom/bumptech/glide/b/a$a;)Lcom/bumptech/glide/b/a;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/c;[B)V

    .line 107
    invoke-virtual {v1}, Lcom/bumptech/glide/b/a;->a()V

    return-object v1
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/gif/b;)Lcom/bumptech/glide/load/engine/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ")",
            "Lcom/bumptech/glide/load/engine/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/i;->d:Lcom/bumptech/glide/load/resource/gif/i$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/i;->c:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/resource/gif/i$a;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/engine/j;

    move-result-object p1

    .line 116
    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/b;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/b;->getIntrinsicHeight()I

    move-result p3

    invoke-interface {p2, p1, v0, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/j;II)Lcom/bumptech/glide/load/engine/j;

    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->d()V

    :cond_0
    return-object p2
.end method

.method private a([BLjava/io/OutputStream;)Z
    .locals 1

    .line 90
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "GifEncoder"

    const/4 v0, 0x3

    .line 92
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "GifEncoder"

    const-string v0, "Failed to write data to output stream in GifResourceEncoder"

    .line 93
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/j;Ljava/io/OutputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/bumptech/glide/h/d;->a()J

    move-result-wide v0

    .line 47
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/b;

    .line 48
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/b;->c()Lcom/bumptech/glide/load/f;

    move-result-object v2

    .line 49
    instance-of v3, v2, Lcom/bumptech/glide/load/resource/d;

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/b;->d()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/i;->a([BLjava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/b;->d()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/resource/gif/i;->a([B)Lcom/bumptech/glide/b/a;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/i;->d:Lcom/bumptech/glide/load/resource/gif/i$a;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/resource/gif/i$a;->b()Lcom/bumptech/glide/c/a;

    move-result-object v4

    .line 56
    invoke-virtual {v4, p2}, Lcom/bumptech/glide/c/a;->a(Ljava/io/OutputStream;)Z

    move-result p2

    const/4 v5, 0x0

    if-nez p2, :cond_1

    return v5

    :cond_1
    move p2, v5

    .line 60
    :goto_0
    invoke-virtual {v3}, Lcom/bumptech/glide/b/a;->c()I

    move-result v6

    if-ge p2, v6, :cond_3

    .line 61
    invoke-virtual {v3}, Lcom/bumptech/glide/b/a;->f()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 62
    invoke-direct {p0, v6, v2, p1}, Lcom/bumptech/glide/load/resource/gif/i;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/gif/b;)Lcom/bumptech/glide/load/engine/j;

    move-result-object v6

    .line 64
    :try_start_0
    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Lcom/bumptech/glide/c/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    .line 73
    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/j;->d()V

    return v5

    .line 67
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/bumptech/glide/b/a;->d()I

    move-result v7

    .line 68
    invoke-virtual {v3, v7}, Lcom/bumptech/glide/b/a;->a(I)I

    move-result v7

    .line 69
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/c/a;->a(I)V

    .line 71
    invoke-virtual {v3}, Lcom/bumptech/glide/b/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/j;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/j;->d()V

    throw p1

    .line 77
    :cond_3
    invoke-virtual {v4}, Lcom/bumptech/glide/c/a;->a()Z

    move-result p2

    const-string v2, "GifEncoder"

    const/4 v4, 0x2

    .line 79
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "GifEncoder"

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded gif with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/bumptech/glide/b/a;->c()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames and "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/b;->d()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes in "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/d;->a(J)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 25
    check-cast p1, Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/i;->a(Lcom/bumptech/glide/load/engine/j;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method
