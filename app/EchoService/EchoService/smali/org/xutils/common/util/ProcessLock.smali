.class public final Lorg/xutils/common/util/ProcessLock;
.super Ljava/lang/Object;
.source "ProcessLock.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FORMAT:Ljava/text/DecimalFormat;

.field private static final LOCK_FILE_DIR:Ljava/lang/String; = "process_lock"

.field private static final LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/util/DoubleKeyValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lorg/xutils/common/util/ProcessLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFileLock:Ljava/nio/channels/FileLock;

.field private final mLockName:Ljava/lang/String;

.field private final mStream:Ljava/io/Closeable;

.field private final mWriteMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v1, Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-direct {v1}, Lorg/xutils/common/util/DoubleKeyValueMap;-><init>()V

    sput-object v1, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    .line 40
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v1

    const-string v2, "process_lock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 144
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##################"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/xutils/common/util/ProcessLock;->FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V
    .locals 0
    .param p1, "lockName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileLock"    # Ljava/nio/channels/FileLock;
    .param p4, "stream"    # Ljava/io/Closeable;
    .param p5, "writeMode"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    .line 47
    iput-object p2, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    .line 48
    iput-object p4, p0, Lorg/xutils/common/util/ProcessLock;->mStream:Ljava/io/Closeable;

    .line 49
    iput-boolean p5, p0, Lorg/xutils/common/util/ProcessLock;->mWriteMode:Z

    .line 50
    return-void
.end method

.method private static customHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "0"

    .line 154
    :goto_0
    return-object v4

    .line 149
    :cond_0
    const-wide/16 v2, 0x0

    .line 150
    .local v2, "hash":D
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 151
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 152
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v2

    aget-byte v6, v0, v1

    int-to-double v6, v6

    add-double/2addr v4, v6

    const-wide v6, 0x3f747ae147ae147bL    # 0.005

    mul-double v2, v4, v6

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_1
    sget-object v4, Lorg/xutils/common/util/ProcessLock;->FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static isValid(Ljava/nio/channels/FileLock;)Z
    .locals 1
    .param p0, "fileLock"    # Ljava/nio/channels/FileLock;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V
    .locals 5
    .param p0, "lockName"    # Ljava/lang/String;
    .param p1, "fileLock"    # Ljava/nio/channels/FileLock;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 121
    sget-object v3, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter v3

    .line 122
    if-eqz p1, :cond_3

    .line 124
    :try_start_0
    sget-object v2, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lorg/xutils/common/util/DoubleKeyValueMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    sget-object v2, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v2, p0}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 126
    .local v1, "locks":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 130
    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    .end local v1    # "locks":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    :cond_3
    :goto_0
    invoke-static {p3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 141
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 136
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;
    .locals 1
    .param p0, "lockName"    # Ljava/lang/String;
    .param p1, "writeMode"    # Z

    .prologue
    .line 60
    invoke-static {p0}, Lorg/xutils/common/util/ProcessLock;->customHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/xutils/common/util/ProcessLock;->tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0

    return-object v0
.end method

.method public static tryLock(Ljava/lang/String;ZJ)Lorg/xutils/common/util/ProcessLock;
    .locals 8
    .param p0, "lockName"    # Ljava/lang/String;
    .param p1, "writeMode"    # Z
    .param p2, "maxWaitTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "lock":Lorg/xutils/common/util/ProcessLock;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v0, v6, p2

    .line 74
    .local v0, "expiryTime":J
    invoke-static {p0}, Lorg/xutils/common/util/ProcessLock;->customHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "hash":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-gez v5, :cond_0

    .line 76
    invoke-static {p0, v2, p1}, Lorg/xutils/common/util/ProcessLock;->tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v4

    .line 77
    if-eqz v4, :cond_1

    .line 89
    :cond_0
    return-object v4

    .line 81
    :cond_1
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "iex":Ljava/lang/InterruptedException;
    throw v3

    .line 84
    .end local v3    # "iex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;
    .locals 19
    .param p0, "lockName"    # Ljava/lang/String;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "writeMode"    # Z

    .prologue
    .line 158
    sget-object v18, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter v18

    .line 160
    :try_start_0
    sget-object v5, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v14

    .line 161
    .local v14, "locks":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 162
    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 163
    .local v13, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/xutils/common/util/ProcessLock;

    .line 166
    .local v17, "value":Lorg/xutils/common/util/ProcessLock;
    if-eqz v17, :cond_3

    .line 167
    invoke-virtual/range {v17 .. v17}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 215
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    .end local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;>;"
    .end local v14    # "locks":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    .end local v17    # "value":Lorg/xutils/common/util/ProcessLock;
    :catchall_0
    move-exception v5

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 169
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    .restart local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;>;"
    .restart local v14    # "locks":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    .restart local v17    # "value":Lorg/xutils/common/util/ProcessLock;
    :cond_1
    if-eqz p2, :cond_2

    .line 170
    const/4 v4, 0x0

    :try_start_1
    monitor-exit v18

    .line 217
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    .end local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;>;"
    .end local v17    # "value":Lorg/xutils/common/util/ProcessLock;
    :goto_1
    return-object v4

    .line 171
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    .restart local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;>;"
    .restart local v17    # "value":Lorg/xutils/common/util/ProcessLock;
    :cond_2
    move-object/from16 v0, v17

    iget-boolean v5, v0, Lorg/xutils/common/util/ProcessLock;->mWriteMode:Z

    if-eqz v5, :cond_0

    .line 172
    const/4 v4, 0x0

    monitor-exit v18

    goto :goto_1

    .line 175
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;"
    .end local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/xutils/common/util/ProcessLock;>;>;"
    .end local v17    # "value":Lorg/xutils/common/util/ProcessLock;
    :cond_4
    const/4 v3, 0x0

    .line 181
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    const/16 v16, 0x0

    .line 183
    .local v16, "stream":Ljava/io/Closeable;
    :try_start_2
    new-instance v10, Ljava/io/File;

    .line 184
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v5

    const-string v6, "process_lock"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-direct {v10, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 188
    :cond_5
    if-eqz p2, :cond_6

    .line 189
    new-instance v15, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v15, v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 190
    .local v15, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 191
    move-object/from16 v16, v15

    .line 197
    .end local v15    # "out":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v3, :cond_a

    .line 198
    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-nez p2, :cond_7

    const/4 v8, 0x1

    :goto_3
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 199
    .local v7, "fileLock":Ljava/nio/channels/FileLock;
    invoke-static {v7}, Lorg/xutils/common/util/ProcessLock;->isValid(Ljava/nio/channels/FileLock;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 200
    new-instance v4, Lorg/xutils/common/util/ProcessLock;

    move-object/from16 v5, p0

    move-object v6, v10

    move-object/from16 v8, v16

    move/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/xutils/common/util/ProcessLock;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V

    .line 201
    .local v4, "result":Lorg/xutils/common/util/ProcessLock;
    sget-object v5, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v4}, Lorg/xutils/common/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 193
    .end local v4    # "result":Lorg/xutils/common/util/ProcessLock;
    .end local v7    # "fileLock":Ljava/nio/channels/FileLock;
    :cond_6
    :try_start_4
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 194
    .local v12, "in":Ljava/io/FileInputStream;
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 195
    move-object/from16 v16, v12

    goto :goto_2

    .line 198
    .end local v12    # "in":Ljava/io/FileInputStream;
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 204
    .restart local v7    # "fileLock":Ljava/nio/channels/FileLock;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v7, v10, v1}, Lorg/xutils/common/util/ProcessLock;->release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    .end local v7    # "fileLock":Ljava/nio/channels/FileLock;
    .end local v10    # "file":Ljava/io/File;
    :cond_9
    :goto_4
    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 207
    .restart local v10    # "file":Ljava/io/File;
    :cond_a
    :try_start_6
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not get file channel:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 210
    .end local v10    # "file":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 211
    .local v11, "ignored":Ljava/lang/Throwable;
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryLock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 212
    invoke-static/range {v16 .. v16}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 213
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/xutils/common/util/ProcessLock;->release()V

    .line 114
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 227
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 228
    invoke-virtual {p0}, Lorg/xutils/common/util/ProcessLock;->release()V

    .line 229
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    invoke-static {v0}, Lorg/xutils/common/util/ProcessLock;->isValid(Ljava/nio/channels/FileLock;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    iget-object v3, p0, Lorg/xutils/common/util/ProcessLock;->mStream:Ljava/io/Closeable;

    invoke-static {v0, v1, v2, v3}, Lorg/xutils/common/util/ProcessLock;->release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
