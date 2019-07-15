.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/offline/Downloader;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private volatile downloadedBytes:J

.field private volatile downloadedSegments:I

.field private keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private manifest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final manifestUri:Landroid/net/Uri;

.field private final offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private volatile totalSegments:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 1
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "constructorHelper"    # Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    .prologue
    .line 83
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    .line 85
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 88
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 89
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    .line 90
    return-void
.end method

.method private getDataSource(Z)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1
    .param p1, "offline"    # Z

    .prologue
    .line 326
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    goto :goto_0
.end method

.method private getManifestIfNeeded(Z)Ljava/lang/Object;
    .locals 2
    .param p1, "offline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getDataSource(Z)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized initStatus(Z)Ljava/util/List;
    .locals 10
    .param p1, "offline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getDataSource(Z)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    .line 298
    .local v1, "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    .line 299
    invoke-virtual {p0, v1, v5, v6, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v4

    .line 301
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 302
    .local v0, "cachingCounters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 303
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 304
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 305
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 306
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 307
    .local v3, "segment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    iget-object v5, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v5, v6, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    .line 308
    iget-wide v6, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 309
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 311
    iget v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 312
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 305
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 299
    .end local v0    # "cachingCounters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .end local v2    # "i":I
    .end local v3    # "segment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    .line 300
    invoke-virtual {p0, v1, v5, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 315
    .restart local v0    # "cachingCounters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .restart local v2    # "i":I
    .restart local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :cond_2
    monitor-exit p0

    return-object v4

    .line 297
    .end local v0    # "cachingCounters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .end local v1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local v2    # "i":I
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private notifyListener(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    .prologue
    .line 284
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getDownloadPercentage()F

    move-result v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    invoke-interface {p1, p0, v0, v2, v3}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onDownloadProgress(Lcom/google/android/exoplayer2/offline/Downloader;FJ)V

    .line 287
    :cond_0
    return-void
.end method

.method private remove(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 280
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private resetCounters()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 275
    iput v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 276
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 277
    return-void
.end method


# virtual methods
.method public final declared-synchronized download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->initStatus(Z)Ljava/util/List;

    move-result-object v9

    .line 154
    .local v9, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->notifyListener(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V

    .line 155
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 156
    const/high16 v0, 0x20000

    new-array v3, v0, [B

    .line 157
    .local v3, "buffer":[B
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 158
    .local v6, "cachingCounters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 159
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v5, -0x3e8

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V

    .line 161
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->notifyListener(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 166
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    monitor-exit p0

    return-void

    .line 166
    .end local v3    # "buffer":[B
    .end local v6    # "cachingCounters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .end local v8    # "i":I
    .end local v9    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v2, -0x3e8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "TM;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDownloadPercentage()F
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    const/4 v3, -0x1

    const/high16 v2, 0x42c80000    # 100.0f

    .line 204
    iget v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 205
    .local v1, "totalSegments":I
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 206
    .local v0, "downloadedSegments":I
    if-eq v1, v3, :cond_0

    if-ne v0, v3, :cond_2

    .line 207
    :cond_0
    const/high16 v2, 0x7fc00000    # NaNf

    .line 209
    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v1, :cond_1

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public final getDownloadedBytes()J
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    return-wide v0
.end method

.method public final getDownloadedSegments()I
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    return v0
.end method

.method public final getManifest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "TM;[TK;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getTotalSegments()I
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    return v0
.end method

.method public final init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->initStatus(Z)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 136
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    .line 134
    throw v0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final remove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    .line 221
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;Z)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 228
    :goto_1
    if-eqz v1, :cond_0

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 230
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->remove(Landroid/net/Uri;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    .line 235
    .end local v1    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->remove(Landroid/net/Uri;)V

    .line 236
    return-void

    .line 216
    :catch_0
    move-exception v2

    goto :goto_0

    .line 225
    .restart local v1    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public final selectRepresentations([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    .line 109
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
