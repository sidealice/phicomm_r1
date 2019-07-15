.class public Lcom/bumptech/glide/load/resource/c/c;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/c/c$b;,
        Lcom/bumptech/glide/load/resource/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d<",
        "Lcom/bumptech/glide/load/model/f;",
        "Lcom/bumptech/glide/load/resource/c/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/c/c$b;

.field private static final b:Lcom/bumptech/glide/load/resource/c/c$a;


# instance fields
.field private final c:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d<",
            "Lcom/bumptech/glide/load/model/f;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/engine/a/c;

.field private final f:Lcom/bumptech/glide/load/resource/c/c$b;

.field private final g:Lcom/bumptech/glide/load/resource/c/c$a;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/bumptech/glide/load/resource/c/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/c/c$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/c/c;->a:Lcom/bumptech/glide/load/resource/c/c$b;

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/resource/c/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/c/c$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/c/c;->b:Lcom/bumptech/glide/load/resource/c/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d<",
            "Lcom/bumptech/glide/load/model/f;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/d<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            ")V"
        }
    .end annotation

    .line 38
    sget-object v4, Lcom/bumptech/glide/load/resource/c/c;->a:Lcom/bumptech/glide/load/resource/c/c$b;

    sget-object v5, Lcom/bumptech/glide/load/resource/c/c;->b:Lcom/bumptech/glide/load/resource/c/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/c/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/c/c$b;Lcom/bumptech/glide/load/resource/c/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/c/c$b;Lcom/bumptech/glide/load/resource/c/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d<",
            "Lcom/bumptech/glide/load/model/f;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/d<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            "Lcom/bumptech/glide/load/resource/c/c$b;",
            "Lcom/bumptech/glide/load/resource/c/c$a;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/c;->c:Lcom/bumptech/glide/load/d;

    .line 46
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/c/c;->d:Lcom/bumptech/glide/load/d;

    .line 47
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/c/c;->e:Lcom/bumptech/glide/load/engine/a/c;

    .line 48
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/c/c;->f:Lcom/bumptech/glide/load/resource/c/c$b;

    .line 49
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/c/c;->g:Lcom/bumptech/glide/load/resource/c/c$a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/model/f;II[B)Lcom/bumptech/glide/load/resource/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/f;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/c/c;->b(Lcom/bumptech/glide/load/model/f;II[B)Lcom/bumptech/glide/load/resource/c/a;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/c/c;->b(Lcom/bumptech/glide/load/model/f;II)Lcom/bumptech/glide/load/resource/c/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/j;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/load/resource/gif/b;

    .line 108
    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/b;->e()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 109
    new-instance p3, Lcom/bumptech/glide/load/resource/c/a;

    invoke-direct {p3, p2, p1}, Lcom/bumptech/glide/load/resource/c/a;-><init>(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/engine/j;)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/b;->b()Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->e:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {p1, p3, v0}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 112
    new-instance p3, Lcom/bumptech/glide/load/resource/c/a;

    invoke-direct {p3, p1, p2}, Lcom/bumptech/glide/load/resource/c/a;-><init>(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/engine/j;)V

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    return-object p3
.end method

.method private b(Lcom/bumptech/glide/load/model/f;II)Lcom/bumptech/glide/load/resource/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->c:Lcom/bumptech/glide/load/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/j;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 123
    new-instance p3, Lcom/bumptech/glide/load/resource/c/a;

    invoke-direct {p3, p1, p2}, Lcom/bumptech/glide/load/resource/c/a;-><init>(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/engine/j;)V

    move-object p2, p3

    :cond_0
    return-object p2
.end method

.method private b(Lcom/bumptech/glide/load/model/f;II[B)Lcom/bumptech/glide/load/resource/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->g:Lcom/bumptech/glide/load/resource/c/c$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/f;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/bumptech/glide/load/resource/c/c$a;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object p4

    const/16 v0, 0x800

    .line 81
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->mark(I)V

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->f:Lcom/bumptech/glide/load/resource/c/c$b;

    invoke-virtual {v0, p4}, Lcom/bumptech/glide/load/resource/c/c$b;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    .line 83
    invoke-virtual {p4}, Ljava/io/InputStream;->reset()V

    .line 86
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0, p4, p2, p3}, Lcom/bumptech/glide/load/resource/c/c;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/c/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/model/f;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/f;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v0, p4, p1}, Lcom/bumptech/glide/load/model/f;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 94
    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/resource/c/c;->b(Lcom/bumptech/glide/load/model/f;II)Lcom/bumptech/glide/load/resource/c/a;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/model/f;II)Lcom/bumptech/glide/load/engine/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/f;",
            "II)",
            "Lcom/bumptech/glide/load/engine/j<",
            "Lcom/bumptech/glide/load/resource/c/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/bumptech/glide/h/a;->a()Lcom/bumptech/glide/h/a;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/bumptech/glide/h/a;->b()[B

    move-result-object v1

    .line 61
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/resource/c/c;->a(Lcom/bumptech/glide/load/model/f;II[B)Lcom/bumptech/glide/load/resource/c/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h/a;->a([B)Z

    if-eqz p1, :cond_0

    .line 65
    new-instance p2, Lcom/bumptech/glide/load/resource/c/b;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/c/b;-><init>(Lcom/bumptech/glide/load/resource/c/a;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h/a;->a([B)Z

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/bumptech/glide/load/model/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/c/c;->a(Lcom/bumptech/glide/load/model/f;II)Lcom/bumptech/glide/load/engine/j;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/c/c;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/c/c;->c:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->h:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->h:Ljava/lang/String;

    return-object v0
.end method
