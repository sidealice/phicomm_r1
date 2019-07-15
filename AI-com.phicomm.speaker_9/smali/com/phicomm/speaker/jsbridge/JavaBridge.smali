.class public Lcom/phicomm/speaker/jsbridge/JavaBridge;
.super Ljava/lang/Object;
.source "JavaBridge.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/jsbridge/JavaBridge$a;,
        Lcom/phicomm/speaker/jsbridge/JavaBridge$c;,
        Lcom/phicomm/speaker/jsbridge/JavaBridge$b;
    }
.end annotation


# instance fields
.field private _messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/jsbridge/JavaBridge$b;",
            ">;"
        }
    .end annotation
.end field

.field private _responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/jsbridge/JavaBridge$c;",
            ">;"
        }
    .end annotation
.end field

.field private _uniqueId:J

.field private mContext:Landroid/app/Activity;

.field private mWebView:Landroid/webkit/WebView;

.field private mX5WebView:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;Landroid/webkit/WebView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mContext:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mX5WebView:Lcom/tencent/smtt/sdk/WebView;

    .line 47
    iput-object p3, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mWebView:Landroid/webkit/WebView;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_messageHandlers:Ljava/util/Map;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_responseCallbacks:Ljava/util/Map;

    const-wide/16 p1, 0x0

    .line 50
    iput-wide p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_uniqueId:J

    .line 52
    iget-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mX5WebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mX5WebView:Lcom/tencent/smtt/sdk/WebView;

    const-string p2, "JavaBridge"

    invoke-virtual {p1, p0, p2}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mWebView:Landroid/webkit/WebView;

    const-string p2, "JavaBridge"

    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private _dispatchMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java call js: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    const-string v0, "javascript:WebViewJavascriptBridge._handleMessageFromJava(\'%s\');"

    const/4 v1, 0x1

    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->doubleEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_dispatchMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;-><init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private _sendData(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V
    .locals 7

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data"

    .line 149
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_uniqueId:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_uniqueId:J

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_responseCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "callbackId"

    .line 153
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "handlerName"

    .line 156
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_1
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_dispatchMessage(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callbackJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/jsbridge/JavaBridge;)Lcom/tencent/smtt/sdk/WebView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mX5WebView:Lcom/tencent/smtt/sdk/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/jsbridge/JavaBridge;)Landroid/webkit/WebView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/jsbridge/JavaBridge;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callback2Js(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;ILjava/lang/String;)V

    return-void
.end method

.method private callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V
    .locals 0

    .line 197
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_sendData(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callback2Js(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;ILjava/lang/String;)V
    .locals 1

    .line 279
    :try_start_0
    new-instance v0, Lcom/phicomm/speaker/jsbridge/JavaCallback;

    invoke-direct {v0, p2, p3}, Lcom/phicomm/speaker/jsbridge/JavaCallback;-><init>(ILjava/lang/String;)V

    .line 280
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callbackJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "responseId"

    .line 133
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "responseData"

    .line 134
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_dispatchMessage(Ljava/util/Map;)V

    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 96
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private doubleEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 205
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "\\\""

    .line 206
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "\\\'"

    .line 207
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "\\n"

    .line 208
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\\r"

    .line 209
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u000c"

    const-string v1, "\\f"

    .line 210
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public _handleMessageFromJs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_handleMessageFromJs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 218
    iget-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_responseCallbacks:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/jsbridge/JavaBridge$c;

    .line 219
    invoke-interface {p1, p3}, Lcom/phicomm/speaker/jsbridge/JavaBridge$c;->a(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_responseCallbacks:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    if-eqz p4, :cond_1

    .line 224
    new-instance p3, Lcom/phicomm/speaker/jsbridge/JavaBridge$a;

    invoke-direct {p3, p0, p4, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge$a;-><init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$1;)V

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    if-eqz p5, :cond_2

    .line 228
    iget-object p2, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_messageHandlers:Ljava/util/Map;

    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/jsbridge/JavaBridge$b;

    if-nez p2, :cond_2

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_handleMessageFromJs error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    const/16 p1, 0x65

    const-string p2, "\u65b9\u6cd5\u627e\u4e0d\u5230"

    .line 231
    invoke-direct {p0, p3, p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callback2Js(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;ILjava/lang/String;)V

    return-void

    .line 239
    :cond_2
    :try_start_0
    iget-object p4, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mContext:Landroid/app/Activity;

    new-instance p5, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;

    invoke-direct {p5, p0, p1, p3, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;-><init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V

    invoke-virtual {p4, p5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 255
    instance-of p2, p1, Lcom/alibaba/fastjson/JSONException;

    if-eqz p2, :cond_3

    const/16 p2, 0x66

    const-string p4, "\u53c2\u6570\u9519\u8bef"

    .line 256
    invoke-direct {p0, p3, p2, p4}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callback2Js(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 p2, 0x67

    const-string p4, "\u65b9\u6cd5\u8c03\u7528\u5931\u8d25"

    .line 258
    invoke-direct {p0, p3, p2, p4}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callback2Js(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;ILjava/lang/String;)V

    .line 260
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "_handleMessageFromJs error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public callHandler(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V

    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V

    return-void
.end method

.method public callbackSuccess(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;Lcom/phicomm/speaker/jsbridge/JavaCallback;)V
    .locals 0

    if-nez p2, :cond_0

    .line 267
    new-instance p2, Lcom/phicomm/speaker/jsbridge/JavaCallback;

    invoke-direct {p2}, Lcom/phicomm/speaker/jsbridge/JavaCallback;-><init>()V

    .line 270
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loadJsBridge(Landroid/webkit/WebView;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 82
    new-instance v1, Lcom/phicomm/speaker/jsbridge/JavaBridge$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/jsbridge/JavaBridge$2;-><init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadJsBridge(Lcom/tencent/smtt/sdk/WebView;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 66
    new-instance v1, Lcom/phicomm/speaker/jsbridge/JavaBridge$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/jsbridge/JavaBridge$1;-><init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->send(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V

    return-void
.end method

.method public send(Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->_sendData(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V

    return-void
.end method
