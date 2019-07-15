.class public abstract Lcom/lzy/okgo/e/a;
.super Lcom/lzy/okgo/e/b;
.source "BaseBodyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/lzy/okgo/e/a;",
        ">",
        "Lcom/lzy/okgo/e/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected a:Lokhttp3/MediaType;

.field protected b:Ljava/lang/String;

.field protected c:[B

.field protected d:Z

.field protected e:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/lzy/okgo/e/b;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/lzy/okgo/e/a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/lzy/okgo/e/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/lzy/okgo/e/a;->b:Ljava/lang/String;

    .line 111
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/e/a;->a:Lokhttp3/MediaType;

    return-object p0
.end method

.method public a()Lokhttp3/RequestBody;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/lzy/okgo/e/a;->e:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/e/a;->e:Lokhttp3/RequestBody;

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/e/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okgo/e/a;->a:Lokhttp3/MediaType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okgo/e/a;->a:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/e/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/e/a;->c:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/e/a;->a:Lokhttp3/MediaType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/e/a;->a:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/e/a;->c:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/e/a;->q:Lcom/lzy/okgo/model/HttpParams;

    iget-boolean v1, p0, Lcom/lzy/okgo/e/a;->d:Z

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->a(Lcom/lzy/okgo/model/HttpParams;Z)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
