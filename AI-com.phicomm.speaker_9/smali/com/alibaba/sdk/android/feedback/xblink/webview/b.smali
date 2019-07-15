.class Lcom/alibaba/sdk/android/feedback/xblink/webview/b;
.super Lcom/alibaba/sdk/android/feedback/xblink/f/a;


# instance fields
.field final synthetic d:Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/b;->d:Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;Lcom/alibaba/sdk/android/feedback/xblink/webview/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/b;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/f/b;)Z
    .locals 6

    const-string p2, "htmlFinsh"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/b;->d:Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3f8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HybridPlusWebView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dom ready time:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/b;->d:Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;

    invoke-static {p3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->access$100(Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;)J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
