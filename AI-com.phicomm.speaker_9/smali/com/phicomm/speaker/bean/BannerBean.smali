.class public Lcom/phicomm/speaker/bean/BannerBean;
.super Ljava/lang/Object;
.source "BannerBean.java"


# instance fields
.field private forward_url:Ljava/lang/String;

.field private pic_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForward_url()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/phicomm/speaker/bean/BannerBean;->forward_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_url()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/bean/BannerBean;->pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public setForward_url(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/phicomm/speaker/bean/BannerBean;->forward_url:Ljava/lang/String;

    return-void
.end method

.method public setPic_url(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/bean/BannerBean;->pic_url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BannerBean{pic_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/BannerBean;->pic_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", forward_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/BannerBean;->forward_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
