.class public Lorg/xutils/http/loader/FileLoader;
.super Lorg/xutils/http/loader/Loader;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECK_SIZE:I = 0x200


# instance fields
.field private contentLength:J

.field private diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

.field private isAutoRename:Z

.field private isAutoResume:Z

.field private responseFileName:Ljava/lang/String;

.field private saveFilePath:Ljava/lang/String;

.field private tempSaveFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method

.method private autoRename(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "loadedFile"    # Ljava/io/File;

    .prologue
    .line 286
    iget-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 287
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v0, "newFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v0, Ljava/io/File;

    .end local v0    # "newFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "newFile":Ljava/io/File;
    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    .end local v0    # "newFile":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v0

    .restart local v0    # "newFile":Ljava/io/File;
    :cond_2
    move-object v0, p1

    .line 291
    goto :goto_1

    .line 292
    .end local v0    # "newFile":Ljava/io/File;
    :cond_3
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v0    # "newFile":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    goto :goto_1

    .end local v0    # "newFile":Ljava/io/File;
    :cond_4
    move-object v0, p1

    .line 296
    goto :goto_1
.end method

.method private static getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;
    .locals 8
    .param p0, "request"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    const/4 v5, 0x0

    .line 301
    if-nez p0, :cond_1

    move-object v3, v5

    .line 326
    :cond_0
    :goto_0
    return-object v3

    .line 302
    :cond_1
    const-string v6, "Content-Disposition"

    invoke-virtual {p0, v6}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "disposition":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    const-string v6, "filename="

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 305
    .local v4, "startIndex":I
    if-lez v4, :cond_3

    .line 306
    add-int/lit8 v4, v4, 0x9

    .line 307
    const-string v6, ";"

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 308
    .local v1, "endIndex":I
    if-gez v1, :cond_2

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 311
    :cond_2
    if-le v1, v4, :cond_3

    .line 314
    :try_start_0
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-virtual {p0}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v7

    .line 313
    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "name":Ljava/lang/String;
    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 320
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 321
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "endIndex":I
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "startIndex":I
    :cond_3
    move-object v3, v5

    .line 326
    goto :goto_0
.end method

.method private initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V
    .locals 4
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 271
    .local v0, "entity":Lorg/xutils/cache/DiskCacheEntity;
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruDiskCache;->createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    .line 274
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    .line 278
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    .line 282
    return-void

    .line 280
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create cache file error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isSupportRange(Lorg/xutils/http/request/UriRequest;)Z
    .locals 3
    .param p0, "request"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    const/4 v1, 0x0

    .line 330
    if-nez p0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 331
    :cond_1
    const-string v2, "Accept-Ranges"

    invoke-virtual {p0, v2}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "ranges":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 333
    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 335
    :cond_2
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    const-string v2, "bytes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Ljava/io/File;
    .locals 32
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    const/16 v23, 0x0

    .line 71
    .local v23, "targetFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 72
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 74
    .local v12, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 75
    .end local v23    # "targetFile":Ljava/io/File;
    .local v24, "targetFile":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    invoke-static/range {v24 .. v24}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 79
    :cond_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 81
    .local v15, "dir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    new-instance v5, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "can not create dir: "

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v15    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v5

    move-object/from16 v23, v24

    .end local v24    # "targetFile":Ljava/io/File;
    .restart local v23    # "targetFile":Ljava/io/File;
    :goto_0
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-static {v12}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 87
    .end local v23    # "targetFile":Ljava/io/File;
    .restart local v24    # "targetFile":Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 88
    .local v26, "targetFileLen":J
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    const-wide/16 v28, 0x0

    cmp-long v5, v26, v28

    if-lez v5, :cond_3

    .line 89
    const/16 v20, 0x0

    .line 91
    .local v20, "fis":Ljava/io/FileInputStream;
    const-wide/16 v28, 0x200

    sub-long v18, v26, v28

    .line 92
    .local v18, "filePos":J
    const-wide/16 v28, 0x0

    cmp-long v5, v18, v28

    if-lez v5, :cond_4

    .line 93
    :try_start_3
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 94
    .end local v20    # "fis":Ljava/io/FileInputStream;
    .local v21, "fis":Ljava/io/FileInputStream;
    const/16 v5, 0x200

    :try_start_4
    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v5}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v16

    .line 95
    .local v16, "fileCheckBuffer":[B
    const-wide/16 v28, 0x0

    const/16 v5, 0x200

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2, v5}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v14

    .line 96
    .local v14, "checkBuffer":[B
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 97
    invoke-static/range {v21 .. v21}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static/range {v24 .. v24}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 99
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v10, "need retry"

    invoke-direct {v5, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    .end local v14    # "checkBuffer":[B
    .end local v16    # "fileCheckBuffer":[B
    :catchall_1
    move-exception v5

    move-object/from16 v20, v21

    .end local v21    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_5
    invoke-static/range {v20 .. v20}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    .end local v20    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "checkBuffer":[B
    .restart local v16    # "fileCheckBuffer":[B
    .restart local v21    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x200

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/xutils/http/loader/FileLoader;->contentLength:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 108
    :try_start_7
    invoke-static/range {v21 .. v21}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    .end local v14    # "checkBuffer":[B
    .end local v16    # "fileCheckBuffer":[B
    .end local v18    # "filePos":J
    .end local v21    # "fis":Ljava/io/FileInputStream;
    :cond_3
    const-wide/16 v8, 0x0

    .line 114
    .local v8, "current":J
    const/16 v17, 0x0

    .line 115
    .local v17, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v5, :cond_5

    .line 116
    move-wide/from16 v8, v26

    .line 117
    new-instance v17, Ljava/io/FileOutputStream;

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 122
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    move-wide/from16 v28, v0

    add-long v6, v28, v8

    .line 123
    .local v6, "total":J
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 124
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v11, "bis":Ljava/io/BufferedInputStream;
    :try_start_8
    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 126
    .end local v12    # "bos":Ljava/io/BufferedOutputStream;
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 127
    new-instance v5, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "download stopped!"

    invoke-direct {v5, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 159
    :catchall_2
    move-exception v5

    move-object v12, v13

    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v11

    .end local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v23, v24

    .end local v24    # "targetFile":Ljava/io/File;
    .restart local v23    # "targetFile":Ljava/io/File;
    goto/16 :goto_0

    .line 104
    .end local v6    # "total":J
    .end local v8    # "current":J
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v23    # "targetFile":Ljava/io/File;
    .restart local v18    # "filePos":J
    .restart local v20    # "fis":Ljava/io/FileInputStream;
    .restart local v24    # "targetFile":Ljava/io/File;
    :cond_4
    :try_start_a
    invoke-static/range {v24 .. v24}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 105
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v10, "need retry"

    invoke-direct {v5, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 108
    :catchall_3
    move-exception v5

    goto :goto_1

    .line 119
    .end local v18    # "filePos":J
    .end local v20    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "current":J
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_b
    new-instance v17, Ljava/io/FileOutputStream;

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 130
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "total":J
    .restart local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :cond_6
    const/16 v5, 0x1000

    :try_start_c
    new-array v0, v5, [B

    move-object/from16 v25, v0

    .line 132
    .local v25, "tmp":[B
    :cond_7
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v22

    .local v22, "len":I
    const/4 v5, -0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_9

    .line 135
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 136
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 137
    new-instance v5, Ljava/io/IOException;

    const-string v10, "parent be deleted!"

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v13, v0, v5, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 141
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v8, v28

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v5, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v5

    if-nez v5, :cond_7

    .line 144
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 145
    new-instance v5, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "download stopped!"

    invoke-direct {v5, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    :cond_9
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v5, :cond_b

    .line 152
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v5}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v23

    .line 155
    .end local v24    # "targetFile":Ljava/io/File;
    .restart local v23    # "targetFile":Ljava/io/File;
    :goto_3
    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v5, :cond_a

    .line 156
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 159
    :cond_a
    invoke-static {v11}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-static {v13}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    return-object v5

    .line 159
    .end local v6    # "total":J
    .end local v8    # "current":J
    .end local v11    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v22    # "len":I
    .end local v25    # "tmp":[B
    .end local v26    # "targetFileLen":J
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_4
    move-exception v5

    goto/16 :goto_0

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v23    # "targetFile":Ljava/io/File;
    .restart local v6    # "total":J
    .restart local v8    # "current":J
    .restart local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "targetFile":Ljava/io/File;
    .restart local v26    # "targetFileLen":J
    :catchall_5
    move-exception v5

    move-object v4, v11

    .end local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v23, v24

    .end local v24    # "targetFile":Ljava/io/File;
    .restart local v23    # "targetFile":Ljava/io/File;
    goto/16 :goto_0

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v22    # "len":I
    .restart local v25    # "tmp":[B
    :catchall_6
    move-exception v5

    move-object v12, v13

    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v11

    .end local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "bos":Ljava/io/BufferedOutputStream;
    .end local v23    # "targetFile":Ljava/io/File;
    .restart local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v24    # "targetFile":Ljava/io/File;
    :cond_b
    move-object/from16 v23, v24

    .end local v24    # "targetFile":Ljava/io/File;
    .restart local v23    # "targetFile":Ljava/io/File;
    goto :goto_3
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;
    .locals 18
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v12, 0x0

    .line 169
    .local v12, "processLock":Lorg/xutils/common/util/ProcessLock;
    const/4 v13, 0x0

    .line 173
    .local v13, "result":Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 174
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "download stopped!"

    invoke-direct {v3, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xutils/ex/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :catch_0
    move-exception v9

    .line 241
    .local v9, "httpException":Lorg/xutils/ex/HttpException;
    :try_start_1
    invoke-virtual {v9}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v3

    const/16 v4, 0x1a0

    if-ne v3, v4, :cond_f

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v3, :cond_d

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v3}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object v13

    .line 248
    :goto_0
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 249
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v3, :cond_0

    .line 250
    invoke-static/range {p1 .. p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 252
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 261
    invoke-static {v12}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 264
    .end local v9    # "httpException":Lorg/xutils/ex/HttpException;
    :goto_1
    return-object v13

    .line 182
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lorg/xutils/http/loader/FileLoader;->initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V

    .line 187
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "download stopped!"

    invoke-direct {v3, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lorg/xutils/ex/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :catchall_0
    move-exception v3

    invoke-static {v12}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 184
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    goto :goto_2

    .line 192
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_lock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v12

    .line 193
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v3

    if-nez v3, :cond_5

    .line 194
    :cond_4
    new-instance v3, Lorg/xutils/ex/FileLockedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 199
    const-wide/16 v14, 0x0

    .line 200
    .local v14, "range":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v3, :cond_6

    .line 201
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v17, "tempFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 203
    .local v10, "fileLen":J
    const-wide/16 v4, 0x200

    cmp-long v3, v10, v4

    if-gtz v3, :cond_7

    .line 204
    invoke-static/range {v17 .. v17}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 205
    const-wide/16 v14, 0x0

    .line 211
    .end local v10    # "fileLen":J
    .end local v17    # "tempFile":Ljava/io/File;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    const-string v4, "RANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v3

    if-nez v3, :cond_8

    .line 215
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "download stopped!"

    invoke-direct {v3, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    .restart local v10    # "fileLen":J
    .restart local v17    # "tempFile":Ljava/io/File;
    :cond_7
    const-wide/16 v4, 0x200

    sub-long v14, v10, v4

    goto :goto_3

    .line 218
    .end local v10    # "fileLen":J
    .end local v17    # "tempFile":Ljava/io/File;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 220
    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->getContentLength()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    .line 221
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v3, :cond_9

    .line 222
    invoke-static/range {p1 .. p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 224
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v3, :cond_a

    .line 225
    invoke-static/range {p1 .. p1}, Lorg/xutils/http/loader/FileLoader;->isSupportRange(Lorg/xutils/http/request/UriRequest;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 228
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v3

    if-nez v3, :cond_b

    .line 229
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "download stopped!"

    invoke-direct {v3, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v3, :cond_c

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v3}, Lorg/xutils/cache/DiskCacheFile;->getCacheEntity()Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v2

    .line 234
    .local v2, "entity":Lorg/xutils/cache/DiskCacheEntity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setEtag(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->getExpiration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/xutils/cache/DiskCacheEntity;->setExpires(J)V

    .line 237
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->getLastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastModify(Ljava/util/Date;)V

    .line 239
    .end local v2    # "entity":Lorg/xutils/cache/DiskCacheEntity;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/xutils/http/loader/FileLoader;->load(Ljava/io/InputStream;)Ljava/io/File;
    :try_end_3
    .catch Lorg/xutils/ex/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 261
    invoke-static {v12}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 245
    .end local v14    # "range":J
    .restart local v9    # "httpException":Lorg/xutils/ex/HttpException;
    :cond_d
    :try_start_4
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v13    # "result":Ljava/io/File;
    .local v16, "result":Ljava/io/File;
    move-object/from16 v13, v16

    .end local v16    # "result":Ljava/io/File;
    .restart local v13    # "result":Ljava/io/File;
    goto/16 :goto_0

    .line 254
    :cond_e
    invoke-static {v13}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 255
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache file not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_f
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public bridge synthetic load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->load(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;
    .locals 2
    .param p1, "cacheEntity"    # Lorg/xutils/cache/DiskCacheEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    .line 347
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 1
    .param p1, "params"    # Lorg/xutils/http/RequestParams;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 63
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoResume()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 64
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoRename()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    .line 66
    :cond_0
    return-void
.end method
