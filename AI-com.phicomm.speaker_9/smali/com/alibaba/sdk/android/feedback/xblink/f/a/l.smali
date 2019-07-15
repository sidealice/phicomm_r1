.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/alibaba/sdk/android/feedback/util/a/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/util/a/b;->a()[B

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    sget-object v3, Lcom/alibaba/sdk/android/feedback/util/j;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/util/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    new-instance v2, Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/feedback/util/a;-><init>()V

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;Lcom/alibaba/sdk/android/feedback/util/a;)Lcom/alibaba/sdk/android/feedback/util/a;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/util/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/util/a;->a()V

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/feedback/util/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/util/a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v3}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sdk/android/feedback/util/a;->a(Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/m;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/m;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/n;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/n;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
