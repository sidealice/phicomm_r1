.class Lcom/alibaba/sdk/android/feedback/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/util/c;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->g(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/c;->g(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/c;->a(Lcom/alibaba/sdk/android/feedback/util/c;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    return-void
.end method
