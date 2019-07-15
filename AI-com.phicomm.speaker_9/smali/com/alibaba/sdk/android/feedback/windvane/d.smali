.class public Lcom/alibaba/sdk/android/feedback/windvane/d;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/xblink/webview/i;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

.field protected c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

.field protected d:[B

.field protected e:Ljava/lang/String;

.field protected f:Z

.field protected g:Z

.field protected h:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

.field protected i:Lcom/alibaba/sdk/android/feedback/windvane/k;

.field protected j:Lcom/alibaba/sdk/android/feedback/windvane/j;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->d:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->m:Z

    const-string v0, "WXPageAction"

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->o:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 2

    sget v0, Lcom/alibaba/sdk/android/feedback/R$layout;->ali_feedback_error:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->setErrorView(Landroid/view/View;)V

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->error_view_refresh_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/e;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/windvane/e;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    const-string v1, "needLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->f:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    const-string v1, "need_show_nav"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->g:Z

    return-void
.end method

.method private c()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->h:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->h:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->p:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/R$drawable;->ali_feedback_progress_bar_states:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->h:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->setmUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->h:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->setWebViewErrorListener(Lcom/alibaba/sdk/android/feedback/xblink/webview/i;)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->i:Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    const-string v1, "WXPage"

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->j:Lcom/alibaba/sdk/android/feedback/windvane/j;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->k:Landroid/view/View;

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->title_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/g;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/g;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->d:[B

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->loadUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    const-string v2, "PARAMS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    const-string v3, "DATA"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->d:[B

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    const-string v3, "APPKEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->r:Landroid/os/Bundle;

    const-string v3, "URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->init(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->setUrlFilter(Lcom/alibaba/sdk/android/feedback/xblink/e/a;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setAppkey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setCurrentUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->n:Z

    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/windvane/k;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->i:Lcom/alibaba/sdk/android/feedback/windvane/k;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/j;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/windvane/j;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->j:Lcom/alibaba/sdk/android/feedback/windvane/j;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->d()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->c()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->b()V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/alibaba/sdk/android/feedback/R$layout;->ali_feedback_container_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->k:Landroid/view/View;

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->k:Landroid/view/View;

    sget p3, Lcom/alibaba/sdk/android/feedback/R$id;->hybird_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->e()V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/windvane/d;->a(Landroid/view/LayoutInflater;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->a()V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->k:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onReceivedError()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->q:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->k:Landroid/view/View;

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->webview_icon_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->q:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/R$color;->ali_feedback_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/R$drawable;->ali_feedback_common_back_btn_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->d()V

    :cond_2
    return-void
.end method
