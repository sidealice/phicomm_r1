.class Lretrofit2/Retrofit$1;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final platform:Lretrofit2/Platform;

.field final synthetic this$0:Lretrofit2/Retrofit;

.field final synthetic val$service:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V
    .locals 1
    .param p1, "this$0"    # Lretrofit2/Retrofit;

    .prologue
    .line 134
    iput-object p1, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    iput-object p2, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 141
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    :goto_0
    return-object v2

    .line 143
    :cond_0
    iget-object v2, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    invoke-virtual {v2, p2}, Lretrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    iget-object v3, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-virtual {v2, p2, v3, p1, p3}, Lretrofit2/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 146
    :cond_1
    iget-object v2, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    .line 147
    invoke-virtual {v2, p2}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    move-result-object v1

    .line 148
    .local v1, "serviceMethod":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Lretrofit2/OkHttpCall;

    invoke-direct {v0, v1, p3}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/ServiceMethod;[Ljava/lang/Object;)V

    .line 149
    .local v0, "okHttpCall":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<Ljava/lang/Object;>;"
    iget-object v2, v1, Lretrofit2/ServiceMethod;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v2, v0}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
