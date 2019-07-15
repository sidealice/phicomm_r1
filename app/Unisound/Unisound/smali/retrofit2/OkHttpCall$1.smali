.class Lretrofit2/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/OkHttpCall;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/OkHttpCall;

.field final synthetic val$callback:Lretrofit2/Callback;


# direct methods
.method constructor <init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit2/OkHttpCall;

    .prologue
    .line 107
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    iput-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v1, v2, p1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private callSuccess(Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v1, v2, p1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 122
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v1, v2, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "rawResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-virtual {v2, p2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    .local v1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-direct {p0, v1}, Lretrofit2/OkHttpCall$1;->callSuccess(Lretrofit2/Response;)V

    .line 118
    .end local v1    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lretrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
