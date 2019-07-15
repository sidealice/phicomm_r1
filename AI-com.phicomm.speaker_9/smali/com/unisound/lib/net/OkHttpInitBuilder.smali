.class public Lcom/unisound/lib/net/OkHttpInitBuilder;
.super Ljava/lang/Object;
.source "OkHttpInitBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/net/OkHttpInitBuilder$SingleFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OkHttpInit"


# instance fields
.field private connectTimeout:I

.field private readTimeOut:I

.field private retryCount:I

.field private writeTimeOut:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 44
    iput v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->connectTimeout:I

    const/16 v0, 0x4e20

    .line 46
    iput v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->readTimeOut:I

    .line 48
    iput v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->writeTimeOut:I

    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->retryCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/net/OkHttpInitBuilder$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/unisound/lib/net/OkHttpInitBuilder;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/net/OkHttpInitBuilder;
    .locals 1

    .line 39
    sget-object v0, Lcom/unisound/lib/net/OkHttpInitBuilder$SingleFactory;->instant:Lcom/unisound/lib/net/OkHttpInitBuilder;

    return-object v0
.end method

.method private initOkHttp(Landroid/app/Application;)V
    .locals 3

    .line 106
    invoke-static {p1}, Lcom/lzy/okgo/a;->a(Landroid/app/Application;)V

    :try_start_0
    const-string p1, "OkHttpInit"

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";readTimeOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->readTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";writeTimeOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->writeTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";retryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object p1

    const-string v0, "OkGo"

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x1

    .line 120
    invoke-virtual {p1, v0, v1, v2}, Lcom/lzy/okgo/a;->a(Ljava/lang/String;Ljava/util/logging/Level;Z)Lcom/lzy/okgo/a;

    move-result-object p1

    iget v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->connectTimeout:I

    int-to-long v0, v0

    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/a;->c(J)Lcom/lzy/okgo/a;

    move-result-object p1

    iget v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->readTimeOut:I

    int-to-long v0, v0

    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/a;->a(J)Lcom/lzy/okgo/a;

    move-result-object p1

    iget v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->writeTimeOut:I

    int-to-long v0, v0

    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/a;->b(J)Lcom/lzy/okgo/a;

    move-result-object p1

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 124
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/a;->a(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/a;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 125
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/a;->d(J)Lcom/lzy/okgo/a;

    move-result-object p1

    iget v0, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->retryCount:I

    .line 126
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/a;->a(I)Lcom/lzy/okgo/a;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/cookie/store/b;

    invoke-direct {v0}, Lcom/lzy/okgo/cookie/store/b;-><init>()V

    .line 127
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/a;->a(Lcom/lzy/okgo/cookie/store/a;)Lcom/lzy/okgo/a;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/InputStream;

    .line 128
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/a;->a([Ljava/io/InputStream;)Lcom/lzy/okgo/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public build(Landroid/app/Application;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/unisound/lib/net/OkHttpInitBuilder;->initOkHttp(Landroid/app/Application;)V

    return-void
.end method

.method public setConnectTimeout(I)Lcom/unisound/lib/net/OkHttpInitBuilder;
    .locals 0

    .line 59
    iput p1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->connectTimeout:I

    return-object p0
.end method

.method public setReadTimeOut(I)Lcom/unisound/lib/net/OkHttpInitBuilder;
    .locals 0

    .line 70
    iput p1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->readTimeOut:I

    return-object p0
.end method

.method public setRetryCount(I)Lcom/unisound/lib/net/OkHttpInitBuilder;
    .locals 0

    .line 92
    iput p1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->retryCount:I

    return-object p0
.end method

.method public setWriteTimeOut(I)Lcom/unisound/lib/net/OkHttpInitBuilder;
    .locals 0

    .line 81
    iput p1, p0, Lcom/unisound/lib/net/OkHttpInitBuilder;->writeTimeOut:I

    return-object p0
.end method
