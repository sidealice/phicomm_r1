.class public Lorg/xutils/http/RequestParams;
.super Lorg/xutils/http/BaseParams;
.source "RequestParams.java"


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private buildCacheKey:Ljava/lang/String;

.field private buildUri:Ljava/lang/String;

.field private builder:Lorg/xutils/http/app/ParamsBuilder;

.field private cacheDirName:Ljava/lang/String;

.field private final cacheKeys:[Ljava/lang/String;

.field private cacheMaxAge:J

.field private cacheSize:J

.field private cancelFast:Z

.field private connectTimeout:I

.field private executor:Ljava/util/concurrent/Executor;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpRequest:Lorg/xutils/http/annotation/HttpRequest;

.field private httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

.field private invokedGetHttpRequest:Z

.field private loadingUpdateMaxTimeSpan:I

.field private maxRetryCount:I

.field private priority:Lorg/xutils/common/task/Priority;

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private redirectHandler:Lorg/xutils/http/app/RedirectHandler;

.field private requestTracker:Lorg/xutils/http/app/RequestTracker;

.field private saveFilePath:Ljava/lang/String;

.field private final signs:[Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private uri:Ljava/lang/String;

.field private useCookie:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "builder"    # Lorg/xutils/http/app/ParamsBuilder;
    .param p3, "signs"    # [Ljava/lang/String;
    .param p4, "cacheKeys"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0x3a98

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;-><init>()V

    .line 39
    iput-boolean v2, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    .line 44
    sget-object v0, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    .line 45
    iput v3, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    .line 46
    iput v3, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    .line 47
    iput-boolean v2, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    .line 48
    iput-boolean v1, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    .line 51
    iput-boolean v1, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    .line 52
    const/16 v0, 0x12c

    iput v0, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    .line 389
    iput-boolean v1, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 79
    new-instance p2, Lorg/xutils/http/app/DefaultParamsBuilder;

    .end local p2    # "builder":Lorg/xutils/http/app/ParamsBuilder;
    invoke-direct {p2}, Lorg/xutils/http/app/DefaultParamsBuilder;-><init>()V

    .line 81
    .restart local p2    # "builder":Lorg/xutils/http/app/ParamsBuilder;
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/xutils/http/RequestParams;->signs:[Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/xutils/http/RequestParams;->cacheKeys:[Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    .line 85
    return-void
.end method

.method private getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    if-nez v1, :cond_0

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 395
    .local v0, "thisCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/xutils/http/RequestParams;

    if-eq v0, v1, :cond_0

    .line 396
    const-class v1, Lorg/xutils/http/annotation/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/annotation/HttpRequest;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    .line 400
    .end local v0    # "thisCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    return-object v1
.end method

.method private initEntityParams()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/RequestParams$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/RequestParams$1;-><init>(Lorg/xutils/http/RequestParams;)V

    invoke-static {p0, v0, v1}, Lorg/xutils/http/RequestParamsHelper;->parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V

    .line 387
    return-void
.end method


# virtual methods
.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic clearParams()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->clearParams()V

    return-void
.end method

.method public bridge synthetic getBodyContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getBodyContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBodyParams()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getBodyParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->cacheDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    .line 133
    .local v0, "httpRequest":Lorg/xutils/http/annotation/HttpRequest;
    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->cacheKeys()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    .line 139
    .end local v0    # "httpRequest":Lorg/xutils/http/annotation/HttpRequest;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    return-object v1

    .line 136
    .restart local v0    # "httpRequest":Lorg/xutils/http/annotation/HttpRequest;
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v2, p0, Lorg/xutils/http/RequestParams;->cacheKeys:[Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCacheMaxAge()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->cacheMaxAge:J

    return-wide v0
.end method

.method public getCacheSize()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->cacheSize:J

    return-wide v0
.end method

.method public bridge synthetic getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    return v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public bridge synthetic getFileParams()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getFileParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

    return-object v0
.end method

.method public getLoadingUpdateMaxTimeSpan()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    return v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    return v0
.end method

.method public bridge synthetic getMethod()Lorg/xutils/http/HttpMethod;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParams(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->getParams(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public bridge synthetic getQueryStringParams()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    return v0
.end method

.method public getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    return-object v0
.end method

.method public bridge synthetic getRequestBody()Lorg/xutils/http/body/RequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getRequestBody()Lorg/xutils/http/body/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTracker()Lorg/xutils/http/app/RequestTracker;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->requestTracker:Lorg/xutils/http/app/RequestTracker;

    return-object v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->saveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public bridge synthetic getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStringParams()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getStringParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    goto :goto_0
.end method

.method init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v1

    if-nez v1, :cond_2

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "uri is empty && @HttpRequest == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_2
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->initEntityParams()V

    .line 99
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    .line 101
    .local v0, "httpRequest":Lorg/xutils/http/annotation/HttpRequest;
    if-eqz v0, :cond_3

    .line 102
    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->builder()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/app/ParamsBuilder;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    .line 103
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildUri(Lorg/xutils/http/RequestParams;Lorg/xutils/http/annotation/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 105
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->signs()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 111
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v2, p0, Lorg/xutils/http/RequestParams;->signs:[Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method public bridge synthetic isAsJsonContent()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->isAsJsonContent()Z

    move-result v0

    return v0
.end method

.method public isAutoRename()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    return v0
.end method

.method public isAutoResume()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    return v0
.end method

.method public isCancelFast()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    return v0
.end method

.method public bridge synthetic isMultipart()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->isMultipart()Z

    move-result v0

    return v0
.end method

.method public isUseCookie()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    return v0
.end method

.method public bridge synthetic removeParameter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->removeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAsJsonContent(Z)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setAsJsonContent(Z)V

    return-void
.end method

.method public setAutoRename(Z)V
    .locals 0
    .param p1, "autoRename"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    .line 294
    return-void
.end method

.method public setAutoResume(Z)V
    .locals 0
    .param p1, "autoResume"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    .line 278
    return-void
.end method

.method public bridge synthetic setBodyContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setBodyContent(Ljava/lang/String;)V

    return-void
.end method

.method public setCacheDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->cacheDirName:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setCacheMaxAge(J)V
    .locals 1
    .param p1, "cacheMaxAge"    # J

    .prologue
    .line 243
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->cacheMaxAge:J

    .line 244
    return-void
.end method

.method public setCacheSize(J)V
    .locals 1
    .param p1, "cacheSize"    # J

    .prologue
    .line 225
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->cacheSize:J

    .line 226
    return-void
.end method

.method public setCancelFast(Z)V
    .locals 0
    .param p1, "cancelFast"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    .line 336
    return-void
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setCharset(Ljava/lang/String;)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 197
    if-lez p1, :cond_0

    .line 198
    iput p1, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    .line 200
    :cond_0
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->executor:Ljava/util/concurrent/Executor;

    .line 262
    return-void
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 156
    return-void
.end method

.method public setHttpRetryHandler(Lorg/xutils/http/app/HttpRetryHandler;)V
    .locals 0
    .param p1, "httpRetryHandler"    # Lorg/xutils/http/app/HttpRetryHandler;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

    .line 357
    return-void
.end method

.method public setLoadingUpdateMaxTimeSpan(I)V
    .locals 0
    .param p1, "loadingUpdateMaxTimeSpan"    # I

    .prologue
    .line 348
    iput p1, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    .line 349
    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0
    .param p1, "maxRetryCount"    # I

    .prologue
    .line 317
    iput p1, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    .line 318
    return-void
.end method

.method public bridge synthetic setMethod(Lorg/xutils/http/HttpMethod;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    return-void
.end method

.method public bridge synthetic setMultipart(Z)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setMultipart(Z)V

    return-void
.end method

.method public setPriority(Lorg/xutils/common/task/Priority;)V
    .locals 0
    .param p1, "priority"    # Lorg/xutils/common/task/Priority;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    .line 190
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->proxy:Ljava/net/Proxy;

    .line 182
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 207
    if-lez p1, :cond_0

    .line 208
    iput p1, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    .line 210
    :cond_0
    return-void
.end method

.method public setRedirectHandler(Lorg/xutils/http/app/RedirectHandler;)V
    .locals 0
    .param p1, "redirectHandler"    # Lorg/xutils/http/app/RedirectHandler;

    .prologue
    .line 369
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    .line 370
    return-void
.end method

.method public bridge synthetic setRequestBody(Lorg/xutils/http/body/RequestBody;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setRequestBody(Lorg/xutils/http/body/RequestBody;)V

    return-void
.end method

.method public setRequestTracker(Lorg/xutils/http/app/RequestTracker;)V
    .locals 0
    .param p1, "requestTracker"    # Lorg/xutils/http/app/RequestTracker;

    .prologue
    .line 377
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->requestTracker:Lorg/xutils/http/app/RequestTracker;

    .line 378
    return-void
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "saveFilePath"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->saveFilePath:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 144
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUseCookie(Z)V
    .locals 0
    .param p1, "useCookie"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    .line 174
    return-void
.end method

.method public bridge synthetic toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 411
    :try_start_0
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->init()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    :goto_1
    return-object v2

    .line 412
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 417
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "?"

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "&"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "?"

    goto :goto_2
.end method
