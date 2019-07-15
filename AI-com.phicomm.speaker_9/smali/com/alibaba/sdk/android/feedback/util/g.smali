.class Lcom/alibaba/sdk/android/feedback/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/util/c;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->g(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/util/c;->f(Lcom/alibaba/sdk/android/feedback/util/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->b(Lcom/alibaba/sdk/android/feedback/util/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->c(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->c(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->c(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/c;->a(Lcom/alibaba/sdk/android/feedback/util/c;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/c;->a(Lcom/alibaba/sdk/android/feedback/util/c;Z)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/g;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->h(Lcom/alibaba/sdk/android/feedback/util/c;)V

    return-void
.end method
