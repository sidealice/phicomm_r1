.class public Lcom/unisound/vui/common/media/OkHttpDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final cacheControl:Lokhttp3/CacheControl;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private final contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/unisound/vui/common/media/OkHttpDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private response:Lokhttp3/Response;

.field private responseByteStream:Ljava/io/InputStream;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/unisound/vui/common/media/OkHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "contentTypePredicate":Lcom/google/android/exoplayer2/util/Predicate;, "Lcom/google/android/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unisound/vui/common/media/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 7
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/unisound/vui/common/media/OkHttpDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "contentTypePredicate":Lcom/google/android/exoplayer2/util/Predicate;, "Lcom/google/android/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/unisound/vui/common/media/OkHttpDataSource;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/unisound/vui/common/media/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p5, "cacheControl"    # Lokhttp3/CacheControl;
    .param p6, "defaultRequestProperties"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/unisound/vui/common/media/OkHttpDataSource;",
            ">;",
            "Lokhttp3/CacheControl;",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "contentTypePredicate":Lcom/google/android/exoplayer2/util/Predicate;, "Lcom/google/android/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/unisound/vui/common/media/OkHttpDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    iput-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->callFactory:Lokhttp3/Call$Factory;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->userAgent:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    iput-object p4, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iput-object p5, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->cacheControl:Lokhttp3/CacheControl;

    iput-object p6, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    iput-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    iput-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;

    return-void
.end method

.method private makeRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lokhttp3/Request;
    .locals 12
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .prologue
    const-wide/16 v10, -0x1

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v6

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v7

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->cacheControl:Lokhttp3/CacheControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->cacheControl:Lokhttp3/CacheControl;

    invoke-virtual {v7, v0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    cmp-long v0, v4, v10

    if-eqz v0, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, v4, v10

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "Range"

    invoke-virtual {v7, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_5
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-nez v6, :cond_6

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {v7, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_6
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v7, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :cond_7
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private readInternal([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, -0x1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    iget-wide v4, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesRead:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    int-to-long v4, p3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    :cond_2
    iget-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesRead:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesRead:J

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private skipInternal()V
    .locals 6

    iget-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesSkipped:J

    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToSkip:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unisound/vui/common/media/OkHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesSkipped:J

    iget-wide v4, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToSkip:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToSkip:J

    iget-wide v4, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesSkipped:J

    sub-long/2addr v2, v4

    array-length v1, v0

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesSkipped:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesSkipped:J

    iget-object v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0, v1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/unisound/vui/common/media/OkHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bytesRead()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesRead:J

    return-wide v0
.end method

.method protected final bytesRemaining()J
    .locals 4

    iget-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected final bytesSkipped()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesSkipped:J

    return-wide v0
.end method

.method public clearAllRequestProperties()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->opened:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->opened:Z

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/unisound/vui/common/media/OkHttpDataSource;->closeConnectionQuietly()V

    :cond_1
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 8
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesRead:J

    iput-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesSkipped:J

    invoke-direct {p0, p1}, Lcom/unisound/vui/common/media/OkHttpDataSource;->makeRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lokhttp3/Request;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->callFactory:Lokhttp3/Call$Factory;

    invoke-interface {v1, v0}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    iget-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    iget-object v6, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v6}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisound/vui/common/media/OkHttpDataSource;->closeConnectionQuietly()V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/16 v0, 0x1a0

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    throw v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v6, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    invoke-interface {v6, v0}, Lcom/google/android/exoplayer2/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/unisound/vui/common/media/OkHttpDataSource;->closeConnectionQuietly()V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_5

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    :goto_1
    iput-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToSkip:J

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    :goto_2
    iput-boolean v7, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->opened:Z

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    :cond_4
    iget-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    return-wide v0

    :cond_5
    move-wide v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToSkip:J

    sub-long/2addr v0, v2

    :goto_3
    iput-wide v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->bytesToRead:J

    goto :goto_2

    :cond_7
    move-wide v0, v4

    goto :goto_3
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/common/media/OkHttpDataSource;->skipInternal()V

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/vui/common/media/OkHttpDataSource;->readInternal([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/common/media/OkHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
