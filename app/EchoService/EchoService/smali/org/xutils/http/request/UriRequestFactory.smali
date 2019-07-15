.class public final Lorg/xutils/http/request/UriRequestFactory;
.super Ljava/lang/Object;
.source "UriRequestFactory.java"


# static fields
.field private static final SCHEME_CLS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/request/UriRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private static defaultTrackerCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/app/RequestTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/http/request/UriRequestFactory;->SCHEME_CLS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getDefaultTracker()Lorg/xutils/http/app/RequestTracker;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    :try_start_0
    sget-object v1, Lorg/xutils/http/request/UriRequestFactory;->defaultTrackerCls:Ljava/lang/Class;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 72
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 68
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    sget-object v1, Lorg/xutils/http/request/UriRequestFactory;->defaultTrackerCls:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/app/RequestTracker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 72
    goto :goto_0
.end method

.method public static getUriRequest(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)Lorg/xutils/http/request/UriRequest;
    .locals 10
    .param p0, "params"    # Lorg/xutils/http/RequestParams;
    .param p1, "loadType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "uri":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 33
    .local v2, "index":I
    if-lez v2, :cond_1

    .line 34
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 40
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 41
    sget-object v5, Lorg/xutils/http/request/UriRequestFactory;->SCHEME_CLS_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 42
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/xutils/http/request/UriRequest;>;"
    if-eqz v0, :cond_2

    .line 43
    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Lorg/xutils/http/RequestParams;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v8

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 45
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/xutils/http/request/UriRequest;>;"
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v7

    aput-object p1, v5, v8

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xutils/http/request/UriRequest;

    .line 52
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/xutils/http/request/UriRequest;>;"
    :goto_1
    return-object v5

    .line 35
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/xutils/http/request/UriRequest;>;"
    :cond_1
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    const-string v3, "file"

    goto :goto_0

    .line 47
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/xutils/http/request/UriRequest;>;"
    :cond_2
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    new-instance v5, Lorg/xutils/http/request/HttpRequest;

    invoke-direct {v5, p0, p1}, Lorg/xutils/http/request/HttpRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 49
    :cond_3
    const-string v5, "assets"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50
    new-instance v5, Lorg/xutils/http/request/AssetsRequest;

    invoke-direct {v5, p0, p1}, Lorg/xutils/http/request/AssetsRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 51
    :cond_4
    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 52
    new-instance v5, Lorg/xutils/http/request/LocalFileRequest;

    invoke-direct {v5, p0, p1}, Lorg/xutils/http/request/LocalFileRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 54
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The url not be support: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/xutils/http/request/UriRequest;>;"
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The url not be support: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static registerDefaultTrackerClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/app/RequestTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "trackerCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/xutils/http/app/RequestTracker;>;"
    sput-object p0, Lorg/xutils/http/request/UriRequestFactory;->defaultTrackerCls:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method public static registerRequestClass(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/request/UriRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "uriRequestCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/xutils/http/request/UriRequest;>;"
    sget-object v0, Lorg/xutils/http/request/UriRequestFactory;->SCHEME_CLS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method
