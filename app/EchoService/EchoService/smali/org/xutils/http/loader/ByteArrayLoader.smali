.class Lorg/xutils/http/loader/ByteArrayLoader;
.super Lorg/xutils/http/loader/Loader;
.source "ByteArrayLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/ByteArrayLoader;->load(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/ByteArrayLoader;->load(Lorg/xutils/http/request/UriRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)[B
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)[B
    .locals 1
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 28
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/http/loader/ByteArrayLoader;->load(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/ByteArrayLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)[B

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)[B
    .locals 1
    .param p1, "cacheEntity"    # Lorg/xutils/cache/DiskCacheEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lorg/xutils/http/loader/ByteArrayLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/ByteArrayLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    .line 38
    return-void
.end method
