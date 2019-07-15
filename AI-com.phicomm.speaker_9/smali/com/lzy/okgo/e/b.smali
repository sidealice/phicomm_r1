.class public abstract Lcom/lzy/okgo/e/b;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/lzy/okgo/e/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/lzy/okgo/b/a;

.field private b:Lcom/lzy/okgo/c/a;

.field private c:Lokhttp3/Request;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/Object;

.field protected j:J

.field protected k:J

.field protected l:J

.field protected m:I

.field protected n:Lcom/lzy/okgo/cache/CacheMode;

.field protected o:Ljava/lang/String;

.field protected p:J

.field protected q:Lcom/lzy/okgo/model/HttpParams;

.field protected r:Lcom/lzy/okgo/model/HttpHeaders;

.field protected s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 50
    iput-wide v0, p0, Lcom/lzy/okgo/e/b;->p:J

    .line 51
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/e/b;->q:Lcom/lzy/okgo/model/HttpParams;

    .line 52
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/e/b;->r:Lcom/lzy/okgo/model/HttpHeaders;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/e/b;->s:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->f:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->h:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object p1

    .line 64
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/e/b;

    .line 67
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/e/b;

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->h()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/e/b;->q:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {p1}, Lcom/lzy/okgo/a;->h()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->i()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/e/b;->r:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {p1}, Lcom/lzy/okgo/a;->i()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->f()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/lzy/okgo/a;->f()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/e/b;->n:Lcom/lzy/okgo/cache/CacheMode;

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/e/b;->p:J

    .line 76
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->e()I

    move-result p1

    iput p1, p0, Lcom/lzy/okgo/e/b;->m:I

    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/e/b;)Lcom/lzy/okgo/b/a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/lzy/okgo/e/b;->a:Lcom/lzy/okgo/b/a;

    return-object p0
.end method


# virtual methods
.method public a(J)Lcom/lzy/okgo/e/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 125
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/e/b;->p:J

    return-object p0
.end method

.method public a(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/e/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->n:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public a(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->r:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public a(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->q:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/lzy/okgo/e/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->r:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 6

    .line 340
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->c:Lokhttp3/Request;

    .line 341
    iget-wide v0, p0, Lcom/lzy/okgo/e/b;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/lzy/okgo/e/b;->k:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/lzy/okgo/e/b;->l:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/e/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1

    .line 344
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 345
    iget-wide v4, p0, Lcom/lzy/okgo/e/b;->j:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    iget-wide v4, p0, Lcom/lzy/okgo/e/b;->j:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 346
    :cond_1
    iget-wide v4, p0, Lcom/lzy/okgo/e/b;->k:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    iget-wide v4, p0, Lcom/lzy/okgo/e/b;->k:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 347
    :cond_2
    iget-wide v4, p0, Lcom/lzy/okgo/e/b;->l:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    iget-wide v1, p0, Lcom/lzy/okgo/e/b;->l:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/lzy/okgo/e/b;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/lzy/okgo/e/b;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 350
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 353
    :cond_4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Lokhttp3/RequestBody;
.end method

.method public a(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .locals 1

    .line 320
    new-instance v0, Lcom/lzy/okgo/e/h;

    invoke-direct {v0, p1}, Lcom/lzy/okgo/e/h;-><init>(Lokhttp3/RequestBody;)V

    .line 321
    new-instance p1, Lcom/lzy/okgo/e/b$1;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/e/b$1;-><init>(Lcom/lzy/okgo/e/b;)V

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/e/h;->a(Lcom/lzy/okgo/e/h$b;)V

    return-object v0
.end method

.method public a(Lcom/lzy/okgo/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/b/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->a:Lcom/lzy/okgo/b/a;

    .line 386
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->b:Lcom/lzy/okgo/c/a;

    .line 387
    new-instance v0, Lcom/lzy/okgo/a/a;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/a/a;-><init>(Lcom/lzy/okgo/e/b;)V

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/b/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/lzy/okgo/e/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->q:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public abstract b(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method public b(Lcom/lzy/okgo/cache/CacheMode;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->n:Lcom/lzy/okgo/cache/CacheMode;

    return-void
.end method

.method public c()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->r:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/lzy/okgo/e/b;->o:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->n:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lcom/lzy/okgo/e/b;->p:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/lzy/okgo/e/b;->m:I

    return v0
.end method

.method public i()Lcom/lzy/okgo/c/a;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/lzy/okgo/e/b;->b:Lcom/lzy/okgo/c/a;

    return-object v0
.end method
