.class Lorg/xutils/http/loader/StringLoader;
.super Lorg/xutils/http/loader/Loader;
.source "StringLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private resultStr:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    .line 18
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->charset:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->resultStr:Ljava/lang/String;

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
    .line 16
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/StringLoader;->load(Ljava/io/InputStream;)Ljava/lang/String;

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
    .line 16
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/StringLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xutils/http/loader/StringLoader;->charset:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->resultStr:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lorg/xutils/http/loader/StringLoader;->resultStr:Ljava/lang/String;

    return-object v0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 45
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/http/loader/StringLoader;->load(Ljava/io/InputStream;)Ljava/lang/String;

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
    .line 16
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/StringLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "cacheEntity"    # Lorg/xutils/cache/DiskCacheEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lorg/xutils/http/loader/StringLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/StringLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xutils/http/loader/StringLoader;->resultStr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/StringLoader;->saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 2
    .param p1, "params"    # Lorg/xutils/http/RequestParams;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "charset":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->charset:Ljava/lang/String;

    .line 34
    .end local v0    # "charset":Ljava/lang/String;
    :cond_0
    return-void
.end method
