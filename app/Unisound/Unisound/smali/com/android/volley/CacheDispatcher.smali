.class public Lcom/android/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .param p3, "cache"    # Lcom/android/volley/Cache;
    .param p4, "delivery"    # Lcom/android/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "cacheQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    .local p2, "networkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    .line 63
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 64
    iput-object p2, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p3, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 66
    iput-object p4, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/CacheDispatcher;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/volley/CacheDispatcher;->interrupt()V

    .line 76
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 80
    sget-boolean v5, Lcom/android/volley/CacheDispatcher;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "start new dispatcher"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v5, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v5}, Lcom/android/volley/Cache;->initialize()V

    .line 89
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 92
    .local v3, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    check-cast v3, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .restart local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_1
    const-string v5, "cache-queue-take"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    const-string v5, "cache-discard-canceled"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Unhandled exception %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    if-eqz v5, :cond_1

    .line 96
    return-void

    .line 110
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v3}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 111
    .local v1, "entry":Lcom/android/volley/Cache$Entry;
    if-nez v1, :cond_3

    .line 112
    const-string v5, "cache-miss"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v1}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    const-string v5, "cache-hit-expired"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, v1}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 122
    iget-object v5, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_4
    const-string v5, "cache-hit"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 128
    new-instance v5, Lcom/android/volley/NetworkResponse;

    iget-object v6, v1, Lcom/android/volley/Cache$Entry;->data:[B

    iget-object v7, v1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v4

    .line 130
    .local v4, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const-string v5, "cache-hit-parsed"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Lcom/android/volley/Cache$Entry;->refreshNeeded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 134
    iget-object v5, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v5, v3, v4}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_0

    .line 139
    :cond_5
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v1}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 143
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/volley/Response;->intermediate:Z

    .line 147
    move-object v2, v3

    .line 148
    .local v2, "finalRequest":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iget-object v5, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v6, Lcom/android/volley/CacheDispatcher$1;

    invoke-direct {v6, p0, v2}, Lcom/android/volley/CacheDispatcher$1;-><init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V

    invoke-interface {v5, v3, v4, v6}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
