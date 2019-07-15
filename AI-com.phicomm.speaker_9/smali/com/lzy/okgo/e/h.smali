.class public Lcom/lzy/okgo/e/h;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/e/h$b;,
        Lcom/lzy/okgo/e/h$a;
    }
.end annotation


# instance fields
.field protected a:Lokhttp3/RequestBody;

.field protected b:Lcom/lzy/okgo/e/h$b;

.field protected c:Lcom/lzy/okgo/e/h$a;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lzy/okgo/e/h;->a:Lokhttp3/RequestBody;

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/e/h$b;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/lzy/okgo/e/h;->b:Lcom/lzy/okgo/e/h$b;

    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/e/h;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/lzy/okgo/e/h;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/lzy/okgo/e/h$a;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/e/h$a;-><init>(Lcom/lzy/okgo/e/h;Lokio/Sink;)V

    iput-object v0, p0, Lcom/lzy/okgo/e/h;->c:Lcom/lzy/okgo/e/h$a;

    .line 60
    iget-object p1, p0, Lcom/lzy/okgo/e/h;->c:Lcom/lzy/okgo/e/h$a;

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/lzy/okgo/e/h;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 62
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
