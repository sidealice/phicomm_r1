.class public Lcom/lzy/okgo/e/g;
.super Lcom/lzy/okgo/e/a;
.source "PostRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/e/a<",
        "Lcom/lzy/okgo/e/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/lzy/okgo/e/a;-><init>(Ljava/lang/String;)V

    const-string p1, "POST"

    .line 25
    iput-object p1, p0, Lcom/lzy/okgo/e/g;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 4

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/e/g;->r:Lcom/lzy/okgo/model/HttpHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/e/g;->r:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {v0}, Lcom/lzy/okgo/f/b;->a(Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okgo/e/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okgo/e/g;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
