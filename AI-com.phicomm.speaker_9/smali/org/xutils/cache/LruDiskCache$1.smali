.class Lorg/xutils/cache/LruDiskCache$1;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/cache/DiskCacheEntity;

.field final synthetic b:Lorg/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;Lorg/xutils/cache/DiskCacheEntity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$1;->b:Lorg/xutils/cache/LruDiskCache;

    iput-object p2, p0, Lorg/xutils/cache/LruDiskCache$1;->a:Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 102
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->a:Lorg/xutils/cache/DiskCacheEntity;

    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$1;->a:Lorg/xutils/cache/DiskCacheEntity;

    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheEntity;->getHits()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Lorg/xutils/cache/DiskCacheEntity;->setHits(J)V

    .line 103
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->a:Lorg/xutils/cache/DiskCacheEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->b:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$1;->a:Lorg/xutils/cache/DiskCacheEntity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lastAccess"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
