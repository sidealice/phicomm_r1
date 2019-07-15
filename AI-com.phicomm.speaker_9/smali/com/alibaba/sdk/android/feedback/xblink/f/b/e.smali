.class Lcom/alibaba/sdk/android/feedback/xblink/f/b/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/e;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "sourceId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.alibaba.mobileim.ui.windvane.h5notify"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/e;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;

    invoke-static {p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/e;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;

    invoke-static {p2, p1, v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
