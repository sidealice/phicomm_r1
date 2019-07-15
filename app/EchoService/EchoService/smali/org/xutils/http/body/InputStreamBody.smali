.class public Lorg/xutils/http/body/InputStreamBody;
.super Ljava/lang/Object;
.source "InputStreamBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# instance fields
.field private callBackHandler:Lorg/xutils/http/ProgressHandler;

.field private content:Ljava/io/InputStream;

.field private contentType:Ljava/lang/String;

.field private current:J

.field private final total:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    .line 35
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    .line 36
    iput-object p2, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lorg/xutils/http/body/InputStreamBody;->getInputStreamLength(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    .line 38
    return-void
.end method

.method public static getInputStreamLength(Ljava/io/InputStream;)J
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 88
    :try_start_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 94
    :goto_0
    return-wide v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0
    .param p1, "progressHandler"    # Lorg/xutils/http/ProgressHandler;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    .line 43
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 62
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "upload stopped!"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    const/16 v1, 0x400

    new-array v0, v1, [B

    .line 68
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 69
    .local v7, "len":I
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    int-to-long v4, v7

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    .line 72
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "upload stopped!"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 76
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 78
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_3
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    return-void
.end method
