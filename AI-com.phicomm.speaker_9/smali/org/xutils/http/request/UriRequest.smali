.class public abstract Lorg/xutils/http/request/UriRequest;
.super Ljava/lang/Object;
.source "UriRequest.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected callingClassLoader:Ljava/lang/ClassLoader;

.field protected final loader:Lorg/xutils/http/loader/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/http/loader/Loader<",
            "*>;"
        }
    .end annotation
.end field

.field protected final params:Lorg/xutils/http/RequestParams;

.field protected progressHandler:Lorg/xutils/http/ProgressHandler;

.field protected final queryUrl:Ljava/lang/String;

.field protected requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;


# direct methods
.method constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->callingClassLoader:Ljava/lang/ClassLoader;

    .line 29
    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    .line 30
    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    .line 33
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    .line 34
    invoke-virtual {p0, p1}, Lorg/xutils/http/request/UriRequest;->buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    .line 35
    invoke-static {p2, p1}, Lorg/xutils/http/loader/LoaderFactory;->getLoader(Ljava/lang/reflect/Type;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/loader/Loader;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    return-void
.end method


# virtual methods
.method protected buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract clearCacheHeader()V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getETag()Ljava/lang/String;
.end method

.method public abstract getExpiration()J
.end method

.method public abstract getHeaderFieldDate(Ljava/lang/String;J)J
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLastModified()J
.end method

.method public getParams()Lorg/xutils/http/RequestParams;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getResponseCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getResponseMessage()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isLoading()Z
.end method

.method public loadResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p0}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract loadResultFromCache()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public save2Cache()V
    .locals 2

    .line 96
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/request/UriRequest$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/request/UriRequest$1;-><init>(Lorg/xutils/http/request/UriRequest;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract sendRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public setCallingClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->callingClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    .line 45
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    return-void
.end method

.method public setRequestInterceptListener(Lorg/xutils/http/app/RequestInterceptListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
