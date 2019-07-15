.class Lcom/bumptech/glide/load/resource/gif/f$c;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/resource/gif/f;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/gif/f;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f$c;->a:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/gif/f;Lcom/bumptech/glide/load/resource/gif/f$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/gif/f$c;-><init>(Lcom/bumptech/glide/load/resource/gif/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/f$a;

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f$c;->a:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/f;->a(Lcom/bumptech/glide/load/resource/gif/f$a;)V

    return v1

    .line 137
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 138
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/f$a;

    .line 139
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/f/b/j;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
