.class Lcom/phicomm/speaker/activity/JsBridgeActivity$3;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "JsBridgeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/JsBridgeActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/phicomm/speaker/activity/JsBridgeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Lcom/phicomm/speaker/jsbridge/JavaBridge;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->loadJsBridge(Lcom/tencent/smtt/sdk/WebView;)V

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Lcom/phicomm/speaker/jsbridge/JavaBridge;

    move-result-object p1

    const-string p2, "onPageFinish"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->j()V

    .line 151
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Lcom/phicomm/speaker/activity/JsBridgeActivity;Z)Z

    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 142
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const p3, 0x7f0f0133

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p2, v0, v1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceivedError: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const p3, 0x7f0f0179

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Lcom/phicomm/speaker/activity/JsBridgeActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V
    .locals 1

    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V

    .line 158
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

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

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " * "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const p3, 0x7f0f0076

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Lcom/phicomm/speaker/activity/JsBridgeActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V

    .line 136
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const p3, 0x7f0f0179

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Lcom/phicomm/speaker/activity/JsBridgeActivity;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const v1, 0x7f0f0110

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    iget-object p2, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;->b:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
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
