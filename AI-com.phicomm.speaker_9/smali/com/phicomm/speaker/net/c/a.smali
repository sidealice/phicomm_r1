.class public abstract Lcom/phicomm/speaker/net/c/a;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lokhttp3/Request$Builder;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/phicomm/speaker/net/c/a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/net/c/a;->b:Ljava/util/Map;

    .line 34
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public a(Z)Lcom/phicomm/speaker/net/c/a;
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/phicomm/speaker/net/c/a;->d:Z

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->c:Lokhttp3/Request$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->c:Lokhttp3/Request$Builder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/net/c/a;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 69
    :cond_1
    iget-boolean p1, p0, Lcom/phicomm/speaker/net/c/a;->d:Z

    if-eqz p1, :cond_3

    const-string p1, "Authorization"

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->a:Ljava/lang/String;

    const-string v1, "https://home.phicomm.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    const-string v2, "ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/net/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    const-string p1, "x-app-info"

    .line 73
    invoke-static {}, Lcom/phicomm/speaker/f/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/net/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/phicomm/speaker/net/c/a;->a()Lokhttp3/Request;

    move-result-object p1

    .line 76
    invoke-static {p1, p2}, Lcom/phicomm/speaker/net/b/c;->a(Lokhttp3/Request;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Lokhttp3/Request;
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;
    .locals 1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->c:Lokhttp3/Request$Builder;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->c:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->c:Lokhttp3/Request$Builder;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->c:Lokhttp3/Request$Builder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/net/c/a;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 83
    :cond_1
    iget-boolean p1, p0, Lcom/phicomm/speaker/net/c/a;->d:Z

    if-eqz p1, :cond_3

    const-string p1, "Authorization"

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/net/c/a;->a:Ljava/lang/String;

    const-string v1, "https://home.phicomm.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    const-string v2, "ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/net/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    const-string p1, "x-app-info"

    .line 87
    invoke-static {}, Lcom/phicomm/speaker/f/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/net/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/phicomm/speaker/net/c/a;->a()Lokhttp3/Request;

    move-result-object p1

    .line 90
    invoke-static {p1, p2}, Lcom/phicomm/speaker/net/b/b;->a(Lokhttp3/Request;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method
