.class Lcom/phicomm/speaker/presenter/n$1;
.super Lcom/phicomm/speaker/net/a/c;
.source "SmartHomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/n;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/c<",
        "Lcom/phicomm/speaker/bean/SmartDeviceBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/n;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/n;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->d(Lcom/phicomm/speaker/presenter/n;)V

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->b(Lcom/phicomm/speaker/presenter/n;)Lcom/phicomm/speaker/presenter/b/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->e(Lcom/phicomm/speaker/presenter/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->b(Lcom/phicomm/speaker/presenter/n;)Lcom/phicomm/speaker/presenter/b/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SmartDeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->a(Lcom/phicomm/speaker/presenter/n;)V

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->b(Lcom/phicomm/speaker/presenter/n;)Lcom/phicomm/speaker/presenter/b/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->c(Lcom/phicomm/speaker/presenter/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/n$1;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/n;->b(Lcom/phicomm/speaker/presenter/n;)Lcom/phicomm/speaker/presenter/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/n;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
