.class Lorg/xutils/cache/LruDiskCache$2;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 250
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->b(Lorg/xutils/cache/LruDiskCache;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2}, Lorg/xutils/cache/LruDiskCache;->c(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2, v0, v1}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;J)J

    .line 260
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->d(Lorg/xutils/cache/LruDiskCache;)V

    const/4 v0, 0x0

    .line 264
    :try_start_0
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v1

    const-class v2, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x1392

    if-le v1, v2, :cond_2

    .line 266
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v2

    const-class v3, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v2, v3}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v2

    const-string v3, "lastAccess"

    .line 267
    invoke-virtual {v2, v3}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v2

    const-string v3, "hits"

    invoke-virtual {v2, v3}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v2

    add-int/lit16 v1, v1, -0x1388

    .line 268
    invoke-virtual {v2, v1}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 269
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 271
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    :try_start_1
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v2}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v3, v2}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 279
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xutils/ex/DbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 282
    :try_start_2
    invoke-virtual {v2}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/xutils/ex/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 289
    invoke-virtual {v1}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->e(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/FileUtil;->getFileOrDirSize(Ljava/io/File;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->f(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 295
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v1

    const-class v2, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "lastAccess"

    .line 296
    invoke-virtual {v1, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "hits"

    invoke-virtual {v1, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 297
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 299
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_3
    .catch Lorg/xutils/ex/DbException; {:try_start_3 .. :try_end_3} :catch_3

    .line 302
    :try_start_4
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v2}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 306
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v3, v2}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 307
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->a:Lorg/xutils/cache/LruDiskCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/xutils/ex/DbException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 310
    :try_start_5
    invoke-virtual {v2}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lorg/xutils/ex/DbException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 316
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
