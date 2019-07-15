.class public Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;,
        Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

.field private static final b:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

.field private final e:Lcom/bumptech/glide/load/engine/a/c;

.field private final f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

.field private final g:Lcom/bumptech/glide/load/resource/gif/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->b:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 2

    .line 42
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

    sget-object v1, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->b:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->e:Lcom/bumptech/glide/load/engine/a/c;

    .line 50
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

    .line 51
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/a;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/resource/gif/a;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->g:Lcom/bumptech/glide/load/resource/gif/a;

    .line 52
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

    return-void
.end method

.method private a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/c;[B)Landroid/graphics/Bitmap;
    .locals 0

    .line 89
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/c;[B)V

    .line 90
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->a()V

    .line 91
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a([BIILcom/bumptech/glide/b/d;Lcom/bumptech/glide/b/a;)Lcom/bumptech/glide/load/resource/gif/d;
    .locals 10

    .line 69
    invoke-virtual {p4}, Lcom/bumptech/glide/b/d;->b()Lcom/bumptech/glide/b/c;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/bumptech/glide/b/c;->a()I

    move-result p4

    const/4 v0, 0x0

    if-lez p4, :cond_2

    invoke-virtual {v7}, Lcom/bumptech/glide/b/c;->b()I

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p5, v7, p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/c;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_1

    return-object v0

    .line 80
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/d;->b()Lcom/bumptech/glide/load/resource/d;

    move-result-object v4

    .line 82
    new-instance p4, Lcom/bumptech/glide/load/resource/gif/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->g:Lcom/bumptech/glide/load/resource/gif/a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->e:Lcom/bumptech/glide/load/engine/a/c;

    move-object v0, p4

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/c;[BLandroid/graphics/Bitmap;)V

    .line 85
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/d;

    invoke-direct {p1, p4}, Lcom/bumptech/glide/load/resource/gif/d;-><init>(Lcom/bumptech/glide/load/resource/gif/b;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    :try_start_0
    new-array v1, v1, [B

    .line 105
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 106
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "GifResourceDecoder"

    const-string v2, "Error reading data from stream"

    .line 110
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/d;
    .locals 7

    .line 57
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 58
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;->a([B)Lcom/bumptech/glide/b/d;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->g:Lcom/bumptech/glide/load/resource/gif/a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;->a(Lcom/bumptech/glide/b/a$a;)Lcom/bumptech/glide/b/a;

    move-result-object v6

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, v6

    .line 61
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a([BIILcom/bumptech/glide/b/d;Lcom/bumptech/glide/b/a;)Lcom/bumptech/glide/load/resource/gif/d;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;->a(Lcom/bumptech/glide/b/d;)V

    .line 64
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

    invoke-virtual {p1, v6}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;->a(Lcom/bumptech/glide/b/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 63
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$b;->a(Lcom/bumptech/glide/b/d;)V

    .line 64
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;

    invoke-virtual {p1, v6}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$a;->a(Lcom/bumptech/glide/b/a;)V

    throw p2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
