.class Lcom/phicomm/speaker/presenter/m$3;
.super Lcom/phicomm/speaker/net/a/b;
.source "PhiLinkPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/m;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V
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
.field final synthetic a:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

.field final synthetic b:Lcom/phicomm/speaker/presenter/m;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/m;Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/m$3;->a:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)V
    .locals 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDevice onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->d(Lcom/phicomm/speaker/presenter/m;)V

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IOT_CONNECTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    const-string v1, "0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5165\u7f51\u5931\u8d25,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$3;->a:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/b/m;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V

    goto :goto_1

    .line 110
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object p1

    const-string v0, "0"

    const-string v1, "\u5165\u7f51\u5931\u8d25\uff0c\u8def\u7531\u5668\u672a\u54cd\u5e94Command"

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/m$3;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->c(Lcom/phicomm/speaker/presenter/m;)V

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$3;->b:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
