.class public Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;
.super Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;


# static fields
.field public static final FROM:Ljava/lang/String; = "from"

.field public static final NEED_SHOW_BACK:Ljava/lang/String; = "need_show_back"

.field public static final NEED_TRANS:Ljava/lang/String; = "need_trans"

.field public static final PLUGIN_TITLE:Ljava/lang/String; = "plugin_title"

.field private static final TAG:Ljava/lang/String; = "CustomHybirdActivity"


# instance fields
.field private from:Ljava/lang/String;

.field private hideTitle:Z

.field private mTitleClickCount:I

.field private needShowBack:Z

.field private needTrans:Z

.field private pluginTitle:Ljava/lang/String;

.field private rightTitleBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->needTrans:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->pluginTitle:Ljava/lang/String;

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mTitleClickCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->isCanGoBack()Z

    move-result p0

    return p0
.end method

.method private controlTitleBar()V
    .locals 5

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hideTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->hideTitle:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "need_show_back"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->needShowBack:Z

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->title_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->needShowBack:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/a;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/a;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->hideTitle:Z

    if-eqz v1, :cond_1

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->title_bar_shadow_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->webview_icon_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/b;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/b;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "plugin_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->pluginTitle:Ljava/lang/String;

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->title_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "URL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->from:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "need_trans"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->needTrans:Z

    sget v2, Lcom/alibaba/sdk/android/feedback/R$id;->title_button:I

    invoke-virtual {p0, v2}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->rightTitleBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/alibaba/sdk/android/feedback/util/k;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_1
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/feedback/util/k;->a(I)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->rightTitleBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->f()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->rightTitleBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->f()I

    move-result v3

    int-to-float v3, v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->b()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->rightTitleBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->b()F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_4
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->c()I

    move-result v2

    if-lez v2, :cond_6

    :try_start_2
    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_6
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method private isCanGoBack()Z
    .locals 5

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->needShowNav:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FeedbackAPI host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->TAG:Ljava/lang/String;

    const-string v1, "FeedbackAPI host can go back"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected createFilter()Lcom/alibaba/sdk/android/feedback/xblink/e/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->TAG:Ljava/lang/String;

    const-string v1, "Back custom back"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/alibaba/sdk/android/feedback/R$layout;->ali_feedback_container_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    sget p1, Lcom/alibaba/sdk/android/feedback/R$id;->hybird_container:I

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mViewController:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sput-object p0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mUrl:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->controlTitleBar()V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mWebView:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->resumeTimers()V

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->loadUrl()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onDestroy()V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->cleanActivity()V

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->leaveCallback:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->leaveCallback:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->loadUrl()V

    return-void
.end method

.method public onUrlIntercept(Lcom/alibaba/sdk/android/feedback/xblink/e/a/a;I)V
    .locals 0

    return-void
.end method
