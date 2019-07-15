.class public final Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;
.super Ljava/lang/Object;
.source "ProgressiveDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "customCacheKey"    # Ljava/lang/String;
    .param p3, "constructorHelper"    # Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    .prologue
    const/4 v7, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 51
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 52
    invoke-virtual {p3, v7}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 53
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .line 55
    return-void
.end method


# virtual methods
.method public download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, -0x3e8

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 67
    const/high16 v0, 0x20000

    :try_start_0
    new-array v3, v0, [B

    .line 68
    .local v3, "buffer":[B
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v5, -0x3e8

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const/high16 v0, 0x42c80000    # 100.0f

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    invoke-interface {p1, p0, v0, v4, v5}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onDownloadProgress(Lcom/google/android/exoplayer2/offline/Downloader;FJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 79
    return-void

    .line 77
    .end local v3    # "buffer":[B
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    throw v0
.end method

.method public getDownloadPercentage()F
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 94
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7fc00000    # NaNf

    .line 95
    :goto_0
    return v2

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .line 95
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->totalCachedBytes()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    long-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public getDownloadedBytes()J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->totalCachedBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    .line 60
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    .line 84
    return-void
.end method
