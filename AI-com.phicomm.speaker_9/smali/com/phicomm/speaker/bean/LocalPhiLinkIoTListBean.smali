.class public Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;
.super Ljava/lang/Object;
.source "LocalPhiLinkIoTListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c545a3a34d222f3L


# instance fields
.field private category:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private connect_sta:Ljava/lang/String;

.field private dev_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;"
        }
    .end annotation
.end field

.field private direction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getConnect_sta()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->connect_sta:Ljava/lang/String;

    return-object v0
.end method

.method public getDev_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->dev_list:Ljava/util/List;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->command:Ljava/lang/String;

    return-void
.end method

.method public setConnect_sta(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->connect_sta:Ljava/lang/String;

    return-void
.end method

.method public setDev_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->dev_list:Ljava/util/List;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->direction:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPhiLinkIoTListBean{category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", direction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->direction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", command=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->command:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", connect_sta=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->connect_sta:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dev_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->dev_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
