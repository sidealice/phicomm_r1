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
.field final synthetic this$0:Lorg/xutils/cache/LruDiskCache;

.field final synthetic val$finalResult:Lorg/xutils/cache/DiskCacheEntity;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;Lorg/xutils/cache/DiskCacheEntity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$1;->this$0:Lorg/xutils/cache/LruDiskCache;

    iput-object p2, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 102
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-virtual {v2}, Lorg/xutils/cache/DiskCacheEntity;->getHits()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setHits(J)V

    .line 103
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$1;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hits"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "lastAccess"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
