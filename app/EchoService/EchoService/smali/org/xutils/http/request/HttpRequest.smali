.class public Lorg/xutils/http/request/HttpRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "HttpRequest.java"


# static fields
.field private static final COOKIE_MANAGER:Ljava/net/CookieManager;


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private connection:Ljava/net/HttpURLConnection;

.field private inputStream:Ljava/io/InputStream;

.field private isLoading:Z

.field private responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/net/CookieManager;

    sget-object v1, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    return-void
.end method

.method constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "params"    # Lorg/xutils/http/RequestParams;
    .param p2, "loadType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    .line 50
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 52
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 53
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 54
    iput v1, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 62
    return-void
.end method

.method private static toGMTString(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 458
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 460
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 461
    .local v1, "gmtZone":Ljava/util/TimeZone;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 462
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 463
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 464
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # Lorg/xutils/http/RequestParams;

    .prologue
    .line 67
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "uri":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "queryBuilder":Ljava/lang/StringBuilder;
    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 70
    const-string v6, "?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, "queryParams":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    if-eqz v3, :cond_3

    .line 76
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 77
    .local v0, "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v1, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 78
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStr()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v5, :cond_1

    .line 81
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 83
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "queryParams":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 72
    const-string v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    .restart local v3    # "queryParams":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x26

    if-ne v6, v7, :cond_4

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 93
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_5

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 96
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public clearCacheHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1, v2}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
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
    .line 327
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 335
    :cond_1
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 6

    .prologue
    .line 339
    const-wide/16 v2, 0x0

    .line 340
    .local v2, "result":J
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 342
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    .line 346
    :goto_0
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 348
    :try_start_1
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    int-to-long v2, v1

    .line 358
    :cond_0
    :goto_1
    return-wide v2

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 354
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    int-to-long v2, v1

    goto :goto_1

    .line 355
    :catch_1
    move-exception v1

    goto :goto_1

    .line 349
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public getETag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpiration()J
    .locals 14

    .prologue
    .line 385
    iget-object v10, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v10, :cond_1

    const-wide/16 v4, -0x1

    .line 425
    :cond_0
    :goto_0
    return-wide v4

    .line 387
    :cond_1
    const-wide/16 v4, -0x1

    .line 390
    .local v4, "expiration":J
    iget-object v10, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "Cache-Control"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "cacheControl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 392
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v10, ","

    invoke-direct {v3, v0, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .local v3, "tok":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 394
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, "token":Ljava/lang/String;
    const-string v10, "max-age"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 396
    const/16 v10, 0x3d

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 397
    .local v1, "eqIdx":I
    if-lez v1, :cond_3

    .line 399
    add-int/lit8 v10, v1, 0x1

    :try_start_0
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 401
    .local v6, "seconds":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_3

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v6

    add-long v4, v10, v12

    .line 414
    .end local v1    # "eqIdx":I
    .end local v3    # "tok":Ljava/util/StringTokenizer;
    .end local v6    # "seconds":J
    .end local v8    # "token":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_4

    .line 415
    iget-object v10, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v4

    .line 418
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_5

    iget-object v10, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v10}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v12}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v12

    add-long v4, v10, v12

    .line 422
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_0

    .line 423
    const-wide v4, 0x7fffffffffffffffL

    goto/16 :goto_0

    .line 404
    .restart local v1    # "eqIdx":I
    .restart local v3    # "tok":Ljava/util/StringTokenizer;
    .restart local v8    # "token":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 405
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 453
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 454
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 320
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    return-object v0

    .line 320
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastModified()J
    .locals 4

    .prologue
    .line 430
    const-string v0, "Last-Modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/xutils/http/request/HttpRequest;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    .line 102
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 104
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 364
    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 369
    :goto_0
    return v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    const/16 v0, 0xc8

    goto :goto_0

    .line 369
    :cond_1
    const/16 v0, 0x194

    goto :goto_0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 447
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 448
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

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
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 277
    invoke-super {p0}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

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
    .line 288
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 289
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v3

    iget-object v4, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    .line 290
    invoke-virtual {v4}, Lorg/xutils/http/RequestParams;->getCacheSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/xutils/cache/LruDiskCache;->setMaxSize(J)Lorg/xutils/cache/LruDiskCache;

    move-result-object v3

    .line 291
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    .line 293
    .local v0, "cacheEntity":Lorg/xutils/cache/DiskCacheEntity;
    if-eqz v0, :cond_2

    .line 294
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getLastModify()Ljava/util/Date;

    move-result-object v2

    .line 296
    .local v2, "lastModified":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 297
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v4, "If-Modified-Since"

    invoke-static {v2}, Lorg/xutils/http/request/HttpRequest;->toGMTString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "eTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 301
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v4, "If-None-Match"

    invoke-virtual {v3, v4, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v1    # "eTag":Ljava/lang/String;
    .end local v2    # "lastModified":Ljava/util/Date;
    :cond_1
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v3, v0}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v3

    .line 306
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 25
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 120
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 122
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local v19, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object v16

    .line 125
    .local v16, "proxy":Ljava/net/Proxy;
    if-eqz v16, :cond_4

    .line 126
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v21

    check-cast v21, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 132
    :goto_0
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Connection"

    const-string v23, "close"

    invoke-virtual/range {v21 .. v23}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/xutils/http/RequestParams;->getReadTimeout()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/xutils/http/RequestParams;->getConnectTimeout()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;

    move-result-object v21

    if-nez v21, :cond_5

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    .line 141
    .local v18, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v18, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    check-cast v21, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 147
    .end local v18    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 149
    :try_start_0
    sget-object v21, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    .line 150
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v22

    new-instance v23, Ljava/util/HashMap;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual/range {v21 .. v23}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    .line 151
    .local v17, "singleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v21, "Cookie"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 152
    .local v6, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Cookie"

    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "singleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v9

    .line 162
    .local v9, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/BaseParams$Header;>;"
    if-eqz v9, :cond_7

    .line 163
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xutils/http/BaseParams$Header;

    .line 164
    .local v8, "header":Lorg/xutils/http/BaseParams$Header;
    iget-object v15, v8, Lorg/xutils/http/BaseParams$Header;->key:Ljava/lang/String;

    .line 165
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/xutils/http/BaseParams$Header;->getValueStr()Ljava/lang/String;

    move-result-object v20

    .line 166
    .local v20, "value":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 167
    iget-boolean v0, v8, Lorg/xutils/http/BaseParams$Header;->setHeader:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 128
    .end local v8    # "header":Lorg/xutils/http/BaseParams$Header;
    .end local v9    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/BaseParams$Header;>;"
    .end local v15    # "name":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    check-cast v21, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    .line 138
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 155
    :catch_0
    move-exception v7

    .line 156
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 170
    .end local v7    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "header":Lorg/xutils/http/BaseParams$Header;
    .restart local v9    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/BaseParams$Header;>;"
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 178
    .end local v8    # "header":Lorg/xutils/http/BaseParams$Header;
    .end local v15    # "name":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestInterceptListener;->beforeRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 183
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v13

    .line 185
    .local v13, "method":Lorg/xutils/http/HttpMethod;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_4
    invoke-static {v13}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->getRequestBody()Lorg/xutils/http/body/RequestBody;

    move-result-object v2

    .line 197
    .local v2, "body":Lorg/xutils/http/body/RequestBody;
    if-eqz v2, :cond_b

    .line 198
    instance-of v0, v2, Lorg/xutils/http/body/ProgressBody;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v21, v2

    .line 199
    check-cast v21, Lorg/xutils/http/body/ProgressBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lorg/xutils/http/body/ProgressBody;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 201
    :cond_9
    invoke-interface {v2}, Lorg/xutils/http/body/RequestBody;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "contentType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Content-Type"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_a
    invoke-interface {v2}, Lorg/xutils/http/body/RequestBody;->getContentLength()J

    move-result-wide v4

    .line 206
    .local v4, "contentLength":J
    const-wide/16 v22, 0x0

    cmp-long v21, v4, v22

    if-gez v21, :cond_f

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const/high16 v22, 0x40000

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 217
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lorg/xutils/http/body/RequestBody;->writeTo(Ljava/io/OutputStream;)V

    .line 224
    .end local v2    # "body":Lorg/xutils/http/body/RequestBody;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "contentLength":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 226
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 227
    .local v10, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v10, :cond_c

    .line 228
    sget-object v21, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 236
    .end local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestInterceptListener;->afterRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 241
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    move/from16 v21, v0

    const/16 v22, 0xcc

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    move/from16 v21, v0

    const/16 v22, 0xcd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 242
    :cond_e
    new-instance v21, Lorg/xutils/ex/HttpException;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    throw v21

    .line 186
    :catch_1
    move-exception v7

    .line 188
    .local v7, "ex":Ljava/net/ProtocolException;
    :try_start_3
    const-class v21, Ljava/net/HttpURLConnection;

    const-string v22, "method"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 189
    .local v14, "methodField":Ljava/lang/reflect/Field;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 191
    .end local v14    # "methodField":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v12

    .line 192
    .local v12, "ignored":Ljava/lang/Throwable;
    throw v7

    .line 209
    .end local v7    # "ex":Ljava/net/ProtocolException;
    .end local v12    # "ignored":Ljava/lang/Throwable;
    .restart local v2    # "body":Lorg/xutils/http/body/RequestBody;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v4    # "contentLength":J
    :cond_f
    const-wide/32 v22, 0x7fffffff

    cmp-long v21, v4, v22

    if-gez v21, :cond_10

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    long-to-int v0, v4

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto/16 :goto_5

    .line 211
    :cond_10
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_11

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto/16 :goto_5

    .line 214
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const/high16 v22, 0x40000

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto/16 :goto_5

    .line 230
    .end local v2    # "body":Lorg/xutils/http/body/RequestBody;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "contentLength":J
    :catch_3
    move-exception v7

    .line 231
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 243
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    move/from16 v21, v0

    const/16 v22, 0x12c

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_13

    .line 244
    new-instance v11, Lorg/xutils/ex/HttpException;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    .line 246
    .local v11, "httpException":Lorg/xutils/ex/HttpException;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/xutils/ex/HttpException;->setResult(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 249
    :goto_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lorg/xutils/ex/HttpException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 250
    throw v11

    .line 253
    .end local v11    # "httpException":Lorg/xutils/ex/HttpException;
    :cond_13
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 254
    return-void

    .line 247
    .restart local v11    # "httpException":Lorg/xutils/ex/HttpException;
    :catch_4
    move-exception v21

    goto :goto_7
.end method
