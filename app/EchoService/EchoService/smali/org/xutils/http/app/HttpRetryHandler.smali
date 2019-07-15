.class public Lorg/xutils/http/app/HttpRetryHandler;
.super Ljava/lang/Object;
.source "HttpRetryHandler.java"


# static fields
.field protected static blackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected maxRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    .line 31
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Lorg/xutils/ex/HttpException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/net/MalformedURLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/net/URISyntaxException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/net/NoRouteToHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/net/PortUnreachableException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/net/ProtocolException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Lorg/json/JSONException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    const-class v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lorg/xutils/http/app/HttpRetryHandler;->maxRetryCount:I

    .line 46
    return-void
.end method


# virtual methods
.method public canRetry(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;I)Z
    .locals 3
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    iget v1, p0, Lorg/xutils/http/app/HttpRetryHandler;->maxRetryCount:I

    if-le p3, v1, :cond_0

    .line 57
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 58
    const-string v1, "The Max Retry times has been reached!"

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 74
    :goto_0
    return v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsRetry(Lorg/xutils/http/HttpMethod;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 64
    const-string v1, "The Request Method can not be retried."

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    sget-object v1, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 70
    const-string v1, "The Exception can not be retried."

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMaxRetryCount(I)V
    .locals 0
    .param p1, "maxRetryCount"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/xutils/http/app/HttpRetryHandler;->maxRetryCount:I

    .line 50
    return-void
.end method
