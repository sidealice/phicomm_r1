.class Lorg/xutils/http/body/MultipartBody$CounterOutputStream;
.super Ljava/io/OutputStream;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/body/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/http/body/MultipartBody;

.field final total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/xutils/http/body/MultipartBody;)V
    .locals 4

    .prologue
    .line 232
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->this$0:Lorg/xutils/http/body/MultipartBody;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 233
    return-void
.end method


# virtual methods
.method public addFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 236
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0
.end method

.method public addStream(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const-wide/16 v4, -0x1

    .line 241
    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 248
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {p1}, Lorg/xutils/http/body/InputStreamBody;->getInputStreamLength(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 243
    .local v0, "length":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 244
    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0

    .line 246
    :cond_1
    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0
.end method

.method public write([B)V
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v1, p1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0
.end method
