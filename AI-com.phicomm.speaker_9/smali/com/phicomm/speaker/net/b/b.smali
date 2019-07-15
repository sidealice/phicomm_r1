.class public Lcom/phicomm/speaker/net/b/b;
.super Ljava/lang/Object;
.source "MyOkHttpUtil.java"


# static fields
.field private static volatile a:Lokhttp3/OkHttpClient;

.field private static volatile b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/phicomm/speaker/net/b/b;->b:Landroid/os/Handler;

    .line 39
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 40
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/b;->a(Lokhttp3/OkHttpClient$Builder;)V

    .line 41
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/net/b/b;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Lcom/phicomm/speaker/net/c/f;
    .locals 1

    .line 73
    new-instance v0, Lcom/phicomm/speaker/net/c/f;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/net/c/f;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public static a(Lokhttp3/Request;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;
    .locals 1

    .line 81
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "302"

    const-string v0, "302"

    .line 82
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x12e

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 83
    invoke-virtual {p1, p0, v0}, Lcom/phicomm/speaker/net/a/a;->a(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/net/b/b;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 87
    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-object p0
.end method

.method private static a(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 48
    new-instance v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;

    invoke-direct {v0}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->BODY:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a(Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;)Lcom/phicomm/speaker/net/interceptor/MyInterceptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method
