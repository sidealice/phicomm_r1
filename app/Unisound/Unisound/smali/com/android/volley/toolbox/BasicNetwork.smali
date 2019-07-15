.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    .line 60
    const/16 v0, 0xbb8

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    .line 62
    const/16 v0, 0x1000

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 2
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/HttpStack;

    .prologue
    .line 74
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/HttpStack;
    .param p2, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 83
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 84
    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .locals 6
    .param p2, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 228
    const-string v1, "If-None-Match"

    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_2
    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->lastModified:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 232
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->lastModified:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 233
    .local v0, "refTime":Ljava/util/Date;
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 7
    .param p0, "logPrefix"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v2

    .line 209
    .local v2, "retryPolicy":Lcom/android/volley/RetryPolicy;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 212
    .local v1, "oldTimeout":I
    :try_start_0
    invoke-interface {v2, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const-string v3, "%s-retry [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 219
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lcom/android/volley/VolleyError;
    const-string v3, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 216
    throw v0
.end method

.method protected static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .param p0, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 277
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 278
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-object v1
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 244
    new-instance v1, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v5, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v5, v6}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 246
    .local v1, "bytes":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    const/4 v0, 0x0

    .line 248
    .local v0, "buffer":[B
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 249
    .local v4, "in":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 250
    new-instance v5, Lcom/android/volley/ServerError;

    invoke-direct {v5}, Lcom/android/volley/ServerError;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v4    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    .line 261
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    :goto_0
    iget-object v6, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 268
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v5

    .line 252
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 254
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 255
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 261
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 267
    :goto_2
    iget-object v6, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 268
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v5

    .line 262
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 262
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 265
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .param p1, "requestLifetime"    # J
    .param p4, "responseContents"    # [B
    .param p5, "statusLine"    # Lorg/apache/http/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 194
    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_1
    return-void

    .line 194
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "start"    # J

    .prologue
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 239
    .local v0, "now":J
    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long v6, v0, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 90
    .local v24, "requestStart":J
    :goto_0
    const/16 v22, 0x0

    .line 91
    .local v22, "httpResponse":Lorg/apache/http/HttpResponse;
    const/16 v26, 0x0

    .line 92
    .local v26, "responseContents":[B
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 95
    .local v6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v21, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 98
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 99
    .local v12, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 101
    .local v14, "statusCode":I
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    .line 103
    const/16 v3, 0x130

    if-ne v14, v3, :cond_1

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v20

    .line 106
    .local v20, "entry":Lcom/android/volley/Cache$Entry;
    if-nez v20, :cond_0

    .line 107
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/16 v4, 0x130

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v8, v16, v24

    invoke-direct/range {v3 .. v9}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    move-object/from16 v11, v26

    .line 144
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v20    # "entry":Lcom/android/volley/Cache$Entry;
    .end local v26    # "responseContents":[B
    .local v11, "responseContents":[B
    :goto_1
    return-object v3

    .line 116
    .end local v11    # "responseContents":[B
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v20    # "entry":Lcom/android/volley/Cache$Entry;
    .restart local v26    # "responseContents":[B
    :cond_0
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    new-instance v7, Lcom/android/volley/NetworkResponse;

    const/16 v8, 0x130

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/volley/Cache$Entry;->data:[B

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v24

    invoke-direct/range {v7 .. v13}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    move-object/from16 v11, v26

    .end local v26    # "responseContents":[B
    .restart local v11    # "responseContents":[B
    move-object v3, v7

    goto :goto_1

    .line 123
    .end local v11    # "responseContents":[B
    .end local v20    # "entry":Lcom/android/volley/Cache$Entry;
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v26    # "responseContents":[B
    :cond_1
    const/16 v3, 0x12d

    if-eq v14, v3, :cond_2

    const/16 v3, 0x12e

    if-ne v14, v3, :cond_3

    .line 124
    :cond_2
    const-string v3, "Location"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 125
    .local v23, "newUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRedirectUrl(Ljava/lang/String;)V

    .line 129
    .end local v23    # "newUrl":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 130
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 138
    .end local v26    # "responseContents":[B
    .restart local v11    # "responseContents":[B
    :goto_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v8, v4, v24

    .local v8, "requestLifetime":J
    move-object/from16 v7, p0

    move-object/from16 v10, p1

    .line 139
    invoke-direct/range {v7 .. v12}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V

    .line 141
    const/16 v3, 0xc8

    if-lt v14, v3, :cond_4

    const/16 v3, 0x12b

    if-le v14, v3, :cond_6

    .line 142
    :cond_4
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 146
    .end local v8    # "requestLifetime":J
    :catch_0
    move-exception v2

    .line 147
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v14    # "statusCode":I
    .end local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :goto_3
    const-string v3, "socket"

    new-instance v4, Lcom/android/volley/TimeoutError;

    invoke-direct {v4}, Lcom/android/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 134
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .end local v11    # "responseContents":[B
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v14    # "statusCode":I
    .restart local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "responseContents":[B
    :cond_5
    const/4 v3, 0x0

    :try_start_2
    new-array v11, v3, [B
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v26    # "responseContents":[B
    .restart local v11    # "responseContents":[B
    goto :goto_2

    .line 144
    .restart local v8    # "requestLifetime":J
    :cond_6
    :try_start_3
    new-instance v13, Lcom/android/volley/NetworkResponse;

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v18, v4, v24

    move-object v15, v11

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v3, v13

    goto/16 :goto_1

    .line 148
    .end local v8    # "requestLifetime":J
    .end local v11    # "responseContents":[B
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v14    # "statusCode":I
    .end local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "responseContents":[B
    :catch_1
    move-exception v2

    move-object/from16 v11, v26

    .line 149
    .end local v26    # "responseContents":[B
    .local v2, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v11    # "responseContents":[B
    :goto_4
    const-string v3, "connection"

    new-instance v4, Lcom/android/volley/TimeoutError;

    invoke-direct {v4}, Lcom/android/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 150
    .end local v2    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v11    # "responseContents":[B
    .restart local v26    # "responseContents":[B
    :catch_2
    move-exception v2

    move-object/from16 v11, v26

    .line 151
    .end local v26    # "responseContents":[B
    .local v2, "e":Ljava/net/MalformedURLException;
    .restart local v11    # "responseContents":[B
    :goto_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 152
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v11    # "responseContents":[B
    .restart local v26    # "responseContents":[B
    :catch_3
    move-exception v2

    move-object/from16 v11, v26

    .line 153
    .end local v26    # "responseContents":[B
    .local v2, "e":Ljava/io/IOException;
    .restart local v11    # "responseContents":[B
    :goto_6
    const/4 v14, 0x0

    .line 154
    .restart local v14    # "statusCode":I
    const/4 v13, 0x0

    .line 155
    .local v13, "networkResponse":Lcom/android/volley/NetworkResponse;
    if-eqz v22, :cond_9

    .line 156
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 160
    const/16 v3, 0x12d

    if-eq v14, v3, :cond_7

    const/16 v3, 0x12e

    if-ne v14, v3, :cond_a

    .line 162
    :cond_7
    const-string v3, "Request at %s has been redirected to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getOriginUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_7
    if-eqz v11, :cond_e

    .line 167
    new-instance v13, Lcom/android/volley/NetworkResponse;

    .end local v13    # "networkResponse":Lcom/android/volley/NetworkResponse;
    const/16 v17, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v18, v4, v24

    move-object v15, v11

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    .line 169
    .restart local v13    # "networkResponse":Lcom/android/volley/NetworkResponse;
    const/16 v3, 0x191

    if-eq v14, v3, :cond_8

    const/16 v3, 0x193

    if-ne v14, v3, :cond_b

    .line 171
    :cond_8
    const-string v3, "auth"

    new-instance v4, Lcom/android/volley/AuthFailureError;

    invoke-direct {v4, v13}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 158
    :cond_9
    new-instance v3, Lcom/android/volley/NoConnectionError;

    invoke-direct {v3, v2}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 164
    :cond_a
    const-string v3, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 173
    :cond_b
    const/16 v3, 0x12d

    if-eq v14, v3, :cond_c

    const/16 v3, 0x12e

    if-ne v14, v3, :cond_d

    .line 175
    :cond_c
    const-string v3, "redirect"

    new-instance v4, Lcom/android/volley/RedirectError;

    invoke-direct {v4, v13}, Lcom/android/volley/RedirectError;-><init>(Lcom/android/volley/NetworkResponse;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 179
    :cond_d
    new-instance v3, Lcom/android/volley/ServerError;

    invoke-direct {v3, v13}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v3

    .line 182
    :cond_e
    new-instance v3, Lcom/android/volley/NetworkError;

    invoke-direct {v3, v2}, Lcom/android/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    .end local v13    # "networkResponse":Lcom/android/volley/NetworkResponse;
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v2

    goto/16 :goto_6

    .line 150
    :catch_5
    move-exception v2

    goto/16 :goto_5

    .line 148
    :catch_6
    move-exception v2

    goto/16 :goto_4

    .line 146
    .end local v11    # "responseContents":[B
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v14    # "statusCode":I
    .end local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "responseContents":[B
    :catch_7
    move-exception v2

    move-object/from16 v11, v26

    .end local v26    # "responseContents":[B
    .restart local v11    # "responseContents":[B
    goto/16 :goto_3
.end method
