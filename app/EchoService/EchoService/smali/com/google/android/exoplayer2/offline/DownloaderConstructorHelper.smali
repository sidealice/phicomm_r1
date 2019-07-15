.class public final Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;
.super Ljava/lang/Object;
.source "DownloaderConstructorHelper.java"


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 6
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .prologue
    const/4 v3, 0x0

    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 0
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "cacheReadDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "cacheWriteDataSinkFactory"    # Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 66
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 67
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 68
    iput-object p5, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 69
    return-void
.end method


# virtual methods
.method public buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .locals 13
    .param p1, "offline"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 89
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    .line 90
    .local v3, "cacheReadDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :goto_0
    if-eqz p1, :cond_1

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    sget-object v2, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 100
    :goto_1
    return-object v0

    .line 89
    .end local v3    # "cacheReadDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    goto :goto_0

    .line 94
    .restart local v3    # "cacheReadDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 95
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;

    move-result-object v10

    .line 97
    .local v10, "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v8

    .line 98
    .local v8, "upstream":Lcom/google/android/exoplayer2/upstream/DataSource;
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-nez v0, :cond_3

    .line 100
    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object v9, v3

    move v11, v5

    move-object v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    move-object v0, v6

    goto :goto_1

    .line 95
    .end local v8    # "upstream":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local v10    # "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    :cond_2
    new-instance v10, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const-wide/32 v6, 0x200000

    invoke-direct {v10, v0, v6, v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    goto :goto_2

    .line 98
    .restart local v8    # "upstream":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local v10    # "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v2, -0x3e8

    invoke-direct {v0, v8, v1, v2}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    move-object v8, v0

    goto :goto_3
.end method

.method public getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;-><init>()V

    goto :goto_0
.end method
