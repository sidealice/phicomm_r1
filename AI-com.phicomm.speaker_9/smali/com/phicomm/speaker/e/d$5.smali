.class Lcom/phicomm/speaker/e/d$5;
.super Lcom/phicomm/speaker/net/a/b;
.source "UnisoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/net/resultbean/DeviceListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/c/e;

.field final synthetic b:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/e;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$5;->b:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$5;->a:Lcom/phicomm/speaker/e/c/e;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/net/resultbean/DeviceListResult;)V
    .locals 3

    const-string v0, "UnisoundManager"

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSzDeviceList deviceListResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->getDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 549
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->getDevices()Ljava/util/List;

    move-result-object p1

    .line 550
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$5;->b:Lcom/phicomm/speaker/e/d;

    new-instance v1, Lcom/phicomm/speaker/e/d$5$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/e/d$5$1;-><init>(Lcom/phicomm/speaker/e/d$5;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/b;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 566
    invoke-static {p1}, Lcom/phicomm/speaker/PhApplication;->a(Ljava/util/List;)V

    .line 567
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$5;->a:Lcom/phicomm/speaker/e/c/e;

    const/16 v1, 0xc8

    invoke-interface {v0, v1, p1}, Lcom/phicomm/speaker/e/c/e;->a(ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 543
    check-cast p1, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/e/d$5;->a(Lcom/phicomm/speaker/net/resultbean/DeviceListResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 573
    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->a(Ljava/util/List;)V

    .line 574
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$5;->a:Lcom/phicomm/speaker/e/c/e;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/e/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
