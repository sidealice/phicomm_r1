.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;
.super Ljava/lang/Object;
.source "CacheDataSinkFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSink$Factory;


# instance fields
.field private final bufferSize:I

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final maxCacheFileSize:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 2
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "maxCacheFileSize"    # J

    .prologue
    .line 33
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V
    .locals 0
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "maxCacheFileSize"    # J
    .param p4, "bufferSize"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 41
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->maxCacheFileSize:J

    .line 42
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->bufferSize:I

    .line 43
    return-void
.end method


# virtual methods
.method public createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->maxCacheFileSize:J

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->bufferSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    return-object v0
.end method
