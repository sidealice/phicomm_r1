.class Lcom/lzy/okgo/a/a$1;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/cache/CacheMode;

.field final synthetic b:Lcom/lzy/okgo/a/a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/a/a;Lcom/lzy/okgo/cache/CacheMode;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    iput-object p2, p0, Lcom/lzy/okgo/a/a$1;->a:Lcom/lzy/okgo/cache/CacheMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 120
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;)I

    move-result v0

    iget-object v1, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v1}, Lcom/lzy/okgo/a/a;->b(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->h()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    iget-object p2, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {p2}, Lcom/lzy/okgo/a/a;->c(Lcom/lzy/okgo/a/a;)I

    .line 123
    iget-object p2, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {p2}, Lcom/lzy/okgo/a/a;->b(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/e/b;

    move-result-object p2

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lzy/okgo/e/b;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 124
    invoke-interface {p1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->d(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/b/a;->parseError(Lokhttp3/Call;Ljava/lang/Exception;)V

    .line 128
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/lzy/okgo/a/a$1;->a:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v1, v2, :cond_3

    .line 139
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->e(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    const-string v2, "\u670d\u52a1\u5668\u54cd\u5e94\u7801304\uff0c\u4f46\u662f\u5ba2\u6237\u7aef\u6ca1\u6709\u7f13\u5b58\uff01"

    invoke-static {v2}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v0}, Lcom/lzy/okgo/a/a;->e(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v2}, Lcom/lzy/okgo/a/a;->e(Lcom/lzy/okgo/a/a;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v2, v1, v0, p1, p2}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    goto :goto_1

    .line 146
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    const-string v2, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v2}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x194

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_4

    goto :goto_3

    .line 160
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v0, p2}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/lzy/okgo/model/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;Lokhttp3/Headers;Ljava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v1, v2, v0, p1, p2}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    :goto_2
    return-void

    .line 155
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/lzy/okgo/a/a$1;->b:Lcom/lzy/okgo/a/a;

    const-string v1, "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38!"

    invoke-static {v1}, Lcom/lzy/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-static {v0, v2, p1, p2, v1}, Lcom/lzy/okgo/a/a;->a(Lcom/lzy/okgo/a/a;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    return-void
.end method
