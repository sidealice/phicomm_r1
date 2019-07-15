.class public Lcom/unisound/vui/common/network/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# instance fields
.field private final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/common/network/c;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static a(Lcom/android/volley/Request;)Lokhttp3/RequestBody;
    .locals 2

    invoke-virtual {p0}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lokhttp3/Response;)Lorg/apache/http/HttpEntity;
    .locals 4

    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static a(Lokhttp3/Protocol;)Lorg/apache/http/ProtocolVersion;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/unisound/vui/common/network/c$1;->a:[I

    invoke-virtual {p0}, Lokhttp3/Protocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unknown protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "SPDY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lokhttp3/Request$Builder;Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/unisound/vui/common/network/c;->a(Lcom/android/volley/Request;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/unisound/vui/common/network/c;->a(Lcom/android/volley/Request;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_6
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_7
    const-string v0, "TRACE"

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_8
    invoke-static {p1}, Lcom/unisound/vui/common/network/c;->a(Lcom/android/volley/Request;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/vui/common/network/c;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    int-to-long v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    int-to-long v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_1
    invoke-static {v3, p1}, Lcom/unisound/vui/common/network/c;->a(Lokhttp3/Request$Builder;Lcom/android/volley/Request;)V

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/common/network/c;->a(Lokhttp3/Protocol;)Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v2, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    invoke-static {v0}, Lcom/unisound/vui/common/network/c;->a(Lokhttp3/Response;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method
