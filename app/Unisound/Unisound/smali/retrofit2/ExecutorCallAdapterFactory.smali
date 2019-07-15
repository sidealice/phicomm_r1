.class final Lretrofit2/ExecutorCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "ExecutorCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;
    }
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 29
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 30
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 31
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 3
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1}, Lretrofit2/ExecutorCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit2/Call;

    if-eq v1, v2, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 39
    :goto_0
    return-object v1

    .line 38
    :cond_0
    invoke-static {p1}, Lretrofit2/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 39
    .local v0, "responseType":Ljava/lang/reflect/Type;
    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$1;

    invoke-direct {v1, p0, v0}, Lretrofit2/ExecutorCallAdapterFactory$1;-><init>(Lretrofit2/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
