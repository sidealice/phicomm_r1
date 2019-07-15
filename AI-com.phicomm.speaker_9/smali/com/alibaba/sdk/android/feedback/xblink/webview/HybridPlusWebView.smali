.class public Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;
.super Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/alibaba/sdk/android/feedback/xblink/c/j;


# static fields
.field public static final CHARSET:Ljava/lang/String; = "charset"

.field public static final DOMREADY:I = 0x3f8

.field public static final HTML_CONTENT:Ljava/lang/String; = "html_content"

.field public static final HTTPSVERIFYERROR:Ljava/lang/String; = "httpsverifyerror"

.field public static final HTTPS_CERT_EXPIRED:I = -0x25a

.field public static final HTTPS_CERT_INVILD:I = -0x259

.field public static final LOAD_BEGIN:I = 0x3f3

.field public static final LOAD_ERROR:I = 0x3f5

.field public static final LOAD_FINSH:I = 0x3f4

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final PAGE_FINSH:I = 0x3f7

.field private static SUPPORTED_MIMETYPE:[Ljava/lang/String; = null

.field private static SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HybridPlusWebView"

.field public static final UNSUPPORTED_MIMETYPE:I = -0x190

.field public static final URL_HITTED:I = 0x3f6

.field public static final WEBVIEW_MIMETYPE:Ljava/lang/String; = "webview_mimetype"


# instance fields
.field private final HTML_FINSH:I

.field private beginTime:J

.field private htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

.field private isLoading:Z

.field private isReload:Z

.field private needDomReady:Z

.field private requestHeaders:Ljava/util/Map;

.field private sslErrorListener:Lcom/alibaba/sdk/android/feedback/xblink/webview/c;

.field private token:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text/html"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "text/plain"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "application/xhtml+xml"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "application/xml"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "image/jpeg"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "image/png"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "image/webp"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "image/gif"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xc8

    iput p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->HTML_FINSH:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->beginTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->requestHeaders:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xc8

    iput p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->HTML_FINSH:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->beginTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->requestHeaders:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xc8

    iput p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->HTML_FINSH:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->beginTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->requestHeaders:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->beginTime:J

    return-wide v0
.end method

.method private addDomReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "window.WindVane.call(\'WVPlusWebView\',\'htmlFinsh\',{});\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return-object p1

    :cond_1
    const-string v0, "</body>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    return-object p1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<script type=\"text/javascript\" src=\"http://g.tbcdn.cn/mtb/lib-windvane/1.2.4/bridge.js\"></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<script type=\"text/javascript\">document.addEventListener( \"DOMContentLoaded\", function() { window.WindVane.call(\'WVPlusWebView\',\'htmlFinsh\',{}); }, false ); </script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->needDomReady:Z

    const-string v1, "WVPlusWebView"

    new-instance v2, Lcom/alibaba/sdk/android/feedback/xblink/webview/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/sdk/android/feedback/xblink/webview/b;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;Lcom/alibaba/sdk/android/feedback/xblink/webview/a;)V

    invoke-super {p0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->context:Landroid/content/Context;

    const-string v2, "webview_mimetype"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    :try_start_0
    const-string v4, "webview_mimetype"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "HybridPlusWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get mimeType ClassCastException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HybridPlusWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "support mimetype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    return-void

    :cond_1
    sput-object v3, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isReload:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a(Lcom/alibaba/sdk/android/feedback/xblink/c/j;)V

    :cond_4
    iget v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->url:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isLoading:Z

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->requestHeaders:Ljava/util/Map;

    if-eqz p2, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->requestHeaders:Ljava/util/Map;

    :cond_5
    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->requestHeaders:Ljava/util/Map;

    iget v8, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    move-object v3, p2

    move-object v5, p0

    move-object v7, p1

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/c/j;Ljava/util/Map;Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    new-instance p2, Ljava/lang/Thread;

    iget-object p3, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p2, p0, p1, v2}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->beginTime:J

    return-void
.end method


# virtual methods
.method public back()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public callback([BLjava/util/Map;I)V
    .locals 8

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    if-ne p3, v0, :cond_b

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    const-string p3, "httpsverifyerror"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "httpsverifyerror"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "EXPIRED"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, -0x25a

    :goto_0
    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v1, "INVALID"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, -0x259

    goto :goto_0

    :cond_1
    const-string p3, "content-type"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, ""

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    sget-object v2, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    array-length v4, v2

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v1, "mimetype"

    invoke-interface {p2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "HybridPlusWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport minitype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 p1, -0x190

    iput p1, v0, Landroid/os/Message;->what:I

    const-string p1, "url"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_9

    const-string p3, "charset"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string p3, "HybridPlusWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    :goto_4
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->needDomReady:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->addDomReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_5
    const-string p1, "html_content"

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src=\"data:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";base64,"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"/>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mimetype"

    const-string v1, "text/html"

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "html_content"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p3, "HybridPlusWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_5

    :cond_9
    :goto_6
    const-string p1, "set-cookie"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->url:Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 p1, 0xc8

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a(Lcom/alibaba/sdk/android/feedback/xblink/c/j;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    :cond_0
    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->destroy()V

    return-void
.end method

.method public enableDomReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->needDomReady:Z

    return-void
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isLoading:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a(Lcom/alibaba/sdk/android/feedback/xblink/c/j;)V

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isLoading:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HybridPlusWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goBack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->goBack()V

    :cond_4
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a(Lcom/alibaba/sdk/android/feedback/xblink/c/j;)V

    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isLoading:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-ge p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-gez p1, :cond_5

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HybridPlusWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goBackOrForward: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->goBackOrForward(I)V

    :cond_7
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->handleMessage(Landroid/os/Message;)Z

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x190

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0xc8

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 p1, 0x3f8

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->sslErrorListener:Lcom/alibaba/sdk/android/feedback/xblink/webview/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->sslErrorListener:Lcom/alibaba/sdk/android/feedback/xblink/webview/c;

    const/16 v0, -0x259

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/c;->a(I)V

    :cond_0
    return v3

    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->sslErrorListener:Lcom/alibaba/sdk/android/feedback/xblink/webview/c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->sslErrorListener:Lcom/alibaba/sdk/android/feedback/xblink/webview/c;

    const/16 v0, -0x25a

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/c;->a(I)V

    :cond_1
    return v3

    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    const-string v0, "DOMContentLoaded"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_3
    return v3

    :cond_4
    iput-boolean v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isLoading:Z

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-eqz v0, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v0, "response-code"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "response-code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HybridPlusWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "html_code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v1, 0x12c

    const/16 v4, 0x190

    if-lt v0, v1, :cond_7

    if-ge v0, v4, :cond_7

    const-string v1, "location"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "location"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->loadUrl(Ljava/lang/String;)V

    return v3

    :cond_7
    if-nez v0, :cond_8

    iget-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    const-string v0, "HTML\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, p0, v4, v0, v9}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "html_content"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    const-string v0, "mimetype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "charset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    move-object v4, p0

    move-object v5, v9

    invoke-super/range {v4 .. v9}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    const-string v0, "HTML\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, p0, v4, v0, v9}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    const-string p1, "HybridPlusWebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dom downloaded time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->beginTime:J

    sub-long v7, v3, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    if-eqz p1, :cond_e

    goto :goto_3

    :cond_c
    iput-boolean v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isLoading:Z

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->webViewClient:Landroid/webkit/WebViewClient;

    const-string v3, "unsupported mini type"

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, p1}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    if-eqz p1, :cond_e

    :goto_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b()V

    :cond_e
    return v2

    :pswitch_data_0
    .packed-switch -0x25a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://m.taobao.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://m.taobao.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "ttid"

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->a()Lcom/alibaba/sdk/android/feedback/xblink/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public reload()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->reload(Z)V

    return-void
.end method

.method public reload(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isLoading:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->reload()V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "HybridPlusWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload & post\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->requestHeaders:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "HybridPlusWebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reload & loading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setSslErrorListener(Lcom/alibaba/sdk/android/feedback/xblink/webview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->sslErrorListener:Lcom/alibaba/sdk/android/feedback/xblink/webview/c;

    return-void
.end method

.method public stopLoading()V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->token:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridPlusWebView;->htmlDownloader:Lcom/alibaba/sdk/android/feedback/xblink/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a(Lcom/alibaba/sdk/android/feedback/xblink/c/j;)V

    :cond_1
    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->stopLoading()V

    return-void
.end method
