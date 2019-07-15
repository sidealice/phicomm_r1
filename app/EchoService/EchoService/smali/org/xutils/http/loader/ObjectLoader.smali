.class Lorg/xutils/http/loader/ObjectLoader;
.super Lorg/xutils/http/loader/Loader;
.source "ObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private final objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final objectType:Ljava/lang/reflect/Type;

.field private final parser:Lorg/xutils/http/app/ResponseParser;

.field private resultStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "objectType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    .line 27
    const-string v4, "UTF-8"

    iput-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->charset:Ljava/lang/String;

    .line 28
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    .line 39
    instance-of v4, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    .line 40
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "objectType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iput-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    .line 49
    :goto_0
    const-class v4, Ljava/util/List;

    iget-object v5, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    iget-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    const-class v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 51
    .local v2, "itemType":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 52
    .local v1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 53
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v1, Ljava/lang/Class;

    .line 61
    .restart local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v4, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/xutils/http/annotation/HttpResponse;

    .line 62
    .local v3, "response":Lorg/xutils/http/annotation/HttpResponse;
    if-eqz v3, :cond_4

    .line 64
    :try_start_0
    invoke-interface {v3}, Lorg/xutils/http/annotation/HttpResponse;->parser()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/http/app/ResponseParser;

    iput-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "itemType":Ljava/lang/reflect/Type;
    :goto_2
    return-void

    .line 41
    .end local v3    # "response":Lorg/xutils/http/annotation/HttpResponse;
    .restart local p1    # "objectType":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v4, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_1

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support callback type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_1
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "objectType":Ljava/lang/reflect/Type;
    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    goto :goto_0

    .line 54
    .restart local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "itemType":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v4, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_3

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support callback type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v1, v2

    .line 58
    check-cast v1, Ljava/lang/Class;

    goto :goto_1

    .line 65
    .restart local v3    # "response":Lorg/xutils/http/annotation/HttpResponse;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "create parser error"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 69
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found @HttpResponse from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "itemType":Ljava/lang/reflect/Type;
    .end local v3    # "response":Lorg/xutils/http/annotation/HttpResponse;
    :cond_5
    iget-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    const-class v5, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/xutils/http/annotation/HttpResponse;

    .line 73
    .restart local v3    # "response":Lorg/xutils/http/annotation/HttpResponse;
    if-eqz v3, :cond_6

    .line 75
    :try_start_1
    invoke-interface {v3}, Lorg/xutils/http/annotation/HttpResponse;->parser()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/http/app/ResponseParser;

    iput-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 76
    :catch_1
    move-exception v0

    .line 77
    .restart local v0    # "ex":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "create parser error"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 80
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found @HttpResponse from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    instance-of v1, v1, Lorg/xutils/http/app/InputStreamResponseParser;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    check-cast v1, Lorg/xutils/http/app/InputStreamResponseParser;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, p1}, Lorg/xutils/http/app/InputStreamResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 106
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->charset:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    iget-object v4, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 2
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/ResponseParser;->checkResponse(Lorg/xutils/http/request/UriRequest;)V

    .line 119
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/http/loader/ObjectLoader;->load(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    invoke-interface {v1, p1}, Lorg/xutils/http/app/ResponseParser;->checkResponse(Lorg/xutils/http/request/UriRequest;)V

    throw v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 4
    .param p1, "cacheEntity"    # Lorg/xutils/cache/DiskCacheEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-interface {v1, v2, v3, v0}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "use constructor create ObjectLoader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/ObjectLoader;->saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 2
    .param p1, "params"    # Lorg/xutils/http/RequestParams;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "charset":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->charset:Ljava/lang/String;

    .line 98
    .end local v0    # "charset":Ljava/lang/String;
    :cond_0
    return-void
.end method
