.class public Lorg/xutils/http/request/LocalFileRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "LocalFileRequest.java"


# instance fields
.field private inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "params"    # Lorg/xutils/http/RequestParams;
    .param p2, "loadType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    .line 25
    return-void
.end method

.method private getFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lorg/xutils/http/request/LocalFileRequest;->queryUrl:Ljava/lang/String;

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/xutils/http/request/LocalFileRequest;->queryUrl:Ljava/lang/String;

    const-string v2, "file:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->queryUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clearCacheHeader()V
    .locals 0

    .prologue
    .line 58
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
    .line 86
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->inputStream:Ljava/io/InputStream;

    .line 88
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 107
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 132
    return-wide p2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->inputStream:Ljava/io/InputStream;

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

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
    .line 97
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

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
    .line 122
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
    .line 127
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
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 34
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
    .line 44
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->loader:Lorg/xutils/http/loader/Loader;

    instance-of v0, v0, Lorg/xutils/http/loader/FileLoader;

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p0}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public loadResultFromCache()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public save2Cache()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public sendRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method
