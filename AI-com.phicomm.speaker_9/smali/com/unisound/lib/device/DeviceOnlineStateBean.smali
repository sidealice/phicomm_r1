.class public Lcom/unisound/lib/device/DeviceOnlineStateBean;
.super Ljava/lang/Object;
.source "DeviceOnlineStateBean.java"


# instance fields
.field private isOnline:Z

.field private tdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTdid()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/unisound/lib/device/DeviceOnlineStateBean;->tdid:Ljava/lang/String;

    return-object v0
.end method

.method public isOnline()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/unisound/lib/device/DeviceOnlineStateBean;->isOnline:Z

    return v0
.end method

.method public setOnline(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/unisound/lib/device/DeviceOnlineStateBean;->isOnline:Z

    return-void
.end method

.method public setTdid(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/unisound/lib/device/DeviceOnlineStateBean;->tdid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOnlineStateBean{tdid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/device/DeviceOnlineStateBean;->tdid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isOnline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisound/lib/device/DeviceOnlineStateBean;->isOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
