.class Lcom/alibaba/sdk/android/feedback/xblink/activity/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWVCallBackContext()Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWVCallBackContext()Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object p1

    const-string p2, "WXPage.onPaused"

    const-string v0, "{}"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    invoke-static {p2}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->access$000(Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FeedbackAPI Failed to extrack HomeKeyEventBroadCastReceiver intent action"

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
