.class Lcom/phicomm/speaker/presenter/mqtt/e$1$1;
.super Lcom/phicomm/speaker/net/a/b;
.source "RecoveryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/e$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/e$1;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/e$1;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$1$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e$1;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess checkDeviceStatusBean = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;->getBind_status()I

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$1$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e$1;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/mqtt/e$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->b(Lcom/phicomm/speaker/presenter/mqtt/e;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$1$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e$1;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/mqtt/e$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    const-string v0, "-1"

    const-string v1, "\u6062\u590d\u51fa\u5382\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/e;->a(Lcom/phicomm/speaker/presenter/mqtt/e;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/e$1$1;->a(Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e$1$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e$1;

    iget-object v0, v0, Lcom/phicomm/speaker/presenter/mqtt/e$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {v0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/e;->a(Lcom/phicomm/speaker/presenter/mqtt/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
