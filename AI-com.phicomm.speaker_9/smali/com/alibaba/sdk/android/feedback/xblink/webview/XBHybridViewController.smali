.class public Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;
.super Landroid/widget/LinearLayout;


# instance fields
.field protected isInited:Z

.field protected mContext:Landroid/content/Context;

.field protected mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initView(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->setOrientation(I)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;-><init>()V

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->initWithParams(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->removeAllViews()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->destroy()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    :cond_0
    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->initView(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    return-object v0
.end method

.method public init(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->initView(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    :cond_0
    return-void
.end method

.method protected initWithParams(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a()Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(Z)V

    :cond_1
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->initView(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;[B)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->initView(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    :cond_0
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->postUrl(Ljava/lang/String;[B)V

    return-void

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->initView(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->b(Landroid/view/View;)V

    return-void
.end method

.method public setUrlFilter(Lcom/alibaba/sdk/android/feedback/xblink/e/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->initView(Lcom/alibaba/sdk/android/feedback/xblink/webview/j;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setUrlFilter(Lcom/alibaba/sdk/android/feedback/xblink/e/a;)V

    const-string p1, "WVWebUrl"

    const-class v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/c;

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
