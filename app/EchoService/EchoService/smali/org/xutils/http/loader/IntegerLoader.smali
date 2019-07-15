.class Lorg/xutils/http/loader/IntegerLoader;
.super Lorg/xutils/http/loader/Loader;
.source "IntegerLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Ljava/lang/Integer;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Integer;
    .locals 1
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 26
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/IntegerLoader;->load(Ljava/io/InputStream;)Ljava/lang/Integer;

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
    .line 12
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/IntegerLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Integer;
    .locals 1
    .param p1, "cacheEntity"    # Lorg/xutils/cache/DiskCacheEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

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
    .line 12
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/IntegerLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lorg/xutils/http/loader/IntegerLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/IntegerLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    .line 37
    return-void
.end method
