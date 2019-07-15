.class public final Lorg/xutils/cache/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/cache/LruDiskCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private final c:Lorg/xutils/DbManager;

.field private d:Ljava/io/File;

.field private e:J

.field private final f:Ljava/util/concurrent/Executor;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/xutils/cache/LruDiskCache;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    const-wide/32 v0, 0x6400000

    .line 43
    iput-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->e:J

    .line 44
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    iput-object v0, p0, Lorg/xutils/cache/LruDiskCache;->f:Ljava/util/concurrent/Executor;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lorg/xutils/cache/LruDiskCache;->g:J

    .line 60
    sget-object v0, Lorg/xutils/config/DbConfigs;->HTTP:Lorg/xutils/config/DbConfigs;

    invoke-virtual {v0}, Lorg/xutils/config/DbConfigs;->getConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    .line 61
    invoke-static {p1}, Lorg/xutils/common/util/FileUtil;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache;->d:Ljava/io/File;

    .line 62
    iget-object p1, p0, Lorg/xutils/cache/LruDiskCache;->d:Ljava/io/File;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/xutils/cache/LruDiskCache;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/xutils/cache/LruDiskCache;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    :cond_0
    iput-boolean v1, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    .line 65
    :cond_1
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->c()V

    return-void
.end method

.method static synthetic a(Lorg/xutils/cache/LruDiskCache;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lorg/xutils/cache/LruDiskCache;->g:J

    return-wide p1
.end method

.method static synthetic a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/cache/LruDiskCache$2;

    invoke-direct {v1, p0}, Lorg/xutils/cache/LruDiskCache$2;-><init>(Lorg/xutils/cache/LruDiskCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 377
    :try_start_0
    invoke-static {p1, v0}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 378
    :try_start_1
    invoke-virtual {v0}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method static synthetic a(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/xutils/cache/LruDiskCache;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 4

    :try_start_0
    const-string v0, "expires"

    const-string v1, "<"

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    const-class v2, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    const-class v3, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v2, v3, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 331
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/cache/DiskCacheEntity;

    .line 332
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    invoke-direct {p0, v1}, Lorg/xutils/cache/LruDiskCache;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lorg/xutils/cache/LruDiskCache;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    return p0
.end method

.method static synthetic c(Lorg/xutils/cache/LruDiskCache;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->g:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/cache/LruDiskCache$3;

    invoke-direct {v1, p0}, Lorg/xutils/cache/LruDiskCache$3;-><init>(Lorg/xutils/cache/LruDiskCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lorg/xutils/cache/LruDiskCache;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->b()V

    return-void
.end method

.method static synthetic e(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/xutils/cache/LruDiskCache;->d:Ljava/io/File;

    return-object p0
.end method

.method static synthetic f(Lorg/xutils/cache/LruDiskCache;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->e:J

    return-wide v0
.end method

.method public static declared-synchronized getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;
    .locals 3

    const-class v0, Lorg/xutils/cache/LruDiskCache;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "xUtils_cache"

    .line 51
    :cond_0
    sget-object v1, Lorg/xutils/cache/LruDiskCache;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/cache/LruDiskCache;

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Lorg/xutils/cache/LruDiskCache;

    invoke-direct {v1, p0}, Lorg/xutils/cache/LruDiskCache;-><init>(Ljava/lang/String;)V

    .line 54
    sget-object v2, Lorg/xutils/cache/LruDiskCache;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method a(Lorg/xutils/cache/DiskCacheFile;)Lorg/xutils/cache/DiskCacheFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 193
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 196
    :cond_0
    iget-boolean v1, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    if-eqz v1, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_7

    .line 201
    :cond_1
    iget-object v1, p1, Lorg/xutils/cache/DiskCacheFile;->cacheEntity:Lorg/xutils/cache/DiskCacheEntity;

    .line 202
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 206
    :try_start_0
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    .line 207
    invoke-static {v2, v3, v4, v5}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;ZJ)Lorg/xutils/common/util/ProcessLock;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_4

    .line 208
    :try_start_1
    invoke-virtual {v3}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 209
    new-instance v4, Lorg/xutils/cache/DiskCacheFile;

    invoke-direct {v4, v1, v2, v3}, Lorg/xutils/cache/DiskCacheFile;-><init>(Lorg/xutils/cache/DiskCacheEntity;Ljava/lang/String;Lorg/xutils/common/util/ProcessLock;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 210
    :try_start_2
    invoke-virtual {p1, v4}, Lorg/xutils/cache/DiskCacheFile;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 213
    :try_start_3
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xutils/ex/DbException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 215
    :try_start_4
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_0
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->a()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_2

    goto :goto_3

    .line 235
    :cond_2
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    move-object p1, v4

    goto/16 :goto_6

    .line 220
    :cond_3
    :try_start_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v4, v0

    goto :goto_1

    .line 223
    :cond_4
    :try_start_6
    new-instance v1, Lorg/xutils/ex/FileLockedException;

    invoke-direct {v1, v2}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_1
    move-object v0, v1

    .line 227
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez p1, :cond_5

    .line 231
    :goto_3
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto :goto_6

    .line 235
    :cond_5
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    :goto_4
    if-nez v0, :cond_6

    .line 231
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto :goto_5

    .line 235
    :cond_6
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    :goto_5
    throw v1

    :cond_7
    :goto_6
    return-object p1

    :cond_8
    :goto_7
    return-object v0
.end method

.method public clearCacheFiles()V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->d:Ljava/io/File;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    return-void
.end method

.method public createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache;->d:Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xutils/cache/DiskCacheEntity;->setPath(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    invoke-static {v0, v1}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    new-instance v2, Lorg/xutils/cache/DiskCacheFile;

    invoke-direct {v2, p1, v0, v1}, Lorg/xutils/cache/DiskCacheFile;-><init>(Lorg/xutils/cache/DiskCacheEntity;Ljava/lang/String;Lorg/xutils/common/util/ProcessLock;)V

    .line 172
    invoke-virtual {v2}, Lorg/xutils/cache/DiskCacheFile;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    invoke-virtual {v2}, Lorg/xutils/cache/DiskCacheFile;->mkdirs()Z

    :cond_1
    return-object v2

    .line 176
    :cond_2
    new-instance v0, Lorg/xutils/ex/FileLockedException;

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;
    .locals 6

    .line 81
    iget-boolean v0, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    const-class v2, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v2, "key"

    const-string v3, "="

    .line 86
    invoke-virtual {v0, v2, v3, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getExpires()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return-object v1

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/cache/LruDiskCache$1;

    invoke-direct {v1, p0, p1}, Lorg/xutils/cache/LruDiskCache$1;-><init>(Lorg/xutils/cache/LruDiskCache;Lorg/xutils/cache/DiskCacheEntity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    invoke-static {v0, v2, v3, v4}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;ZJ)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lorg/xutils/cache/DiskCacheFile;-><init>(Lorg/xutils/cache/DiskCacheEntity;Ljava/lang/String;Lorg/xutils/common/util/ProcessLock;)V

    .line 146
    invoke-virtual {v2}, Lorg/xutils/cache/DiskCacheFile;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public put(Lorg/xutils/cache/DiskCacheEntity;)V
    .locals 5

    .line 119
    iget-boolean v0, p0, Lorg/xutils/cache/LruDiskCache;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getExpires()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache;->c:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :goto_0
    invoke-direct {p0}, Lorg/xutils/cache/LruDiskCache;->a()V

    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public setMaxSize(J)Lorg/xutils/cache/LruDiskCache;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 70
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->getDiskAvailableSize()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 72
    iput-wide p1, p0, Lorg/xutils/cache/LruDiskCache;->e:J

    goto :goto_0

    .line 74
    :cond_0
    iput-wide v0, p0, Lorg/xutils/cache/LruDiskCache;->e:J

    :cond_1
    :goto_0
    return-object p0
.end method
