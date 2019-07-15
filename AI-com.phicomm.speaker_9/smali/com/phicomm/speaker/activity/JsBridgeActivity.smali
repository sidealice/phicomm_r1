.class public Lcom/phicomm/speaker/activity/JsBridgeActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "JsBridgeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/activity/JsBridgeActivity$b;,
        Lcom/phicomm/speaker/activity/JsBridgeActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

.field private d:Lcom/phicomm/speaker/jsbridge/a;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field mWebView:Lcom/tencent/smtt/sdk/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090325
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const-string v0, "https://www.baidu.com/"

    .line 48
    iput-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->e:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/phicomm/speaker/activity/JsBridgeActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$1;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/JsBridgeActivity;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->f:Z

    .line 169
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->j()V

    .line 170
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->e()V

    .line 172
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/JsBridgeActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Lcom/phicomm/speaker/jsbridge/JavaBridge;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Lcom/phicomm/speaker/jsbridge/a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->d:Lcom/phicomm/speaker/jsbridge/a;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 91
    invoke-static {v1}, Lcom/tencent/smtt/sdk/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLightTouchEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/phicomm/speaker/activity/JsBridgeActivity$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/activity/JsBridgeActivity$b;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;Lcom/phicomm/speaker/activity/JsBridgeActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/phicomm/speaker/activity/JsBridgeActivity$a;

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/activity/JsBridgeActivity$a;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;Lcom/phicomm/speaker/activity/JsBridgeActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$3;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->clearCache(Z)V

    .line 252
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setTag(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 258
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "toast"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$4;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$4;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "toastLong"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$5;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$5;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    .line 286
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "showLoading"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$6;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$6;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    .line 294
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "hideLoading"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$7;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$7;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    .line 302
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "closePage"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$8;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$8;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    .line 310
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "getNetType"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$9;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$9;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "getToken"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$10;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$10;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "putData"

    new-instance v2, Lcom/phicomm/speaker/activity/JsBridgeActivity$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity$2;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsBridgeUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 72
    new-instance v0, Lcom/phicomm/speaker/jsbridge/JavaBridge;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;-><init>(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    .line 73
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->d()V

    .line 74
    new-instance v0, Lcom/phicomm/speaker/jsbridge/a;

    invoke-direct {v0}, Lcom/phicomm/speaker/jsbridge/a;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->d:Lcom/phicomm/speaker/jsbridge/a;

    .line 75
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->f()V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0042

    .line 66
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTENT_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iput-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    const-string v1, "nativeBack"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callHandler(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 240
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 241
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->e()V

    .line 242
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
