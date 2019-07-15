.class Lcom/bumptech/glide/load/resource/gif/f;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/f$d;,
        Lcom/bumptech/glide/load/resource/gif/f$a;,
        Lcom/bumptech/glide/load/resource/gif/f$c;,
        Lcom/bumptech/glide/load/resource/gif/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/gif/f$b;

.field private final b:Lcom/bumptech/glide/b/a;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lcom/bumptech/glide/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e<",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/load/resource/gif/f$a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/f$b;Lcom/bumptech/glide/b/a;II)V
    .locals 1

    .line 43
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-static {p1, p3, p4, p5, v0}, Lcom/bumptech/glide/load/resource/gif/f;->a(Landroid/content/Context;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/e;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/bumptech/glide/load/resource/gif/f;-><init>(Lcom/bumptech/glide/load/resource/gif/f$b;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/e;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/f$b;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/f$b;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/e<",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->e:Z

    if-nez p3, :cond_0

    .line 50
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/load/resource/gif/f$c;-><init>(Lcom/bumptech/glide/load/resource/gif/f;Lcom/bumptech/glide/load/resource/gif/f$1;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f;->a:Lcom/bumptech/glide/load/resource/gif/f$b;

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/f;->b:Lcom/bumptech/glide/b/a;

    .line 54
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/f;->c:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/f;->f:Lcom/bumptech/glide/e;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "II",
            "Lcom/bumptech/glide/load/engine/a/c;",
            ")",
            "Lcom/bumptech/glide/e<",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/h;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/load/resource/gif/h;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    .line 173
    new-instance p4, Lcom/bumptech/glide/load/resource/gif/g;

    invoke-direct {p4}, Lcom/bumptech/glide/load/resource/gif/g;-><init>()V

    .line 174
    invoke-static {}, Lcom/bumptech/glide/load/resource/a;->b()Lcom/bumptech/glide/load/a;

    move-result-object v1

    .line 175
    invoke-static {p0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    const-class v2, Lcom/bumptech/glide/b/a;

    invoke-virtual {p0, p4, v2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;)Lcom/bumptech/glide/h$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h$b;->a(Ljava/lang/Object;)Lcom/bumptech/glide/h$b$a;

    move-result-object p0

    const-class p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h$b$a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/f;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 95
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->e:Z

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->b:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->a()V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/f;->b:Lcom/bumptech/glide/b/a;

    invoke-virtual {v2}, Lcom/bumptech/glide/b/a;->b()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 102
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/f;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/f;->b:Lcom/bumptech/glide/b/a;

    invoke-virtual {v2}, Lcom/bumptech/glide/b/a;->d()I

    move-result v2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/bumptech/glide/load/resource/gif/f$a;-><init>(Landroid/os/Handler;IJ)V

    .line 103
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/f;->f:Lcom/bumptech/glide/e;

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/f$d;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/gif/f$d;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/f/b/j;)Lcom/bumptech/glide/f/b/j;

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->d:Z

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->h:Z

    .line 73
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/f;->e()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Transformation must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->f:Lcom/bumptech/glide/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/f;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f;->f:Lcom/bumptech/glide/e;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/resource/gif/f$a;)V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->h:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->g:Lcom/bumptech/glide/load/resource/gif/f$a;

    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f;->g:Lcom/bumptech/glide/load/resource/gif/f$a;

    .line 117
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/f;->a:Lcom/bumptech/glide/load/resource/gif/f$b;

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/f$a;->a(Lcom/bumptech/glide/load/resource/gif/f$a;)I

    move-result p1

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/resource/gif/f$b;->b(I)V

    if-eqz v0, :cond_1

    .line 120
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/f;->e:Z

    .line 124
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/f;->e()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->d:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/f;->b()V

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->g:Lcom/bumptech/glide/load/resource/gif/f$a;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->g:Lcom/bumptech/glide/load/resource/gif/f$a;

    invoke-static {v0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/f/b/j;)V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->g:Lcom/bumptech/glide/load/resource/gif/f$a;

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->h:Z

    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->g:Lcom/bumptech/glide/load/resource/gif/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->g:Lcom/bumptech/glide/load/resource/gif/f$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/f$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
