.class Lcom/phicomm/speaker/e/d$5$1;
.super Lcom/phicomm/speaker/e/c/b;
.source "UnisoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d$5;->a(Lcom/phicomm/speaker/net/resultbean/DeviceListResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Ljava/util/List<",
        "Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/phicomm/speaker/e/d$5;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d$5;Ljava/util/List;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$5$1;->b:Lcom/phicomm/speaker/e/d$5;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    const/4 v0, 0x0

    .line 561
    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->a(Ljava/util/List;)V

    .line 562
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$5$1;->b:Lcom/phicomm/speaker/e/d$5;

    iget-object v0, v0, Lcom/phicomm/speaker/e/d$5;->a:Lcom/phicomm/speaker/e/c/e;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/phicomm/speaker/e/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 550
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/e/d$5$1;->a(ILjava/util/List;)V

    return-void
.end method

.method protected a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UnisoundManager"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnisDeviceList onUniSuccess data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$5$1;->b:Lcom/phicomm/speaker/e/d$5;

    iget-object v0, v0, Lcom/phicomm/speaker/e/d$5;->b:Lcom/phicomm/speaker/e/d;

    iget-object v1, p0, Lcom/phicomm/speaker/e/d$5$1;->a:Ljava/util/List;

    invoke-static {v0, v1, p2}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 555
    invoke-static {p2}, Lcom/phicomm/speaker/PhApplication;->a(Ljava/util/List;)V

    .line 556
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$5$1;->b:Lcom/phicomm/speaker/e/d$5;

    iget-object v0, v0, Lcom/phicomm/speaker/e/d$5;->a:Lcom/phicomm/speaker/e/c/e;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/e/c/e;->a(ILjava/util/List;)V

    return-void
.end method
