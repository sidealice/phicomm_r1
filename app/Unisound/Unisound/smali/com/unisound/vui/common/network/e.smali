.class public Lcom/unisound/vui/common/network/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/unisound/vui/common/network/e;


# instance fields
.field private b:Lcom/android/volley/RequestQueue;

.field private c:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unisound/vui/common/network/e;

    invoke-static {}, Lcom/unisound/vui/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/vui/common/network/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/vui/common/network/e;->a:Lcom/unisound/vui/common/network/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/unisound/vui/common/network/e;->b:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/common/network/e$1;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/network/e$1;-><init>(Lcom/unisound/vui/common/network/e;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/common/network/e;->c:Lokhttp3/OkHttpClient;

    new-instance v0, Lcom/unisound/vui/common/network/c;

    iget-object v1, p0, Lcom/unisound/vui/common/network/e;->c:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/unisound/vui/common/network/c;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/common/network/e;->b:Lcom/android/volley/RequestQueue;

    :cond_0
    return-void
.end method

.method public static a()Lcom/unisound/vui/common/network/e;
    .locals 1

    sget-object v0, Lcom/unisound/vui/common/network/e;->a:Lcom/unisound/vui/common/network/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x7530

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/network/e;->b:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/network/e;->b:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;ILjava/lang/String;[BLjava/util/Map;Lcom/unisound/vui/common/network/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unisound/vui/common/network/d",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/unisound/vui/common/network/e$4;

    new-instance v4, Lcom/unisound/vui/common/network/e$2;

    invoke-direct {v4, p0, p6}, Lcom/unisound/vui/common/network/e$2;-><init>(Lcom/unisound/vui/common/network/e;Lcom/unisound/vui/common/network/d;)V

    new-instance v5, Lcom/unisound/vui/common/network/e$3;

    invoke-direct {v5, p0, p6}, Lcom/unisound/vui/common/network/e$3;-><init>(Lcom/unisound/vui/common/network/e;Lcom/unisound/vui/common/network/d;)V

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/unisound/vui/common/network/e$4;-><init>(Lcom/unisound/vui/common/network/e;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;[B)V

    invoke-virtual {p0, v0, p1}, Lcom/unisound/vui/common/network/e;->a(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/vui/common/network/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/common/network/d",
            "<[B>;)V"
        }
    .end annotation

    new-instance v0, Lcom/unisound/vui/common/network/a;

    const/4 v1, 0x0

    new-instance v3, Lcom/unisound/vui/common/network/e$5;

    invoke-direct {v3, p0, p3}, Lcom/unisound/vui/common/network/e$5;-><init>(Lcom/unisound/vui/common/network/e;Lcom/unisound/vui/common/network/d;)V

    new-instance v4, Lcom/unisound/vui/common/network/e$6;

    invoke-direct {v4, p0, p3}, Lcom/unisound/vui/common/network/e$6;-><init>(Lcom/unisound/vui/common/network/e;Lcom/unisound/vui/common/network/d;)V

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/unisound/vui/common/network/a;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0, p1}, Lcom/unisound/vui/common/network/e;->a(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method
