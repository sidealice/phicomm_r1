.class public Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final NOTIFY_PAGE_ERROR:I = 0x192

.field public static final NOTIFY_PAGE_FINISH:I = 0x191

.field public static final NOTIFY_PAGE_START:I = 0x190

.field public static final NOTIFY_SAVE_IMAGE_FAIL:I = 0x195

.field public static final NOTIFY_SAVE_IMAGE_SUCCESS:I = 0x194

.field public static final NOTIFY_TIME_OUT:I = 0x193

.field public static final NOTIFY_TOOL_BAR_SETTING:I = 0x196

.field private static final TAG:Ljava/lang/String; = "HybridWebView"


# instance fields
.field private appkey:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field private currentUrl:Ljava/lang/String;

.field protected entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

.field private event:Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;

.field protected isAlive:Z

.field private loadTime:J

.field protected mHandler:Landroid/os/Handler;

.field private mImageUrl:Ljava/lang/String;

.field private mPopupController:Lcom/alibaba/sdk/android/feedback/xblink/view/a;

.field private mPopupMenuTags:[Ljava/lang/String;

.field private onErrorTime:J

.field private popupClickListener:Landroid/view/View$OnClickListener;

.field protected supportDownload:Z

.field protected webChromeClient:Landroid/webkit/WebChromeClient;

.field protected webViewClient:Landroid/webkit/WebViewClient;

.field private wvSupportNativeJs:Z

.field private wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->supportDownload:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvSupportNativeJs:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->currentUrl:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->appkey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->onErrorTime:J

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4fdd\u5b58\u5230\u76f8\u518c"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mPopupMenuTags:[Ljava/lang/String;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/o;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/o;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->supportDownload:Z

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvSupportNativeJs:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->currentUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->appkey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->onErrorTime:J

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "\u4fdd\u5b58\u5230\u76f8\u518c"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mPopupMenuTags:[Ljava/lang/String;

    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/webview/o;

    invoke-direct {p2, p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/o;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->supportDownload:Z

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvSupportNativeJs:Z

    const-string p3, ""

    iput-object p3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->currentUrl:Ljava/lang/String;

    const-string p3, ""

    iput-object p3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->appkey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->onErrorTime:J

    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "\u4fdd\u5b58\u5230\u76f8\u518c"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mPopupMenuTags:[Ljava/lang/String;

    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/webview/o;

    invoke-direct {p2, p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/o;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->init()V

    return-void
.end method

.method private addTTID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    const-string v3, "m.taobao.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "ttid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "ttid"

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->a()Lcom/alibaba/sdk/android/feedback/xblink/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private init()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->requestFocus()Z

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "HybridWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable javascript on device, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->a()Lcom/alibaba/sdk/android/feedback/xblink/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->a()Lcom/alibaba/sdk/android/feedback/xblink/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AliApp("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WindVane/4.5.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_4

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_6

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_6
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a()Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->b()V

    new-instance v2, Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/j;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    new-instance v2, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;-><init>()V

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->event:Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->event:Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    const-string v2, "WXAppEvent"

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->event:Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_8

    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v0, "\u521d\u59cb\u5316"

    const-string v3, ""

    :goto_1
    invoke-static {v0, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_2

    :cond_7
    const-string v4, "intent:#Intent;S.K_1171477665=;end"

    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u521d\u59cb\u5316"

    const-string v3, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_8
    :goto_2
    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/n;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/n;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/s;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/s;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/webview/l;->a()V

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method private setPageTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HybridWebView"

    const-string v1, "feedback setPageTitle"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/feedback/util/k;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateReturnButtonBehaviour(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "HybridWebView"

    const-string v1, "feedback updateReturnButtonBehaviour"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->title_back:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    check-cast v1, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->setJSControlledBackPress(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p1, :cond_0

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/p;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/p;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/q;

    invoke-direct {p1, p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/q;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V

    goto :goto_0

    return-void
.end method

.method private updateRightNavButton(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->title_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/feedback/util/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/r;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/r;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/util/k;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvSupportNativeJs:Z

    const/16 v1, 0x11

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    const-string p1, "HybridWebView"

    const-string p2, "addJavascriptInterface is disabled before API level 17 for security."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->a()V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->a()Lcom/alibaba/sdk/android/feedback/xblink/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->b()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->removeAllViews()V

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableTakeDownload(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    instance-of v0, v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;->enableTakeDownload(Z)V

    :cond_0
    return-void
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLoadTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    return-wide v0
.end method

.method public getUrlFilter()Lcom/alibaba/sdk/android/feedback/xblink/e/a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    instance-of v0, v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;->getUrlFilter()Lcom/alibaba/sdk/android/feedback/xblink/e/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getWVCallBackContext()Lcom/alibaba/sdk/android/feedback/xblink/f/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->event:Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->event:Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->d()Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWVHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "pageTitle"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "pageTitle"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setPageTitle(Ljava/lang/String;)V

    :cond_0
    const-string p1, "canGoBack"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "backCallback"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->updateReturnButtonBehaviour(ZLjava/lang/String;)V

    const-string p1, "haveRightNavButton"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v2, "rightButtonContent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rightButtonCallback"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-direct {p0, p1, v2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->updateRightNavButton(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/util/k;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    const-string v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u5931\u8d25"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    const-string v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u6210\u529f"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->c()V

    return v1

    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->onErrorTime:J

    return v1

    :pswitch_5
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->c()V

    iget-wide v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->onErrorTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->onErrorTime:J

    sub-long v6, v2, v4

    const-wide/16 v2, 0xbb8

    cmp-long p1, v6, v2

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->e()V

    :cond_3
    return v1

    :pswitch_6
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvUIModel:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->b()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HybridWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataWithBaseURL: baseUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HybridWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackAPI url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HybridWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addTTID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    :cond_2
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HybridWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl with headers: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addTTID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onMessage(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->a()Lcom/alibaba/sdk/android/feedback/xblink/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->b()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->b()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->entryManager:Lcom/alibaba/sdk/android/feedback/xblink/f/j;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    :cond_1
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HybridWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postUrl: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    :cond_2
    return-void
.end method

.method public reload()V
    .locals 2

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->currentUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoadTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    return-void
.end method

.method public setSupportDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->supportDownload:Z

    return-void
.end method

.method public setUrlFilter(Lcom/alibaba/sdk/android/feedback/xblink/e/a;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    instance-of v0, v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;->setUrlFilter(Lcom/alibaba/sdk/android/feedback/xblink/e/a;)V

    :cond_0
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    instance-of v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/u;

    const-string v0, "Your WebChromeClient must be extended from HybridWebChromeClient"

    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/u;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    instance-of v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebViewClient;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/u;

    const-string v0, "Your WebViewClient must be extended from HybridWebViewClient"

    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/u;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public superLoadUrl(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadTime:J

    :cond_1
    return-void
.end method

.method public supportJavascriptInterface(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->wvSupportNativeJs:Z

    return-void
.end method
