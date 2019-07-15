.class public final Lorg/xutils/cache/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "xUtils_cache"

.field private static final DISK_CACHE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/cache/LruDiskCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMIT_COUNT:I = 0x1388

.field private static final LIMIT_SIZE:J = 0x6400000L

.field private static final LOCK_WAIT:I = 0xbb8

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = ".tmp"

.field private static final TRIM_TIME_SPAN:J = 0x3e8L


# instance fields
.field private available:Z

.field private final cacheDb:Lorg/xutils/DbManager;

.field private cacheDir:Ljava/io/File;

.field private diskCacheSize:J

.field private lastTrimTime:J

.field private final trimExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/xutils/cache/LruDiskCache;->DISK_CACHE_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    .line 43
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->diskCacheSize:J

    .line 44
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v2, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    iput-object v0, p0, Lorg/xutils/cache/LruDiskCache;->trimExecutor:Ljava/util/concurrent/Executor;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->lastTrimTime:J

    .line 60
    sget-object v0, Lorg/xutils/config/DbConfigs;->HTTP:Lorg/xutils/config/DbConfigs;

    invoke-virtual {v0}, Lorg/xutils/config/DbConfigs;->getConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    .line 61
    invoke-static {p1}, Lorg/xutils/common/util/FileUtil;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDir:Ljava/io/File;

    .line 62
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iput-boolean v2, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    .line 65
    :cond_1
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->deleteNoIndexFiles()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xutils/cache/LruDiskCache;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    return v0
.end method

.method static synthetic access$200(Lorg/xutils/cache/LruDiskCache;)J
    .locals 2
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->lastTrimTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/xutils/cache/LruDiskCache;J)J
    .locals 1
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lorg/xutils/cache/LruDiskCache;->lastTrimTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/xutils/cache/LruDiskCache;)V
    .locals 0
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->deleteExpiry()V

    return-void
.end method

.method static synthetic access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/xutils/cache/LruDiskCache;->deleteFileWithLock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xutils/cache/LruDiskCache;)J
    .locals 2
    .param p0, "x0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->diskCacheSize:J

    return-wide v0
.end method

.method private deleteExpiry()V
    .locals 10

    .prologue
    .line 325
    :try_start_0
    const-string v5, "expires"

    const-string v6, "<"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    .line 326
    .local v4, "whereBuilder":Lorg/xutils/db/sqlite/WhereBuilder;
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    const-class v6, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v5, v6}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v3

    .line 328
    .local v3, "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/cache/DiskCacheEntity;>;"
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    const-class v6, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v5, v6, v4}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    .line 329
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 331
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/cache/DiskCacheEntity;

    .line 332
    .local v0, "entity":Lorg/xutils/cache/DiskCacheEntity;
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 334
    invoke-direct {p0, v2}, Lorg/xutils/cache/LruDiskCache;->deleteFileWithLock(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    .end local v0    # "entity":Lorg/xutils/cache/DiskCacheEntity;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/cache/DiskCacheEntity;>;"
    .end local v4    # "whereBuilder":Lorg/xutils/db/sqlite/WhereBuilder;
    :catch_0
    move-exception v1

    .line 339
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method private deleteFileWithLock(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, "processLock":Lorg/xutils/common/util/ProcessLock;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 383
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 385
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 383
    :cond_0
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 385
    const/4 v2, 0x0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method private deleteNoIndexFiles()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->trimExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/cache/LruDiskCache$3;

    invoke-direct {v1, p0}, Lorg/xutils/cache/LruDiskCache$3;-><init>(Lorg/xutils/cache/LruDiskCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public static declared-synchronized getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;
    .locals 3
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v2, Lorg/xutils/cache/LruDiskCache;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "xUtils_cache"

    .line 51
    :cond_0
    sget-object v1, Lorg/xutils/cache/LruDiskCache;->DISK_CACHE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/cache/LruDiskCache;

    .line 52
    .local v0, "cache":Lorg/xutils/cache/LruDiskCache;
    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lorg/xutils/cache/LruDiskCache;

    .end local v0    # "cache":Lorg/xutils/cache/LruDiskCache;
    invoke-direct {v0, p0}, Lorg/xutils/cache/LruDiskCache;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v0    # "cache":Lorg/xutils/cache/LruDiskCache;
    sget-object v1, Lorg/xutils/cache/LruDiskCache;->DISK_CACHE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    monitor-exit v2

    return-object v0

    .line 50
    .end local v0    # "cache":Lorg/xutils/cache/LruDiskCache;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private trimSize()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->trimExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/cache/LruDiskCache$2;

    invoke-direct {v1, p0}, Lorg/xutils/cache/LruDiskCache$2;-><init>(Lorg/xutils/cache/LruDiskCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method


# virtual methods
.method public clearCacheFiles()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 184
    return-void
.end method

.method commitDiskCacheFile(Lorg/xutils/cache/DiskCacheFile;)Lorg/xutils/cache/DiskCacheFile;
    .locals 12
    .param p1, "cacheFile"    # Lorg/xutils/cache/DiskCacheFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 192
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 193
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 243
    :cond_0
    :goto_0
    return-object v6

    .line 196
    :cond_1
    iget-boolean v7, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "result":Lorg/xutils/cache/DiskCacheFile;
    iget-object v0, p1, Lorg/xutils/cache/DiskCacheFile;->cacheEntity:Lorg/xutils/cache/DiskCacheEntity;

    .line 202
    .local v0, "cacheEntity":Lorg/xutils/cache/DiskCacheEntity;
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheFile;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 203
    const/4 v5, 0x0

    .line 204
    .local v5, "processLock":Lorg/xutils/common/util/ProcessLock;
    const/4 v1, 0x0

    .line 206
    .local v1, "destFile":Lorg/xutils/cache/DiskCacheFile;
    :try_start_0
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "destPath":Ljava/lang/String;
    const/4 v7, 0x1

    const-wide/16 v8, 0xbb8

    invoke-static {v3, v7, v8, v9}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;ZJ)Lorg/xutils/common/util/ProcessLock;

    move-result-object v5

    .line 208
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 209
    new-instance v2, Lorg/xutils/cache/DiskCacheFile;

    invoke-direct {v2, v0, v3, v5}, Lorg/xutils/cache/DiskCacheFile;-><init>(Lorg/xutils/cache/DiskCacheEntity;Ljava/lang/String;Lorg/xutils/common/util/ProcessLock;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    .end local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .local v2, "destFile":Lorg/xutils/cache/DiskCacheFile;
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/xutils/cache/DiskCacheFile;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    move-object v6, v2

    .line 213
    :try_start_2
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    invoke-interface {v7, v0}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xutils/ex/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->trimSize()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    if-nez v6, :cond_4

    .line 230
    move-object v6, p1

    .line 231
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v5}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    move-object v1, v2

    .end local v2    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .restart local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    goto :goto_0

    .line 214
    .end local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .restart local v2    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    :catch_0
    move-exception v4

    .line 215
    .local v4, "ex":Lorg/xutils/ex/DbException;
    :try_start_4
    invoke-virtual {v4}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 225
    .end local v4    # "ex":Lorg/xutils/ex/DbException;
    :catch_1
    move-exception v4

    move-object v1, v2

    .line 226
    .end local v2    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .end local v3    # "destPath":Ljava/lang/String;
    .restart local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .local v4, "ex":Ljava/lang/InterruptedException;
    :goto_2
    move-object v6, p1

    .line 227
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    if-nez v6, :cond_5

    .line 230
    move-object v6, p1

    .line 231
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v5}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto :goto_0

    .line 220
    .end local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    .restart local v2    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .restart local v3    # "destPath":Ljava/lang/String;
    :cond_2
    :try_start_6
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rename:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 229
    :catchall_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .end local v3    # "destPath":Ljava/lang/String;
    .restart local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    :goto_3
    if-nez v6, :cond_6

    .line 230
    move-object v6, p1

    .line 231
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v5}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 236
    :goto_4
    throw v7

    .line 223
    .restart local v3    # "destPath":Ljava/lang/String;
    :cond_3
    :try_start_7
    new-instance v7, Lorg/xutils/ex/FileLockedException;

    invoke-direct {v7, v3}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 225
    .end local v3    # "destPath":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_2

    .line 235
    .end local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .restart local v2    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .restart local v3    # "destPath":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    move-object v1, v2

    .line 238
    .end local v2    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .restart local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    goto/16 :goto_0

    .line 235
    .end local v3    # "destPath":Ljava/lang/String;
    .restart local v4    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 235
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto :goto_4

    .line 240
    .end local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .end local v5    # "processLock":Lorg/xutils/common/util/ProcessLock;
    :cond_7
    move-object v6, p1

    goto/16 :goto_0

    .line 229
    .restart local v1    # "destFile":Lorg/xutils/cache/DiskCacheFile;
    .restart local v5    # "processLock":Lorg/xutils/common/util/ProcessLock;
    :catchall_1
    move-exception v7

    goto :goto_3
.end method

.method public createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;
    .locals 6
    .param p1, "entity"    # Lorg/xutils/cache/DiskCacheEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-boolean v3, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 179
    :cond_1
    :goto_0
    return-object v1

    .line 165
    :cond_2
    const/4 v1, 0x0

    .line 167
    .local v1, "result":Lorg/xutils/cache/DiskCacheFile;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/xutils/common/util/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xutils/cache/DiskCacheEntity;->setPath(Ljava/lang/String;)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "tempFilePath":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0

    .line 170
    .local v0, "processLock":Lorg/xutils/common/util/ProcessLock;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    new-instance v1, Lorg/xutils/cache/DiskCacheFile;

    .end local v1    # "result":Lorg/xutils/cache/DiskCacheFile;
    invoke-direct {v1, p1, v2, v0}, Lorg/xutils/cache/DiskCacheFile;-><init>(Lorg/xutils/cache/DiskCacheEntity;Ljava/lang/String;Lorg/xutils/common/util/ProcessLock;)V

    .line 172
    .restart local v1    # "result":Lorg/xutils/cache/DiskCacheFile;
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->mkdirs()Z

    goto :goto_0

    .line 176
    :cond_3
    new-instance v3, Lorg/xutils/ex/FileLockedException;

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 81
    iget-boolean v5, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    if-eqz v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v4, v6

    .line 115
    :cond_1
    :goto_0
    return-object v4

    .line 83
    :cond_2
    const/4 v4, 0x0

    .line 85
    .local v4, "result":Lorg/xutils/cache/DiskCacheEntity;
    :try_start_0
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    const-class v7, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v5, v7}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    const-string v7, "key"

    const-string v8, "="

    .line 86
    invoke-virtual {v5, v7, v8, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/xutils/cache/DiskCacheEntity;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_1
    if-eqz v4, :cond_1

    .line 93
    invoke-virtual {v4}, Lorg/xutils/cache/DiskCacheEntity;->getExpires()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gez v5, :cond_3

    move-object v4, v6

    .line 94
    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 98
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v3, v4

    .line 99
    .local v3, "finalResult":Lorg/xutils/cache/DiskCacheEntity;
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache;->trimExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lorg/xutils/cache/LruDiskCache$1;

    invoke-direct {v6, p0, v3}, Lorg/xutils/cache/LruDiskCache$1;-><init>(Lorg/xutils/cache/LruDiskCache;Lorg/xutils/cache/DiskCacheEntity;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 136
    iget-boolean v4, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    :cond_0
    const/4 v3, 0x0

    .line 157
    :cond_1
    :goto_0
    return-object v3

    .line 140
    :cond_2
    const/4 v3, 0x0

    .line 141
    .local v3, "result":Lorg/xutils/cache/DiskCacheFile;
    invoke-virtual {p0, p1}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    .line 142
    .local v0, "entity":Lorg/xutils/cache/DiskCacheEntity;
    if-eqz v0, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0xbb8

    invoke-static {v4, v5, v6, v7}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;ZJ)Lorg/xutils/common/util/ProcessLock;

    move-result-object v2

    .line 144
    .local v2, "processLock":Lorg/xutils/common/util/ProcessLock;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    new-instance v3, Lorg/xutils/cache/DiskCacheFile;

    .end local v3    # "result":Lorg/xutils/cache/DiskCacheFile;
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lorg/xutils/cache/DiskCacheFile;-><init>(Lorg/xutils/cache/DiskCacheEntity;Ljava/lang/String;Lorg/xutils/common/util/ProcessLock;)V

    .line 146
    .restart local v3    # "result":Lorg/xutils/cache/DiskCacheFile;
    invoke-virtual {v3}, Lorg/xutils/cache/DiskCacheFile;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    :try_start_0
    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    invoke-interface {v4, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "ex":Lorg/xutils/ex/DbException;
    invoke-virtual {v1}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public put(Lorg/xutils/cache/DiskCacheEntity;)V
    .locals 6
    .param p1, "entity"    # Lorg/xutils/cache/DiskCacheEntity;

    .prologue
    .line 119
    iget-boolean v1, p0, Lorg/xutils/cache/LruDiskCache;->available:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getExpires()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache;->cacheDb:Lorg/xutils/DbManager;

    invoke-interface {v1, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->trimSize()V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Lorg/xutils/ex/DbException;
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setMaxSize(J)Lorg/xutils/cache/LruDiskCache;
    .locals 5
    .param p1, "maxSize"    # J

    .prologue
    .line 69
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 70
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->getDiskAvailableSize()J

    move-result-wide v0

    .line 71
    .local v0, "diskFreeSize":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 72
    iput-wide p1, p0, Lorg/xutils/cache/LruDiskCache;->diskCacheSize:J

    .line 77
    .end local v0    # "diskFreeSize":J
    :cond_0
    :goto_0
    return-object p0

    .line 74
    .restart local v0    # "diskFreeSize":J
    :cond_1
    iput-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->diskCacheSize:J

    goto :goto_0
.end method
