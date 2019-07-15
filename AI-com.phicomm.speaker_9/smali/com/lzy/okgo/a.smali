.class public Lcom/lzy/okgo/a;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/a$a;
    }
.end annotation


# static fields
.field public static a:I = 0x64

.field private static j:Landroid/app/Application;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lokhttp3/OkHttpClient$Builder;

.field private d:Lokhttp3/OkHttpClient;

.field private e:Lcom/lzy/okgo/model/HttpParams;

.field private f:Lcom/lzy/okgo/model/HttpHeaders;

.field private g:Lcom/lzy/okgo/cache/CacheMode;

.field private h:I

.field private i:J

.field private k:Lcom/lzy/okgo/cookie/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lcom/lzy/okgo/a;->h:I

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/lzy/okgo/a;->i:J

    .line 60
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    .line 61
    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/lzy/okgo/d/a;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 62
    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 64
    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okgo/a;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/a$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/lzy/okgo/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/lzy/okgo/a;
    .locals 1

    .line 69
    invoke-static {}, Lcom/lzy/okgo/a$a;->a()Lcom/lzy/okgo/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/lzy/okgo/e/d;
    .locals 1

    .line 103
    new-instance v0, Lcom/lzy/okgo/e/d;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/e/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/lzy/okgo/a;->j:Landroid/app/Application;

    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 2

    .line 83
    sget-object v0, Lcom/lzy/okgo/a;->j:Landroid/app/Application;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8bf7\u5148\u5728\u5168\u5c40Application\u4e2d\u8c03\u7528 OkGo.init() \u521d\u59cb\u5316\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    sget-object v0, Lcom/lzy/okgo/a;->j:Landroid/app/Application;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/lzy/okgo/e/g;
    .locals 1

    .line 108
    new-instance v0, Lcom/lzy/okgo/e/g;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/e/g;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/lzy/okgo/a;
    .locals 1

    if-gez p1, :cond_0

    .line 228
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_0
    iput p1, p0, Lcom/lzy/okgo/a;->h:I

    return-object p0
.end method

.method public a(J)Lcom/lzy/okgo/a;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public a(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/a;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/lzy/okgo/a;->g:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public a(Lcom/lzy/okgo/cookie/store/a;)Lcom/lzy/okgo/a;
    .locals 1

    .line 198
    new-instance v0, Lcom/lzy/okgo/cookie/a;

    invoke-direct {v0, p1}, Lcom/lzy/okgo/cookie/a;-><init>(Lcom/lzy/okgo/cookie/store/a;)V

    iput-object v0, p0, Lcom/lzy/okgo/a;->k:Lcom/lzy/okgo/cookie/a;

    .line 199
    iget-object p1, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    iget-object v0, p0, Lcom/lzy/okgo/a;->k:Lcom/lzy/okgo/cookie/a;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public varargs a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okgo/a;
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {v0, p1, p2, p3}, Lcom/lzy/okgo/d/a;->a(Ljavax/net/ssl/X509TrustManager;Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okgo/d/a$a;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    iget-object p3, p1, Lcom/lzy/okgo/d/a$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    iget-object p1, p1, Lcom/lzy/okgo/d/a$a;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p2, p3, p1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/util/logging/Level;Z)Lcom/lzy/okgo/a;
    .locals 1

    .line 142
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    invoke-direct {v0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object p1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 144
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Ljava/util/logging/Level;)V

    .line 145
    iget-object p1, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 146
    invoke-static {p3}, Lcom/lzy/okgo/f/c;->a(Z)V

    return-object p0
.end method

.method public varargs a([Ljava/io/InputStream;)Lcom/lzy/okgo/a;
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0, v0, p1}, Lcom/lzy/okgo/a;->a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okgo/a;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Lcom/lzy/okgo/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 294
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/lzy/okgo/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 299
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b(J)Lcom/lzy/okgo/a;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public c()Landroid/os/Handler;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/lzy/okgo/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public c(J)Lcom/lzy/okgo/a;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public d(J)Lcom/lzy/okgo/a;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 252
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/a;->i:J

    return-object p0
.end method

.method public d()Lokhttp3/OkHttpClient;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/lzy/okgo/a;->d:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/a;->c:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/a;->d:Lokhttp3/OkHttpClient;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/a;->d:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/lzy/okgo/a;->h:I

    return v0
.end method

.method public f()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/lzy/okgo/a;->g:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/lzy/okgo/a;->i:J

    return-wide v0
.end method

.method public h()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/lzy/okgo/a;->e:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public i()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/lzy/okgo/a;->f:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method
