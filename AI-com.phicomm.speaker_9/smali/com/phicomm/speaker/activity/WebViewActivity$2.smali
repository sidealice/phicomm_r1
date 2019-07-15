.class Lcom/phicomm/speaker/activity/WebViewActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/WebViewActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/WebViewActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/WebViewActivity;->b(Lcom/phicomm/speaker/activity/WebViewActivity;)Lcom/phicomm/speaker/jsbridge/JavaBridge;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->loadJsBridge(Landroid/webkit/WebView;)V

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/WebViewActivity;->b(Lcom/phicomm/speaker/activity/WebViewActivity;)Lcom/phicomm/speaker/jsbridge/JavaBridge;

    move-result-object p1

    const-string p2, "onPageFinish"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/WebViewActivity;->j()V

    .line 150
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/WebViewActivity;->a(Lcom/phicomm/speaker/activity/WebViewActivity;Z)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 141
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    const p3, 0x7f0f0133

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p2, v0, v1}, Lcom/phicomm/speaker/activity/WebViewActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceivedError: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    const p3, 0x7f0f0179

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/WebViewActivity;->a(Lcom/phicomm/speaker/activity/WebViewActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 158
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "favicon.ico"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedHttpError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " * "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    const p3, 0x7f0f0076

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/WebViewActivity;->a(Lcom/phicomm/speaker/activity/WebViewActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 135
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    const p3, 0x7f0f0179

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/WebViewActivity;->a(Lcom/phicomm/speaker/activity/WebViewActivity;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    const v1, 0x7f0f0110

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    iget-object p2, p0, Lcom/phicomm/speaker/activity/WebViewActivity$2;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initWebView exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return p1
.end method
