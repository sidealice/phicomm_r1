.class Lcom/alibaba/sdk/android/feedback/xblink/activity/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "APPKEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WXCOMMUNICATIONPUSH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    iget-object v1, v1, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WXCOMMUNICATIONPUSH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    iget-object v1, v1, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    iget-object v0, v0, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->onBroadcast(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
