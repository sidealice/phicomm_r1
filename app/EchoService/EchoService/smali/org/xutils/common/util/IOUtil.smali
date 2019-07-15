.class public Lorg/xutils/common/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "ignored":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "ignored":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    instance-of v4, p0, Ljava/io/BufferedInputStream;

    if-nez v4, :cond_0

    .line 111
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v1, "in":Ljava/io/InputStream;
    move-object p0, v1

    .line 113
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    instance-of v4, p1, Ljava/io/BufferedOutputStream;

    if-nez v4, :cond_1

    .line 114
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p1    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    move-object p1, v3

    .line 116
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_1
    const/4 v2, 0x0

    .line 117
    .local v2, "len":I
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 118
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 119
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 122
    return-void
.end method

.method public static deleteFileOrDir(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 125
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    const/4 v2, 0x1

    .line 137
    :goto_0
    return v2

    .line 128
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 132
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 133
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 134
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    instance-of v5, p0, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 46
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v1, "in":Ljava/io/InputStream;
    move-object p0, v1

    .line 48
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    .line 50
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 53
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 54
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 56
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 58
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v5

    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public static readBytes(Ljava/io/InputStream;JI)[B
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "skip"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "result":[B
    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .local v2, "skipped":J
    :goto_0
    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 67
    sub-long/2addr p1, v2

    goto :goto_0

    .line 70
    .end local v2    # "skipped":J
    :cond_0
    new-array v1, p3, [B

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_1

    .line 72
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1
    return-object v1
.end method

.method public static readStr(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p1, "UTF-8"

    .line 84
    :cond_0
    instance-of v5, p0, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_1

    .line 85
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v1, "in":Ljava/io/InputStream;
    move-object p0, v1

    .line 87
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    .local v3, "reader":Ljava/io/Reader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 91
    .local v0, "buf":[C
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, "len":I
    if-ltz v2, :cond_2

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static writeStr(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lorg/xutils/common/util/IOUtil;->writeStr(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static writeStr(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "UTF-8"

    .line 104
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 105
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 107
    return-void
.end method
