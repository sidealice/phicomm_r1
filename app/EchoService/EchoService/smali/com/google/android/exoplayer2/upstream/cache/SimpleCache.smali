.class public final Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleCache"


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

.field private final index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lockedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private totalSpace:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[BZ)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .param p3, "index"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    .line 93
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    .line 95
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    .line 98
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 99
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;

    const-string v2, "SimpleCache.initialize()"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;-><init>(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 108
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->start()V

    .line 109
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[B)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .param p3, "secretKey"    # [B

    .prologue
    .line 65
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[BZ)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[BZ)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .param p3, "secretKey"    # [B
    .param p4, "encrypt"    # Z

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    return-object v0
.end method

.method private addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 4
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->add(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 308
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 309
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 310
    return-void
.end method

.method private getSpan(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 250
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-nez v0, :cond_1

    .line 251
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 261
    :cond_0
    return-object v1

    .line 254
    :cond_1
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 255
    .local v1, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpansAndCachedContents()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 10

    .prologue
    .line 269
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->load()V

    .line 276
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 277
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 280
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v1, v2, v4

    .line 281
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cached_content_index.exi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 280
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 285
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v3

    .line 286
    .local v3, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :goto_3
    if-eqz v3, :cond_4

    .line 287
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    goto :goto_2

    .line 285
    .end local v3    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 289
    .restart local v3    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 293
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    .line 295
    :try_start_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    const-string v4, "SimpleCache"

    const-string v5, "Storing index file failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 4
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .prologue
    .line 365
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 366
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 368
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 367
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 372
    return-void
.end method

.method private notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 355
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 356
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 358
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 362
    return-void
.end method

.method private notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .param p2, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 375
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 376
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 378
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 377
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 381
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 382
    return-void
.end method

.method private removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Z)V
    .locals 6
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p2, "removeEmptyCachedContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 314
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 319
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    throw v1
.end method

.method private removeStaleSpansAndCachedContents()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v3, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getAll()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 340
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 341
    .local v2, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    iget-object v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 342
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local v2    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 348
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Z)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    .line 351
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    .line 352
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 115
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .restart local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 114
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized commitFile(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 208
    .local v1, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 209
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 227
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v4, v3

    .line 208
    goto :goto_0

    .line 215
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    .end local v1    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 220
    .restart local v1    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_2
    :try_start_2
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 221
    .local v0, "length":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 222
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    :goto_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 224
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 225
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 222
    goto :goto_2
.end method

.method public declared-synchronized getCacheSpace()J
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedBytes(Ljava/lang/String;JJ)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 393
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getCachedBytes(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    neg-long v2, p4

    goto :goto_0

    .line 392
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 137
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    monitor-exit p0

    return-object v1

    .line 137
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    .line 138
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getContentLength(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getContentLength(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 387
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getCachedBytes(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v1, v2, p4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 386
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 2
    .param p1, "holeSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 1
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 330
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContentLength(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->setContentLength(Ljava/lang/String;J)V

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "maxLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpansAndCachedContents()V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->assignIdForKey(Ljava/lang/String;)I

    move-result v1

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, p2

    .line 201
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 156
    .local v0, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v0, :cond_0

    .line 157
    monitor-exit p0

    return-object v0

    .line 163
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    .end local v0    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpan(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 174
    .local v0, "cacheSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->touch(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 177
    .local v1, "newCacheSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v1    # "newCacheSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 182
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 184
    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    .end local v0    # "cacheSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
