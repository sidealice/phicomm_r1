.class public final Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private currentSize:J

.field private final leastRecentlyUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxBytes"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    .line 34
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 35
    return-void
.end method

.method private evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 4
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "requiredSpace"    # J

    .prologue
    .line 77
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I
    .locals 6
    .param p1, "lhs"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p2, "rhs"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 68
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    sub-long v0, v2, v4

    .line 69
    .local v0, "lastAccessTimestampDelta":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result v2

    .line 73
    :goto_0
    return v2

    :cond_0
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->compare(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public onCacheInitialized()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 51
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 52
    return-void
.end method

.method public onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 58
    return-void
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 63
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 64
    return-void
.end method

.method public onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "maxLength"    # J

    .prologue
    .line 44
    invoke-direct {p0, p1, p5, p6}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 45
    return-void
.end method
