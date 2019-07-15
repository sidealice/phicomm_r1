.class Lcom/phicomm/speaker/presenter/m$2;
.super Lcom/phicomm/speaker/net/a/b;
.source "PhiLinkPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/m;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/m;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/m;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/m;->d()V

    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/m;->a(Ljava/util/List;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/m;->d()V

    .line 80
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object p1

    const-string v0, "0"

    const-string v1, "PhiLink\u8bbe\u5907\u5217\u8868\u4e3a\u7a7a"

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/m$2;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/m;->d()V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$2;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
