.class public Lorg/xutils/http/request/AssetsRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "AssetsRequest.java"


# instance fields
.field private contentLength:J

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "params"    # Lorg/xutils/http/RequestParams;
    .param p2, "loadType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xutils/http/request/AssetsRequest;->contentLength:J

    .line 29
    return-void
.end method


# virtual methods
.method public clearCacheHeader()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    .line 89
    return-void
.end method

.method protected getAssetsLastModified()J
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->queryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/xutils/http/request/AssetsRequest;->getInputStream()Ljava/io/InputStream;

    .line 95
    iget-wide v2, p0, Lorg/xutils/http/request/AssetsRequest;->contentLength:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-wide v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 114
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 139
    return-wide p2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/xutils/http/request/AssetsRequest;->callingClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/request/AssetsRequest;->queryUrl:Ljava/lang/String;

    const-string v3, "assets://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "assetsPath":Ljava/lang/String;
    iget-object v1, p0, Lorg/xutils/http/request/AssetsRequest;->callingClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    .line 79
    iget-object v1, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/xutils/http/request/AssetsRequest;->contentLength:J

    .line 82
    .end local v0    # "assetsPath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/xutils/http/request/AssetsRequest;->getAssetsLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/xutils/http/request/AssetsRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x194

    goto :goto_0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public loadResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p0}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadResultFromCache()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v3, p0, Lorg/xutils/http/request/AssetsRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v3

    iget-object v4, p0, Lorg/xutils/http/request/AssetsRequest;->params:Lorg/xutils/http/RequestParams;

    .line 54
    invoke-virtual {v4}, Lorg/xutils/http/RequestParams;->getCacheSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/xutils/cache/LruDiskCache;->setMaxSize(J)Lorg/xutils/cache/LruDiskCache;

    move-result-object v3

    .line 55
    invoke-virtual {p0}, Lorg/xutils/http/request/AssetsRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    .line 57
    .local v0, "cacheEntity":Lorg/xutils/cache/DiskCacheEntity;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getLastModify()Ljava/util/Date;

    move-result-object v1

    .line 59
    .local v1, "lastModifiedDate":Ljava/util/Date;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/xutils/http/request/AssetsRequest;->getAssetsLastModified()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 64
    .end local v1    # "lastModifiedDate":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v2

    .line 62
    .restart local v1    # "lastModifiedDate":Ljava/util/Date;
    :cond_1
    iget-object v2, p0, Lorg/xutils/http/request/AssetsRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v2, v0}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method
