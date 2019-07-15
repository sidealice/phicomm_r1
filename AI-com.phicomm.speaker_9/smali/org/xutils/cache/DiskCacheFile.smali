.class public final Lorg/xutils/cache/DiskCacheFile;
.super Ljava/io/File;
.source "DiskCacheFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field cacheEntity:Lorg/xutils/cache/DiskCacheEntity;

.field lock:Lorg/xutils/common/util/ProcessLock;


# direct methods
.method constructor <init>(Lorg/xutils/cache/DiskCacheEntity;Ljava/lang/String;Lorg/xutils/common/util/ProcessLock;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheFile;->cacheEntity:Lorg/xutils/cache/DiskCacheEntity;

    .line 27
    iput-object p3, p0, Lorg/xutils/cache/DiskCacheFile;->lock:Lorg/xutils/common/util/ProcessLock;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheFile;->lock:Lorg/xutils/common/util/ProcessLock;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public commit()Lorg/xutils/cache/DiskCacheFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/xutils/cache/DiskCacheFile;->getDiskCache()Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/DiskCacheFile;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 51
    invoke-virtual {p0}, Lorg/xutils/cache/DiskCacheFile;->close()V

    return-void
.end method

.method public getCacheEntity()Lorg/xutils/cache/DiskCacheEntity;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheFile;->cacheEntity:Lorg/xutils/cache/DiskCacheEntity;

    return-object v0
.end method

.method public getDiskCache()Lorg/xutils/cache/LruDiskCache;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/xutils/cache/DiskCacheFile;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    return-object v0
.end method
