.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/n;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v1, "AudioPlayFailed"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/feedback/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/n;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;

    iget-object v1, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->c(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/n;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;

    iget-object v1, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->c(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    :cond_0
    return-void
.end method
