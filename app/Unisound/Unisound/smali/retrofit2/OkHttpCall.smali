.class final Lretrofit2/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;,
        Lretrofit2/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile canceled:Z

.field private creationFailure:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private executed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private rawCall:Lokhttp3/Call;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final serviceMethod:Lretrofit2/ServiceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/ServiceMethod",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/ServiceMethod;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/ServiceMethod",
            "<TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    .local p1, "serviceMethod":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    .line 46
    iput-object p2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private createRawCall()Lokhttp3/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    iget-object v2, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lretrofit2/ServiceMethod;->toRequest([Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v1

    .line 185
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    iget-object v2, v2, Lretrofit2/ServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    invoke-interface {v2, v1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 186
    .local v0, "call":Lokhttp3/Call;
    if-nez v0, :cond_0

    .line 187
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Call.Factory returned null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 234
    .local v0, "call":Lokhttp3/Call;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 238
    :cond_0
    return-void

    .line 234
    .end local v0    # "call":Lokhttp3/Call;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit2/Call;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/OkHttpCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/OkHttpCall",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/ServiceMethod;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    .local p1, "callback":Lretrofit2/Callback;, "Lretrofit2/Callback<TT;>;"
    const-string v4, "callback == null"

    invoke-static {p1, v4}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v4, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already executed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 85
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 87
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 88
    .local v0, "call":Lokhttp3/Call;
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .local v2, "failure":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 91
    :try_start_2
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "call":Lokhttp3/Call;
    .local v1, "call":Lokhttp3/Call;
    move-object v0, v1

    .line 96
    .end local v1    # "call":Lokhttp3/Call;
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    if-eqz v2, :cond_2

    .line 99
    invoke-interface {p1, p0, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 144
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v3

    .line 93
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_4
    iput-object v3, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 103
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-boolean v4, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v4, :cond_3

    .line 104
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 107
    :cond_3
    new-instance v4, Lretrofit2/OkHttpCall$1;

    invoke-direct {v4, p0, p1}, Lretrofit2/OkHttpCall$1;-><init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_1
.end method

.method public execute()Lretrofit2/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already executed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 155
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 157
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 161
    :cond_1
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 165
    :cond_2
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .local v0, "call":Lokhttp3/Call;
    if-nez v0, :cond_3

    .line 168
    :try_start_2
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v0

    .end local v0    # "call":Lokhttp3/Call;
    iput-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v2, :cond_4

    .line 177
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 180
    :cond_4
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {p0, v2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v2

    return-object v2

    .line 169
    .end local v0    # "call":Lokhttp3/Call;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_4
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 171
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    const/4 v0, 0x1

    .line 241
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_0

    .line 245
    :goto_0
    return v0

    .line 244
    :cond_0
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    .locals 12
    .param p1, "rawResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    .line 196
    .local v5, "rawBody":Lokhttp3/ResponseBody;
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    new-instance v7, Lretrofit2/OkHttpCall$NoContentResponseBody;

    .line 197
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    invoke-direct {v7, v8, v10, v11}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 198
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    .line 201
    .local v3, "code":I
    const/16 v6, 0xc8

    if-lt v3, v6, :cond_0

    const/16 v6, 0x12c

    if-lt v3, v6, :cond_1

    .line 204
    :cond_0
    :try_start_0
    invoke-static {v5}, Lretrofit2/Utils;->buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v1

    .line 205
    .local v1, "bufferedBody":Lokhttp3/ResponseBody;
    invoke-static {v1, p1}, Lretrofit2/Response;->error(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 207
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    .line 219
    .end local v1    # "bufferedBody":Lokhttp3/ResponseBody;
    :goto_0
    return-object v6

    .line 207
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    throw v6

    .line 211
    :cond_1
    const/16 v6, 0xcc

    if-eq v3, v6, :cond_2

    const/16 v6, 0xcd

    if-ne v3, v6, :cond_3

    .line 212
    :cond_2
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    .line 213
    const/4 v6, 0x0

    invoke-static {v6, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v6

    goto :goto_0

    .line 216
    :cond_3
    new-instance v2, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {v2, v5}, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;-><init>(Lokhttp3/ResponseBody;)V

    .line 218
    .local v2, "catchingBody":Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;
    :try_start_1
    iget-object v6, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    invoke-virtual {v6, v2}, Lretrofit2/ServiceMethod;->toResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "body":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 220
    .end local v0    # "body":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->throwIfCaught()V

    .line 224
    throw v4
.end method

.method public declared-synchronized request()Lokhttp3/Request;
    .locals 5

    .prologue
    .line 55
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 56
    .local v0, "call":Lokhttp3/Call;
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 67
    :goto_0
    monitor-exit p0

    return-object v2

    .line 59
    :cond_0
    :try_start_1
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 61
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to create request."

    iget-object v4, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .end local v0    # "call":Lokhttp3/Call;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 63
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_4
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 70
    throw v1

    .line 71
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 73
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to create request."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
