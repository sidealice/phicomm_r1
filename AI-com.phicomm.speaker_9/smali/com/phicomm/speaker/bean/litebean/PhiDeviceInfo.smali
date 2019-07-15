.class public Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
.super Lorg/litepal/crud/DataSupport;
.source "PhiDeviceInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo$DeviceStatus;
    }
.end annotation


# instance fields
.field private device_id:Ljava/lang/String;

.field private device_mac:Ljava/lang/String;

.field private device_nickname:Ljava/lang/String;

.field private device_online_status:I

.field private device_type:Ljava/lang/String;

.field private hardware_version:Ljava/lang/String;

.field private id:I

.field private isActive:Z

.field private isOnline:Z

.field private mDeviceState:I

.field private model:Ljava/lang/String;

.field private pic_group_id:Ljava/lang/String;

.field private pic_url_icon:Ljava/lang/String;

.field private pic_url_normal:Ljava/lang/String;

.field private pic_url_offline:Ljava/lang/String;

.field private pic_url_selected:Ljava/lang/String;

.field private rom_version:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->id:I

    .line 50
    iput v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->mDeviceState:I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline:Z

    .line 64
    iput-boolean v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isActive:Z

    return-void
.end method


# virtual methods
.method public castPhiDeviceInfo(Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setUdid(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getHardware_version()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setHardware_version(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getDevice_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDevice_type(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setRom_version(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDevice_nickname(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDevice_id(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getDevice_online_status()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDevice_online_status(I)V

    .line 138
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getDevice_mac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDevice_mac(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setModel(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getDevice_pic_group()Lcom/phicomm/speaker/net/resultbean/GroupPic;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setGroupPic(Lcom/phicomm/speaker/net/resultbean/GroupPic;)V

    return-object p0
.end method

.method public clone()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
    .locals 1

    .line 319
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->clone()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->mDeviceState:I

    return v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_mac()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_nickname()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_online_status()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_online_status:I

    return v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_version()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hardware_version:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->id:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_group_id()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_url_icon()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_url_normal()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_normal:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_version()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->rom_version:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public hasDevice()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->mDeviceState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->mDeviceState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isActive:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isActive:Z

    return-void
.end method

.method public setDeviceState(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->mDeviceState:I

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_mac(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_mac:Ljava/lang/String;

    return-void
.end method

.method public setDevice_nickname(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_nickname:Ljava/lang/String;

    return-void
.end method

.method public setDevice_online_status(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_online_status:I

    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_type:Ljava/lang/String;

    return-void
.end method

.method public setGroupPic(Lcom/phicomm/speaker/net/resultbean/GroupPic;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 147
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/GroupPic;->getPic_group_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setPic_group_id(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/GroupPic;->getGroup_pics()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;

    .line 151
    invoke-virtual {v0}, Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;->getPic_type()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xe1a38d4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "normal_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v0}, Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;->getPic_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setPic_url_normal(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setHardware_version(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hardware_version:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->id:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setOnline(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline:Z

    return-void
.end method

.method public setPic_group_id(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_group_id:Ljava/lang/String;

    return-void
.end method

.method public setPic_url_icon(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_icon:Ljava/lang/String;

    return-void
.end method

.method public setPic_url_normal(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_normal:Ljava/lang/String;

    return-void
.end method

.method public setRom_version(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->rom_version:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->udid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhiDeviceInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", udid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isOnline="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isActive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", device_online_status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_online_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hardware_version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hardware_version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rom_version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->rom_version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_mac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->device_mac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pic_group_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_group_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pic_url_normal=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_normal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pic_url_selected=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_selected:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pic_url_offline=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_offline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pic_url_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->pic_url_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
