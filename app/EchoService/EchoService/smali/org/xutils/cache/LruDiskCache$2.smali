.class Lorg/xutils/cache/LruDiskCache$2;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->trimSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/cache/LruDiskCache;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 250
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$100(Lorg/xutils/cache/LruDiskCache;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 253
    .local v2, "current":J
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$200(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 319
    .end local v2    # "current":J
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v2    # "current":J
    :cond_1
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7, v2, v3}, Lorg/xutils/cache/LruDiskCache;->access$202(Lorg/xutils/cache/LruDiskCache;J)J

    .line 260
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$300(Lorg/xutils/cache/LruDiskCache;)V

    .line 264
    :try_start_0
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v7

    const-class v8, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v7, v8}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v8

    long-to-int v0, v8

    .line 265
    .local v0, "count":I
    const/16 v7, 0x1392

    if-le v0, v7, :cond_3

    .line 266
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v7

    const-class v8, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v7, v8}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v7

    const-string v8, "lastAccess"

    .line 267
    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v7

    const-string v8, "hits"

    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v7

    add-int/lit16 v8, v0, -0x1388

    .line 268
    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v6

    .line 269
    .local v6, "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/cache/DiskCacheEntity;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 271
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    .local v1, "entity":Lorg/xutils/cache/DiskCacheEntity;
    :try_start_1
    iget-object v8, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v8}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 278
    iget-object v8, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v8, v5}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 279
    iget-object v8, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xutils/ex/DbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 281
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 282
    .local v4, "ex":Lorg/xutils/ex/DbException;
    :try_start_2
    invoke-virtual {v4}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/xutils/ex/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 288
    .end local v0    # "count":I
    .end local v1    # "entity":Lorg/xutils/cache/DiskCacheEntity;
    .end local v4    # "ex":Lorg/xutils/ex/DbException;
    .end local v6    # "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/cache/DiskCacheEntity;>;"
    :catch_1
    move-exception v4

    .line 289
    .restart local v4    # "ex":Lorg/xutils/ex/DbException;
    invoke-virtual {v4}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .end local v4    # "ex":Lorg/xutils/ex/DbException;
    :cond_3
    :try_start_3
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$500(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lorg/xutils/common/util/FileUtil;->getFileOrDirSize(Ljava/io/File;)J

    move-result-wide v8

    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$600(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 295
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v7

    const-class v8, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v7, v8}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v7

    const-string v8, "lastAccess"

    .line 296
    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v7

    const-string v8, "hits"

    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v6

    .line 297
    .restart local v6    # "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/cache/DiskCacheEntity;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 299
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_3
    .catch Lorg/xutils/ex/DbException; {:try_start_3 .. :try_end_3} :catch_3

    .line 302
    .restart local v1    # "entity":Lorg/xutils/cache/DiskCacheEntity;
    :try_start_4
    iget-object v8, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v8}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 305
    .restart local v5    # "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 306
    iget-object v8, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v8, v5}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 307
    iget-object v8, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/xutils/ex/DbException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 309
    .end local v5    # "path":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 310
    .restart local v4    # "ex":Lorg/xutils/ex/DbException;
    :try_start_5
    invoke-virtual {v4}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lorg/xutils/ex/DbException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 315
    .end local v1    # "entity":Lorg/xutils/cache/DiskCacheEntity;
    .end local v4    # "ex":Lorg/xutils/ex/DbException;
    .end local v6    # "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/cache/DiskCacheEntity;>;"
    :catch_3
    move-exception v4

    .line 316
    .restart local v4    # "ex":Lorg/xutils/ex/DbException;
    invoke-virtual {v4}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
