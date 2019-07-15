.class Lcom/lzy/okgo/a/a$3;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/a/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lokhttp3/Call;

.field final synthetic d:Lcom/lzy/okgo/cache/CacheMode;

.field final synthetic e:Lokhttp3/Response;

.field final synthetic f:Lcom/lzy/okgo/a/a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/a/a;ZLjava/lang/Object;Lokhttp3/Call;Lcom/lzy/okgo/cache/CacheMode;Lokhttp3/Response;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/lzy/okgo/a/a$3;->f:Lcom/lzy/okgo/a/a;

    iput-boolean p2, p0, Lcom/lzy/okgo/a/a$3;->a:Z

    iput-object p3, p0, Lcom/lzy/okgo/a/a$3;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/lzy/okgo/a/a$3;->c:Lokhttp3/Call;

    iput-object p5, p0, Lcom/lzy/okgo/a/a$3;->d:Lcom/lzy/okgo/cache/CacheMode;

    iput-object p6, p0, Lcom/lzy/okgo/a/a$3;->e:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 241
    iget-boolean v0, p0, Lcom/lzy/okgo/a/a$3;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/lzy/okgo/a/a$3;->f:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->d(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/lzy/okgo/a/a$3;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/lzy/okgo/a/a$3;->c:Lokhttp3/Call;

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okgo/b/a;->onCacheSuccess(Ljava/lang/Object;Lokhttp3/Call;)V

    .line 243
    iget-object v0, p0, Lcom/lzy/okgo/a/a$3;->d:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/a/a$3;->d:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/a/a$3;->d:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v0, v2, :cond_2

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/a/a$3;->f:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->d(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/lzy/okgo/a/a$3;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/lzy/okgo/b/a;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/a/a$3;->f:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->d(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/lzy/okgo/a/a$3;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/lzy/okgo/a/a$3;->c:Lokhttp3/Call;

    iget-object v4, p0, Lcom/lzy/okgo/a/a$3;->e:Lokhttp3/Response;

    invoke-virtual {v0, v2, v3, v4}, Lcom/lzy/okgo/b/a;->onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    .line 248
    iget-object v0, p0, Lcom/lzy/okgo/a/a$3;->f:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->d(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/lzy/okgo/a/a$3;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/lzy/okgo/b/a;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method
