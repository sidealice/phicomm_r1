.class public Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/net/resultbean/DeviceListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;
    }
.end annotation


# instance fields
.field private device_id:Ljava/lang/String;

.field private device_mac:Ljava/lang/String;

.field private device_nickname:Ljava/lang/String;

.field private device_online_status:I

.field private device_pic_group:Lcom/phicomm/speaker/net/resultbean/GroupPic;

.field private device_type:Ljava/lang/String;

.field private fid:Ljava/lang/String;

.field private hardware_version:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private position:I

.field private relative_h5urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;",
            ">;"
        }
    .end annotation
.end field

.field private rom_version:Ljava/lang/String;

.field private room_id:Ljava/lang/String;

.field private room_name:Ljava/lang/String;

.field private room_pic_url:Ljava/lang/String;

.field private task_remind:I

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_mac()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_nickname()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_online_status()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_online_status:I

    return v0
.end method

.method public getDevice_pic_group()Lcom/phicomm/speaker/net/resultbean/GroupPic;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_pic_group:Lcom/phicomm/speaker/net/resultbean/GroupPic;

    return-object v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_version()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->hardware_version:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->position:I

    return v0
.end method

.method public getRelative_h5urls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->relative_h5urls:Ljava/util/List;

    return-object v0
.end method

.method public getRom_version()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->rom_version:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_name()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_pic_url()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTask_remind()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->task_remind:I

    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_mac(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_mac:Ljava/lang/String;

    return-void
.end method

.method public setDevice_nickname(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_nickname:Ljava/lang/String;

    return-void
.end method

.method public setDevice_online_status(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_online_status:I

    return-void
.end method

.method public setDevice_pic_group(Lcom/phicomm/speaker/net/resultbean/GroupPic;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_pic_group:Lcom/phicomm/speaker/net/resultbean/GroupPic;

    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_type:Ljava/lang/String;

    return-void
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->fid:Ljava/lang/String;

    return-void
.end method

.method public setHardware_version(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->hardware_version:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->position:I

    return-void
.end method

.method public setRelative_h5urls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;",
            ">;)V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->relative_h5urls:Ljava/util/List;

    return-void
.end method

.method public setRom_version(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->rom_version:Ljava/lang/String;

    return-void
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_id:Ljava/lang/String;

    return-void
.end method

.method public setRoom_name(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_name:Ljava/lang/String;

    return-void
.end method

.method public setRoom_pic_url(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_pic_url:Ljava/lang/String;

    return-void
.end method

.method public setTask_remind(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->task_remind:I

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->udid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttDeviceInfo{hardware_version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->hardware_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->fid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", task_remind="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->task_remind:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rom_version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->rom_version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", device_nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", udid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->udid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", room_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", room_pic_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_pic_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_online_status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_online_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", device_mac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_mac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", room_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->room_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_pic_group="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->device_pic_group:Lcom/phicomm/speaker/net/resultbean/GroupPic;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", relative_h5urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->relative_h5urls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
