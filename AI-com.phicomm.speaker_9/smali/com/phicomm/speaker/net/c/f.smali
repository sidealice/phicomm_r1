.class public Lcom/phicomm/speaker/net/c/f;
.super Lcom/phicomm/speaker/net/c/a;
.source "UploadRequest.java"


# instance fields
.field private d:Lokhttp3/MultipartBody$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/net/c/a;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/phicomm/speaker/net/c/f;->a:Ljava/lang/String;

    const-string p1, "application/octet-stream"

    .line 24
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string v0, "xx--------------------------------------------------------------xx"

    .line 26
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1, v0}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    const-string v1, "file"

    .line 27
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/net/c/f;->d:Lokhttp3/MultipartBody$Builder;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/net/c/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/f;

    move-result-object p1

    return-object p1
.end method

.method public a()Lokhttp3/Request;
    .locals 4

    .line 41
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/phicomm/speaker/net/c/f;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/net/c/f;->d:Lokhttp3/MultipartBody$Builder;

    .line 43
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 44
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Authorization"

    .line 45
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v2

    const-string v3, "ACCESS_TOKEN"

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/net/c/f;->c:Lokhttp3/Request$Builder;

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/f;->c:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/f;
    .locals 1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/f;->d:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p0
.end method
