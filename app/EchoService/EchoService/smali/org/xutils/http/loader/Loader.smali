.class public abstract Lorg/xutils/http/loader/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected params:Lorg/xutils/http/RequestParams;

.field protected progressHandler:Lorg/xutils/http/ProgressHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract load(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/http/request/UriRequest;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/cache/DiskCacheEntity;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract newInstance()Lorg/xutils/http/loader/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract save2Cache(Lorg/xutils/http/request/UriRequest;)V
.end method

.method protected saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .param p2, "resultStr"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<TT;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 35
    .local v0, "entity":Lorg/xutils/cache/DiskCacheEntity;
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 37
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setEtag(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getExpiration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setExpires(J)V

    .line 39
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setLastModify(Ljava/util/Date;)V

    .line 40
    invoke-virtual {v0, p2}, Lorg/xutils/cache/DiskCacheEntity;->setTextContent(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruDiskCache;->put(Lorg/xutils/cache/DiskCacheEntity;)V

    .line 43
    .end local v0    # "entity":Lorg/xutils/cache/DiskCacheEntity;
    :cond_0
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 0
    .param p1, "params"    # Lorg/xutils/http/RequestParams;

    .prologue
    .line 25
    .local p0, "this":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<TT;>;"
    iput-object p1, p0, Lorg/xutils/http/loader/Loader;->params:Lorg/xutils/http/RequestParams;

    .line 26
    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0
    .param p1, "callbackHandler"    # Lorg/xutils/http/ProgressHandler;

    .prologue
    .line 29
    .local p0, "this":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<TT;>;"
    iput-object p1, p0, Lorg/xutils/http/loader/Loader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    .line 30
    return-void
.end method
