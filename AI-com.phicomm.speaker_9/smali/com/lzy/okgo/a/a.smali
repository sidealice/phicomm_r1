.class public Lcom/lzy/okgo/a/a;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/lzy/okgo/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Z

.field private c:Lcom/lzy/okgo/e/b;

.field private d:Lokhttp3/Call;

.field private e:Lcom/lzy/okgo/cache/CacheEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/lzy/okgo/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/b/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/e/b;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/a/a;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/lzy/okgo/a/a;->g:I

    return p0
.end method

.method static synthetic a(Lcom/lzy/okgo/a/a;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/lzy/okgo/a/a;->a(Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Lokhttp3/Response;)Lcom/lzy/okgo/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v0}, Lcom/lzy/okgo/e/b;->i()Lcom/lzy/okgo/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lzy/okgo/c/a;->convertSuccess(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    invoke-static {v0, p1}, Lcom/lzy/okgo/model/a;->a(Ljava/lang/Object;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/lzy/okgo/a/a;Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lzy/okgo/a/a;->a(Lokhttp3/Headers;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/a/a;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lzy/okgo/a/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/a/a;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lzy/okgo/a/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v0}, Lcom/lzy/okgo/e/b;->e()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_0

    return-void

    .line 183
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v0}, Lcom/lzy/okgo/e/b;->e()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/lzy/okgo/f/a;->a(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    if-nez p1, :cond_2

    .line 188
    sget-object p1, Lcom/lzy/okgo/cache/CacheManager;->INSTANCE:Lcom/lzy/okgo/cache/CacheManager;

    iget-object p2, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {p2}, Lcom/lzy/okgo/e/b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/cache/CacheManager;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 191
    :cond_2
    sget-object p2, Lcom/lzy/okgo/cache/CacheManager;->INSTANCE:Lcom/lzy/okgo/cache/CacheManager;

    iget-object v0, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v0}, Lcom/lzy/okgo/e/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/lzy/okgo/cache/CacheManager;->replace(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;

    :goto_0
    return-void
.end method

.method private a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v0}, Lcom/lzy/okgo/e/b;->e()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v6

    .line 238
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/a;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/lzy/okgo/a/a$3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lzy/okgo/a/a$3;-><init>(Lcom/lzy/okgo/a/a;ZLjava/lang/Object;Lokhttp3/Call;Lcom/lzy/okgo/cache/CacheMode;Lokhttp3/Response;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 10

    .line 198
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v0}, Lcom/lzy/okgo/e/b;->e()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/a;->c()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/lzy/okgo/a/a$2;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/lzy/okgo/a/a$2;-><init>(Lcom/lzy/okgo/a/a;ZLokhttp3/Call;Ljava/lang/Exception;Lcom/lzy/okgo/cache/CacheMode;Lokhttp3/Response;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p1, :cond_3

    .line 218
    sget-object p1, Lcom/lzy/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v0, p1, :cond_3

    .line 219
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->isExpire()Z

    move-result p1

    if-nez p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/lzy/okgo/a/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    .line 224
    invoke-static {p1}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object p1

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/lzy/okgo/a/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    .line 229
    invoke-static {p1}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object p1

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/lzy/okgo/a/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/e/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    return-object p0
.end method

.method static synthetic c(Lcom/lzy/okgo/a/a;)I
    .locals 2

    .line 34
    iget v0, p0, Lcom/lzy/okgo/a/a;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lzy/okgo/a/a;->g:I

    return v0
.end method

.method static synthetic d(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/b/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lzy/okgo/a/a;->f:Lcom/lzy/okgo/b/a;

    return-object p0
.end method

.method static synthetic e(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/lzy/okgo/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/lzy/okgo/a/a;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/a/a;-><init>(Lcom/lzy/okgo/e/b;)V

    return-object v0
.end method

.method public a(Lcom/lzy/okgo/b/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/b/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/lzy/okgo/a/a;->b:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/lzy/okgo/a/a;->b:Z

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iput-object p1, p0, Lcom/lzy/okgo/a/a;->f:Lcom/lzy/okgo/b/a;

    .line 57
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->f:Lcom/lzy/okgo/b/a;

    if-nez p1, :cond_1

    new-instance p1, Lcom/lzy/okgo/b/b;

    invoke-direct {p1}, Lcom/lzy/okgo/b/b;-><init>()V

    iput-object p1, p0, Lcom/lzy/okgo/a/a;->f:Lcom/lzy/okgo/b/a;

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->f:Lcom/lzy/okgo/b/a;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {p1, v1}, Lcom/lzy/okgo/b/a;->onBefore(Lcom/lzy/okgo/e/b;)V

    .line 62
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {p1}, Lcom/lzy/okgo/e/b;->f()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v2}, Lcom/lzy/okgo/e/b;->b()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v2

    iget-object v2, v2, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/lzy/okgo/f/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lzy/okgo/e/b;->c(Ljava/lang/String;)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {p1}, Lcom/lzy/okgo/e/b;->e()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {p1, v1}, Lcom/lzy/okgo/e/b;->b(Lcom/lzy/okgo/cache/CacheMode;)V

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {p1}, Lcom/lzy/okgo/e/b;->e()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object p1

    .line 68
    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    if-eq p1, v1, :cond_5

    .line 70
    sget-object v1, Lcom/lzy/okgo/cache/CacheManager;->INSTANCE:Lcom/lzy/okgo/cache/CacheManager;

    iget-object v2, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v2}, Lcom/lzy/okgo/e/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/cache/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    .line 72
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    iget-object v2, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v2}, Lcom/lzy/okgo/e/b;->g()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lzy/okgo/cache/CacheEntity;->checkExpire(Lcom/lzy/okgo/cache/CacheMode;JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/cache/CacheEntity;->setExpire(Z)V

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    iget-object v2, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-static {v1, v2, p1}, Lcom/lzy/okgo/f/a;->a(Lcom/lzy/okgo/e/b;Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/cache/CacheMode;)V

    .line 78
    :cond_5
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->a()Lokhttp3/RequestBody;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    iget-object v3, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v3, v1}, Lcom/lzy/okgo/e/b;->a(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lzy/okgo/e/b;->b(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/lzy/okgo/a/a;->c:Lcom/lzy/okgo/e/b;

    invoke-virtual {v2, v1}, Lcom/lzy/okgo/e/b;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    .line 82
    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_9

    .line 84
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_8

    .line 85
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 86
    iget-object v3, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v3}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v3

    if-eqz v1, :cond_7

    if-nez v3, :cond_6

    goto :goto_0

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/lzy/okgo/a/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    return-void

    .line 89
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lzy/okgo/a/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_2

    .line 95
    :cond_8
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lzy/okgo/a/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_2

    .line 97
    :cond_9
    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    if-ne p1, v1, :cond_d

    .line 99
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_c

    .line 100
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget-object v3, p0, Lcom/lzy/okgo/a/a;->e:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v3}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v3

    if-eqz v1, :cond_b

    if-nez v3, :cond_a

    goto :goto_1

    .line 106
    :cond_a
    iget-object v3, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/lzy/okgo/a/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    goto :goto_2

    .line 104
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lzy/okgo/a/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_2

    .line 109
    :cond_c
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lzy/okgo/a/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 113
    :cond_d
    :goto_2
    iget-boolean v0, p0, Lcom/lzy/okgo/a/a;->a:Z

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_e
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/lzy/okgo/a/a;->g:I

    .line 117
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->d:Lokhttp3/Call;

    new-instance v1, Lcom/lzy/okgo/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/lzy/okgo/a/a$1;-><init>(Lcom/lzy/okgo/a/a;Lcom/lzy/okgo/cache/CacheMode;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/lzy/okgo/a/a;->a()Lcom/lzy/okgo/a/b;

    move-result-object v0

    return-object v0
.end method
