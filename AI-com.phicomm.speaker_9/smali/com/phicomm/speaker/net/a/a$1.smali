.class Lcom/phicomm/speaker/net/a/a$1;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/net/a/a;->a(Lokhttp3/Call;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Call;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/phicomm/speaker/net/a/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/net/a/a;Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/net/a/a$1;->c:Lcom/phicomm/speaker/net/a/a;

    iput-object p2, p0, Lcom/phicomm/speaker/net/a/a$1;->a:Lokhttp3/Call;

    iput-object p3, p0, Lcom/phicomm/speaker/net/a/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$1;->a:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$1;->c:Lcom/phicomm/speaker/net/a/a;

    const-string v1, "303"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/phicomm/speaker/net/a/a$1;->a:Lokhttp3/Call;

    invoke-interface {v3}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$1;->a:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    const-string v0, "BaseCallback"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/a/a$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
