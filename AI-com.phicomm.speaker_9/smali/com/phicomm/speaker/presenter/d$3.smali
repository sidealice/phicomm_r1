.class Lcom/phicomm/speaker/presenter/d$3;
.super Lcom/phicomm/speaker/net/a/c;
.source "DeviceInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/c<",
        "Lcom/phicomm/speaker/net/resultbean/GroupPic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d$3;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceInfoPresenter"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicePicGroup onError code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$3;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->g(Lcom/phicomm/speaker/presenter/d;)V

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$3;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$3;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/GroupPic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DeviceInfoPresenter"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicePicGroup onSuccess t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$3;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->f(Lcom/phicomm/speaker/presenter/d;)V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$3;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$3;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
