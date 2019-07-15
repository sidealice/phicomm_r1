.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v1, "HY_FAILED"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;

    iget-object v1, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;

    iget-object v1, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    :cond_0
    return-void
.end method
