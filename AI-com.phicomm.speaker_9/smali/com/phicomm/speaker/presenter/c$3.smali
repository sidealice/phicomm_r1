.class Lcom/phicomm/speaker/presenter/c$3;
.super Lcom/phicomm/speaker/net/a/b;
.source "CloudAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/CloudAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$3;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CloudAccount;)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$3;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$3;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CloudAccount;->getAccess_token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$3;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/c;->b(Lcom/phicomm/speaker/bean/CloudAccount;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/c$3;->a(Lcom/phicomm/speaker/bean/CloudAccount;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$3;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$3;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
