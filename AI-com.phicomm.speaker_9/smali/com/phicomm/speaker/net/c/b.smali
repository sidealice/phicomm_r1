.class public Lcom/phicomm/speaker/net/c/b;
.super Lcom/phicomm/speaker/net/c/a;
.source "DeleteRequest.java"


# instance fields
.field private d:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/phicomm/speaker/net/c/a;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/net/c/b;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/net/c/b;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 21
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/net/c/b;->c:Lokhttp3/Request$Builder;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/net/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Lokhttp3/Request;
    .locals 2

    const-string v0, "application/json; charset=utf-8"

    .line 42
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/phicomm/speaker/net/c/b;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/phicomm/speaker/net/c/b;->c:Lokhttp3/Request$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/b;
    .locals 1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/b;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
