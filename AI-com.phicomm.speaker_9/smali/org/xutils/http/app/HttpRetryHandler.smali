.class public Lorg/xutils/http/app/HttpRetryHandler;
.super Ljava/lang/Object;
.source "HttpRetryHandler.java"


# static fields
.field protected static blackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected maxRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lorg/xutils/http/app/HttpRetryHandler;->maxRetryCount:I

    return-void
.end method


# virtual methods
.method public canRetry(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;I)Z
    .locals 2

    .line 54
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    iget v0, p0, Lorg/xutils/http/app/HttpRetryHandler;->maxRetryCount:I

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    const-string p1, "The Max Retry times has been reached!"

    .line 58
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    return v1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object p3

    invoke-virtual {p3}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object p3

    invoke-static {p3}, Lorg/xutils/http/HttpMethod;->permitsRetry(Lorg/xutils/http/HttpMethod;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    const-string p1, "The Request Method can not be retried."

    .line 64
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    return v1

    .line 68
    :cond_1
    sget-object p3, Lorg/xutils/http/app/HttpRetryHandler;->blackList:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    const-string p1, "The Exception can not be retried."

    .line 70
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/xutils/http/app/HttpRetryHandler;->maxRetryCount:I

    return-void
.end method
