.class public final Lretrofit2/Retrofit;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Retrofit$Builder;
    }
.end annotation


# instance fields
.field final adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field final baseUrl:Lokhttp3/HttpUrl;

.field final callFactory:Lokhttp3/Call$Factory;

.field final callbackExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit2/ServiceMethod",
            "<**>;>;"
        }
    .end annotation
.end field

.field final validateEagerly:Z


# direct methods
.method constructor <init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "baseUrl"    # Lokhttp3/HttpUrl;
    .param p5, "callbackExecutor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "validateEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/Converter$Factory;>;"
    .local p4, "adapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/CallAdapter$Factory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    .line 74
    iput-object p2, p0, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    .line 75
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    .line 76
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    .line 77
    iput-object p5, p0, Lretrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 78
    iput-boolean p6, p0, Lretrofit2/Retrofit;->validateEagerly:Z

    .line 79
    return-void
.end method

.method private eagerlyValidateMethods(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v1

    .line 156
    .local v1, "platform":Lretrofit2/Platform;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 157
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v0}, Lretrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    .line 156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    return-void
.end method


# virtual methods
.method public baseUrl()Lokhttp3/HttpUrl;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .locals 1
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lretrofit2/Retrofit;->nextCallAdapter(Lretrofit2/CallAdapter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v0

    return-object v0
.end method

.method public callAdapterFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    return-object v0
.end method

.method public callFactory()Lokhttp3/Call$Factory;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    return-object v0
.end method

.method public callbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lretrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public converterFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    return-object v0
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lretrofit2/Utils;->validateServiceInterface(Ljava/lang/Class;)V

    .line 130
    iget-boolean v0, p0, Lretrofit2/Retrofit;->validateEagerly:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, p1}, Lretrofit2/Retrofit;->eagerlyValidateMethods(Ljava/lang/Class;)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lretrofit2/Retrofit$1;

    invoke-direct {v2, p0, p1}, Lretrofit2/Retrofit$1;-><init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit2/ServiceMethod",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/ServiceMethod;

    .line 165
    .local v1, "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 174
    .end local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .local v2, "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    :goto_0
    return-object v2

    .line 167
    .end local v2    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .restart local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    :cond_0
    iget-object v4, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    monitor-enter v4

    .line 168
    :try_start_0
    iget-object v3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lretrofit2/ServiceMethod;

    move-object v1, v0

    .line 169
    if-nez v1, :cond_1

    .line 170
    new-instance v3, Lretrofit2/ServiceMethod$Builder;

    invoke-direct {v3, p0, p1}, Lretrofit2/ServiceMethod$Builder;-><init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V

    invoke-virtual {v3}, Lretrofit2/ServiceMethod$Builder;->build()Lretrofit2/ServiceMethod;

    move-result-object v1

    .line 171
    iget-object v3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    monitor-exit v4

    move-object v2, v1

    .line 174
    .end local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .restart local v2    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    goto :goto_0

    .line 173
    .end local v2    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .restart local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public newBuilder()Lretrofit2/Retrofit$Builder;
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0, p0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Retrofit;)V

    return-object v0
.end method

.method public nextCallAdapter(Lretrofit2/CallAdapter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .locals 7
    .param p1, "skipPast"    # Lretrofit2/CallAdapter$Factory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "returnType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/CallAdapter$Factory;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 216
    const-string v5, "returnType == null"

    invoke-static {p2, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v5, "annotations == null"

    invoke-static {p3, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 220
    .local v4, "start":I
    move v3, v4

    .local v3, "i":I
    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 221
    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v5, p2, p3, p0}, Lretrofit2/CallAdapter$Factory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;

    move-result-object v0

    .line 222
    .local v0, "adapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<**>;"
    if-eqz v0, :cond_0

    .line 223
    return-object v0

    .line 220
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "adapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<**>;"
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not locate call adapter for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".\n"

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    .line 231
    const-string v5, "  Skipped:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 233
    const-string v5, "\n   * "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    const-string v5, "  Tried:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    move v3, v4

    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_4

    .line 239
    const-string v5, "\n   * "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 241
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public nextRequestBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 8
    .param p1, "skipPast"    # Lretrofit2/Converter$Factory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const-string v6, "type == null"

    invoke-static {p2, v6}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v6, "parameterAnnotations == null"

    invoke-static {p3, v6}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v6, "methodAnnotations == null"

    invoke-static {p4, v6}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 279
    .local v5, "start":I
    move v4, v5

    .local v4, "i":I
    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 280
    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/Converter$Factory;

    .line 282
    .local v3, "factory":Lretrofit2/Converter$Factory;
    invoke-virtual {v3, p2, p3, p4, p0}, Lretrofit2/Converter$Factory;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v1

    .line 283
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    if-eqz v1, :cond_0

    .line 285
    return-object v1

    .line 279
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v3    # "factory":Lretrofit2/Converter$Factory;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not locate RequestBody converter for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".\n"

    .line 291
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    .line 293
    const-string v6, "  Skipped:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    .line 295
    const-string v6, "\n   * "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lretrofit2/Converter$Factory;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 297
    :cond_2
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    const-string v6, "  Tried:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    move v4, v5

    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v4, v2, :cond_4

    .line 301
    const-string v6, "\n   * "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lretrofit2/Converter$Factory;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 303
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public nextResponseBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 7
    .param p1, "skipPast"    # Lretrofit2/Converter$Factory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 324
    const-string v5, "type == null"

    invoke-static {p2, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    const-string v5, "annotations == null"

    invoke-static {p3, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 328
    .local v4, "start":I
    move v3, v4

    .local v3, "i":I
    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 329
    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    .line 330
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/Converter$Factory;

    invoke-virtual {v5, p2, p3, p0}, Lretrofit2/Converter$Factory;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v1

    .line 331
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;*>;"
    if-eqz v1, :cond_0

    .line 333
    return-object v1

    .line 328
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;*>;"
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not locate ResponseBody converter for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".\n"

    .line 339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    .line 341
    const-string v5, "  Skipped:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 343
    const-string v5, "\n   * "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/Converter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_3
    const-string v5, "  Tried:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    move v3, v4

    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_4

    .line 349
    const-string v5, "\n   * "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/Converter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 351
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lretrofit2/Retrofit;->nextRequestBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    return-object v0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lretrofit2/Retrofit;->nextResponseBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    return-object v0
.end method

.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    const-string v3, "type == null"

    invoke-static {p1, v3}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    const-string v3, "annotations == null"

    invoke-static {p2, v3}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 363
    iget-object v3, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    .line 364
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/Converter$Factory;

    invoke-virtual {v3, p1, p2, p0}, Lretrofit2/Converter$Factory;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v0

    .line 365
    .local v0, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 373
    .end local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 362
    .restart local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_1
    sget-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

    goto :goto_1
.end method
