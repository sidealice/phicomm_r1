.class public Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;
.super Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomHybirdWebViewClient"

.field private static final sDomainWhiteList:[Ljava/lang/String;


# instance fields
.field private isDestroyed:Z

.field private mUrl:Ljava/lang/String;

.field private pageFinishCallback:Lcom/alibaba/sdk/android/feedback/windvane/c;

.field private reLoginTime:I

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chat.etao.com"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amos.alicdn.com"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "mobileim.etao.com"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "chat.im.daily.taobao.net"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "interface.im.daily.taobao.net"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "tcms-openim.wangxin.taobao.com"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "m.taobao.com"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "taobao.com"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->sDomainWhiteList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->reLoginTime:I

    return-void
.end method

.method private loadSuccess(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public PageFinishCallback(Lcom/alibaba/sdk/android/feedback/windvane/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->pageFinishCallback:Lcom/alibaba/sdk/android/feedback/windvane/c;

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->pageFinishCallback:Lcom/alibaba/sdk/android/feedback/windvane/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->pageFinishCallback:Lcom/alibaba/sdk/android/feedback/windvane/c;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/feedback/windvane/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->TAG:Ljava/lang/String;

    const-string v1, "FeedbackAPI replacing original title with the custom one"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->d()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->loadSuccess(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDestroyed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->isDestroyed:Z

    return-void
.end method

.method public setPageFinishCallback(Lcom/alibaba/sdk/android/feedback/windvane/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->pageFinishCallback:Lcom/alibaba/sdk/android/feedback/windvane/c;

    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->title:Landroid/widget/TextView;

    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    :try_start_0
    sget-object p1, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackAPI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " testing Url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alibaba/sdk/android/feedback/util/p;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    sget-object p1, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdWebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: uri parse error, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method
