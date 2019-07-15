.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 8
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstream"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 119
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 v0, 0x20000

    new-array v3, v0, [B

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V

    .line 121
    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V
    .locals 24
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .param p3, "buffer"    # [B
    .param p4, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p5, "priority"    # I
    .param p6, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .param p7, "enableEOFException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    if-eqz p6, :cond_2

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    .line 155
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 157
    .local v6, "start":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    move-wide/from16 v20, v0

    .line 158
    .local v20, "left":J
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v4, v20, v8

    if-eqz v4, :cond_6

    .line 159
    const-wide/16 v8, -0x1

    cmp-long v4, v20, v8

    if-eqz v4, :cond_4

    move-wide/from16 v8, v20

    :goto_2
    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v12

    .line 161
    .local v12, "blockLength":J
    const-wide/16 v8, 0x0

    cmp-long v4, v12, v8

    if-lez v4, :cond_5

    .line 176
    :cond_0
    add-long/2addr v6, v12

    .line 177
    const-wide/16 v8, -0x1

    cmp-long v4, v20, v8

    if-nez v4, :cond_1

    const-wide/16 v12, 0x0

    .end local v12    # "blockLength":J
    :cond_1
    sub-long v20, v20, v12

    .line 178
    goto :goto_1

    .line 152
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "start":J
    .end local v20    # "left":J
    :cond_2
    new-instance p6, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .end local p6    # "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    invoke-direct/range {p6 .. p6}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .restart local p6    # "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    goto :goto_0

    .line 157
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "start":J
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v20

    goto :goto_1

    .line 159
    .restart local v20    # "left":J
    :cond_4
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_2

    .line 165
    .restart local v12    # "blockLength":J
    :cond_5
    neg-long v12, v12

    move-object/from16 v9, p0

    move-wide v10, v6

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    .line 166
    invoke-static/range {v9 .. v18}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J

    move-result-wide v22

    .line 168
    .local v22, "read":J
    cmp-long v4, v22, v12

    if-gez v4, :cond_0

    .line 170
    if-eqz p7, :cond_6

    const-wide/16 v8, -0x1

    cmp-long v4, v20, v8

    if-eqz v4, :cond_6

    .line 171
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 179
    .end local v12    # "blockLength":J
    .end local v22    # "read":J
    :cond_6
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 12
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "key":Ljava/lang/String;
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 86
    .local v2, "start":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-eqz v0, :cond_2

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 87
    .local v8, "left":J
    :goto_0
    iput-wide v8, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 88
    const-wide/16 v4, 0x0

    iput-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 89
    const-wide/16 v4, 0x0

    iput-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    .line 90
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-eqz v0, :cond_5

    .line 91
    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-eqz v0, :cond_3

    move-wide v4, v8

    :goto_2
    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v6

    .line 93
    .local v6, "blockLength":J
    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    .line 94
    iget-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v4, v6

    iput-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 101
    :cond_0
    add-long/2addr v2, v6

    .line 102
    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-nez v0, :cond_1

    const-wide/16 v6, 0x0

    .end local v6    # "blockLength":J
    :cond_1
    sub-long/2addr v8, v6

    .line 103
    goto :goto_1

    .line 86
    .end local v8    # "left":J
    :cond_2
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    .line 91
    .restart local v8    # "left":J
    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    .line 96
    .restart local v6    # "blockLength":J
    :cond_4
    neg-long v6, v6

    .line 97
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    .line 104
    .end local v6    # "blockLength":J
    :cond_5
    return-void
.end method

.method public static getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J
    .locals 21
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "absoluteStreamPosition"    # J
    .param p3, "length"    # J
    .param p5, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p6, "buffer"    # [B
    .param p7, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p8, "priority"    # I
    .param p9, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 201
    move-object/from16 v2, p0

    .end local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .local v2, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :goto_0
    if-eqz p7, :cond_0

    .line 203
    invoke-virtual/range {p7 .. p8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 206
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :catch_0
    move-exception v3

    move-object/from16 p0, v2

    .line 240
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :goto_1
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    move-object/from16 v2, p0

    .end local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    goto :goto_0

    .line 211
    :cond_1
    :try_start_1
    new-instance p0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long v6, v6, p1

    iget-wide v8, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long v8, v6, v8

    const-wide/16 v10, -0x1

    iget-object v12, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    or-int/lit8 v13, v3, 0x2

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :try_start_2
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v16

    .line 216
    .local v16, "resolvedLength":J
    move-object/from16 v0, p9

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long v4, v4, v16

    move-object/from16 v0, p9

    iput-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 219
    :cond_2
    const-wide/16 v18, 0x0

    .line 220
    .local v18, "totalRead":J
    :goto_2
    cmp-long v3, v18, p3

    if-eqz v3, :cond_4

    .line 221
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 237
    .end local v16    # "resolvedLength":J
    .end local v18    # "totalRead":J
    :catch_1
    move-exception v3

    goto :goto_1

    .line 224
    .restart local v16    # "resolvedLength":J
    .restart local v18    # "totalRead":J
    :cond_3
    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    cmp-long v3, p3, v6

    if-eqz v3, :cond_5

    move-object/from16 v0, p6

    array-length v3, v0

    int-to-long v6, v3

    sub-long v8, p3, v18

    .line 225
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 224
    :goto_3
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-interface {v0, v1, v4, v3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v14

    .line 227
    .local v14, "read":I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_6

    .line 228
    move-object/from16 v0, p9

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long v4, v4, v18

    move-object/from16 v0, p9

    iput-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J
    :try_end_2
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .end local v14    # "read":I
    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide v18

    .line 225
    :cond_5
    :try_start_3
    move-object/from16 v0, p6

    array-length v3, v0

    goto :goto_3

    .line 233
    .restart local v14    # "read":I
    :cond_6
    int-to-long v4, v14

    add-long v18, v18, v4

    .line 234
    move-object/from16 v0, p9

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    int-to-long v6, v14

    add-long/2addr v4, v6

    move-object/from16 v0, p9

    iput-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J
    :try_end_3
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 240
    .end local v14    # "read":I
    .end local v16    # "resolvedLength":J
    .end local v18    # "totalRead":J
    :catchall_0
    move-exception v3

    :goto_4
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v3

    .end local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :catchall_1
    move-exception v3

    move-object/from16 p0, v2

    .end local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    goto :goto_4
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 4
    .param p0, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 248
    .local v1, "cachedSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    if-nez v1, :cond_1

    .line 258
    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 253
    .local v0, "cachedSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v3

    goto :goto_0
.end method
