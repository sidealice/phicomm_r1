.class public Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;
.super Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/xblink/webview/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final FROM_TAOBAO_ITEM:Ljava/lang/String; = "fromTaobaoItem"

.field public static final HIDE_TITLE:Ljava/lang/String; = "hideTitle"

.field public static final NEED_LOGIN:Ljava/lang/String; = "needLogin"

.field public static final NEED_SHOW_BACK:Ljava/lang/String; = "need_show_back"

.field public static final NEED_SHOW_NAV:Ljava/lang/String; = "need_show_nav"

.field public static final REMAI_REQESTCODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WXBaseHybridActivity"


# instance fields
.field private JS_API_NAME:Ljava/lang/String;

.field private isAutoLogin:Z

.field private isDestroyed:Z

.field private mBackView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field protected mPageAction:Lcom/alibaba/sdk/android/feedback/windvane/k;

.field protected mWXPage:Lcom/alibaba/sdk/android/feedback/windvane/j;

.field protected needLogin:Z

.field protected needShowNav:Z

.field private progressbar:Landroid/widget/ProgressBar;

.field protected webViewClient:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

.field protected webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->isAutoLogin:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mHandler:Landroid/os/Handler;

    const-string v0, "WXPageAction"

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->JS_API_NAME:Ljava/lang/String;

    return-void
.end method

.method private controlWebview()V
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "needLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->needLogin:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "need_show_nav"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->needShowNav:Z

    return-void
.end method

.method public static getSubUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "AliApp(WX/1)"

    return-object v0
.end method

.method private registerJSObject()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->JS_API_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mPageAction:Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    const-string v1, "WXPage"

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mWXPage:Lcom/alibaba/sdk/android/feedback/windvane/j;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setErrorView()V
    .locals 2

    sget v0, Lcom/alibaba/sdk/android/feedback/R$layout;->ali_feedback_error:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->setErrorView(Landroid/view/View;)V

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->error_view_refresh_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/i;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/i;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setWebview()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webViewClient:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webViewClient:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->progressbar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->TAG:Ljava/lang/String;

    const-string v1, "setProgressDrawable "

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProgressDrawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->progressbar:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/R$drawable;->ali_feedback_progress_bar_states:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    new-instance v2, Lcom/alibaba/sdk/android/feedback/windvane/CustomWebChromeClient;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->progressbar:Landroid/widget/ProgressBar;

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/feedback/windvane/CustomWebChromeClient;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getSubUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webViewClient:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->setmUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webViewClient:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->setWebViewErrorListener(Lcom/alibaba/sdk/android/feedback/xblink/webview/i;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/h;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/h;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected loadUrl()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->postData:[B

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->loadUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->reload()V

    :cond_0
    sget v0, Lcom/alibaba/sdk/android/feedback/windvane/k;->a:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->JS_API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/sdk/android/feedback/windvane/k;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/windvane/k;->a(IILandroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->isDestroyed:Z

    new-instance p1, Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/k;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mPageAction:Lcom/alibaba/sdk/android/feedback/windvane/k;

    new-instance p1, Lcom/alibaba/sdk/android/feedback/windvane/j;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/j;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mWXPage:Lcom/alibaba/sdk/android/feedback/windvane/j;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->setErrorView()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->registerJSObject()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->setWebview()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->controlWebview()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->isDestroyed:Z

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webViewClient:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webViewClient:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->setDestroyed(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->removeAllViews()V

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->onDestroy()V

    return-void
.end method

.method public onReceivedError()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mBackView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->webview_icon_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mBackView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mBackView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mBackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/R$color;->ali_feedback_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->mBackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/R$drawable;->ali_feedback_common_back_btn_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->d()V

    :cond_2
    return-void
.end method
