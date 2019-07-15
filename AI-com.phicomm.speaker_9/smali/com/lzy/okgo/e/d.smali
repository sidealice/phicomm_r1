.class public Lcom/lzy/okgo/e/d;
.super Lcom/lzy/okgo/e/b;
.source "GetRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/e/b<",
        "Lcom/lzy/okgo/e/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/lzy/okgo/e/b;-><init>(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 21
    iput-object p1, p0, Lcom/lzy/okgo/e/d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/RequestBody;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 2

    .line 31
    iget-object p1, p0, Lcom/lzy/okgo/e/d;->r:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {p1}, Lcom/lzy/okgo/f/b;->a(Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/lzy/okgo/e/d;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzy/okgo/e/d;->q:Lcom/lzy/okgo/model/HttpParams;

    iget-object v1, v1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/e/d;->f:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okgo/e/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okgo/e/d;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
