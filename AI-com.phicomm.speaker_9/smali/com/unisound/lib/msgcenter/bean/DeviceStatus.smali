.class public Lcom/unisound/lib/msgcenter/bean/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private isOnline:Z

.field private lastOnlineTime:Ljava/lang/String;

.field private tdid:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastOnlineTime()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->lastOnlineTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->isOnline:Z

    return v0
.end method

.method public getTdid()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->tdid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setLastOnlineTime(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->lastOnlineTime:Ljava/lang/String;

    return-void
.end method

.method public setOnline(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->isOnline:Z

    return-void
.end method

.method public setTdid(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->tdid:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->udid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceStatus{deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isOnline="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->isOnline:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lastOnlineTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->lastOnlineTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tdid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->tdid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", udid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->udid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
