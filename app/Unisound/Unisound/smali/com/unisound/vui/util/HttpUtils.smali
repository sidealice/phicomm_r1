.class public Lcom/unisound/vui/util/HttpUtils;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:B = 0x1et

.field private static final DEFAULT_HTTP_TAG:Ljava/lang/String; = "defaultHttpTag"

.field private static final DEFAULT_READ_TIMEOUT:B = 0x1et

.field private static final DEFAULT_WRITE_TIMEOUT:B = 0x1et

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_JSON:Lokhttp3/MediaType;

.field public static final TYPE_STREAM:Lokhttp3/MediaType;

.field private static sHttpUtils:Lcom/unisound/vui/util/HttpUtils;


# instance fields
.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/util/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/HttpUtils;->TAG:Ljava/lang/String;

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/HttpUtils;->TYPE_JSON:Lokhttp3/MediaType;

    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/HttpUtils;->TYPE_STREAM:Lokhttp3/MediaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x1e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getInstance()Lcom/unisound/vui/util/HttpUtils;
    .locals 2

    sget-object v0, Lcom/unisound/vui/util/HttpUtils;->sHttpUtils:Lcom/unisound/vui/util/HttpUtils;

    if-nez v0, :cond_1

    const-class v1, Lcom/unisound/vui/util/HttpUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/util/HttpUtils;->sHttpUtils:Lcom/unisound/vui/util/HttpUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/util/HttpUtils;

    invoke-direct {v0}, Lcom/unisound/vui/util/HttpUtils;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/HttpUtils;->sHttpUtils:Lcom/unisound/vui/util/HttpUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unisound/vui/util/HttpUtils;->sHttpUtils:Lcom/unisound/vui/util/HttpUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isResponseCorrect(Lokhttp3/Response;)Z
    .locals 3
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string p1, "defaultHttpTag"

    :cond_0
    const-class v1, Lcom/unisound/vui/util/HttpUtils;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/unisound/vui/util/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getSync(Ljava/lang/String;)Lokhttp3/Response;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v0, "defaultHttpTag"

    invoke-virtual {p0, v0, p1}, Lcom/unisound/vui/util/HttpUtils;->getSync(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSync(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/unisound/vui/util/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unisound/vui/util/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http get error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postSync(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonParams"    # Ljava/lang/String;

    .prologue
    const-string v0, "defaultHttpTag"

    invoke-virtual {p0, v0, p1, p2}, Lcom/unisound/vui/util/HttpUtils;->postSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public postSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonParams"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/HttpUtils;->TYPE_JSON:Lokhttp3/MediaType;

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/util/HttpUtils;->postSync(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public postSync(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unisound/vui/util/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http post error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
