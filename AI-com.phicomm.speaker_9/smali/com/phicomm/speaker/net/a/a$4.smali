.class Lcom/phicomm/speaker/net/a/a$4;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Response;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/phicomm/speaker/net/a/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/net/a/a;Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/phicomm/speaker/net/a/a$4;->d:Lcom/phicomm/speaker/net/a/a;

    iput-object p2, p0, Lcom/phicomm/speaker/net/a/a$4;->a:Lokhttp3/Response;

    iput-object p3, p0, Lcom/phicomm/speaker/net/a/a$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/net/a/a$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 343
    :try_start_0
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->f()V

    .line 344
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$4;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/v1/token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$4;->d:Lcom/phicomm/speaker/net/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/net/a/a$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/net/a/a$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/net/a/a$4;->a:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$4;->d:Lcom/phicomm/speaker/net/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/net/a/a$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/net/a/a$4;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/net/a/a;->a(Lcom/phicomm/speaker/net/a/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string v1, "BaseCallback"

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTokenExpire error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 352
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
