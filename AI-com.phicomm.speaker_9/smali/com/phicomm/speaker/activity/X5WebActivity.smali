.class public Lcom/phicomm/speaker/activity/X5WebActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "X5WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/activity/X5WebActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field mWebView:Lcom/tencent/smtt/sdk/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090325
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const-string v0, "http://geek.csdn.net/"

    .line 37
    iput-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/X5WebActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLightTouchEnabled(Z)V

    .line 81
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/phicomm/speaker/activity/X5WebActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/activity/X5WebActivity$a;-><init>(Lcom/phicomm/speaker/activity/X5WebActivity;Lcom/phicomm/speaker/activity/X5WebActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/phicomm/speaker/activity/X5WebActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/X5WebActivity$1;-><init>(Lcom/phicomm/speaker/activity/X5WebActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/zxing/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xbb9

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/X5WebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "test"

    .line 223
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/X5WebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 238
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 241
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 52
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->d()V

    .line 53
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->b()V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/X5WebActivity;->a(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->e()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0066

    .line 46
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/X5WebActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTENT_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iput-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->copyBackForwardList()Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebBackForwardList;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->c()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->c()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xbb9

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "SCAN_RESULT"

    .line 130
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/activity/X5WebActivity;->a:Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/X5WebActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/X5WebActivity;->g()V

    .line 229
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
