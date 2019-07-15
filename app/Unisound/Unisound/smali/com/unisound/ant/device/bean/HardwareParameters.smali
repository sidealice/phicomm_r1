.class public Lcom/unisound/ant/device/bean/HardwareParameters;
.super Ljava/lang/Object;
.source "HardwareParameters.java"

# interfaces
.implements Lcom/unisound/vui/common/UplinkData;


# instance fields
.field availableMemory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "availableMemory"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availableMemory"
    .end annotation
.end field

.field cpuSize:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cpuSize"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpuSize"
    .end annotation
.end field

.field deviceId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field deviceNetState:Lcom/unisound/ant/device/devicelayer/DeviceNetState;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceNetState"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceNetState"
    .end annotation
.end field

.field deviceType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceType"
    .end annotation
.end field

.field isRetainCamera:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isRetainCamera"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRetainCamera"
    .end annotation
.end field

.field isRetainScreen:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isRetainScreen"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRetainScreen"
    .end annotation
.end field

.field isRetainSpeaker:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isRetainSpeaker"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRetainSpeaker"
    .end annotation
.end field

.field isSurpportBluetooth:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isSurpportBluetooth"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportBluetooth"
    .end annotation
.end field

.field isSurpportDirectionBySound:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isSurpportDirectionBySound"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportDirectionBySound"
    .end annotation
.end field

.field isSurpportGps:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isSurpportGps"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportGps"
    .end annotation
.end field

.field isSurpportIndoorGps:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isSurpportIndoorGps"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportIndoorGps"
    .end annotation
.end field

.field otherSensor:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "otherSensor"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otherSensor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field totalMemory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "totalMemory"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalMemory"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableMemory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->availableMemory:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuSize()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->cpuSize:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNetState()Lcom/unisound/ant/device/devicelayer/DeviceNetState;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->deviceNetState:Lcom/unisound/ant/device/devicelayer/DeviceNetState;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherSensor()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->otherSensor:Ljava/util/List;

    return-object v0
.end method

.method public getTotalMemory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->totalMemory:Ljava/lang/String;

    return-object v0
.end method

.method public isRetainCamera()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isRetainCamera:Z

    return v0
.end method

.method public isRetainScreen()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isRetainScreen:Z

    return v0
.end method

.method public isRetainSpeaker()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isRetainSpeaker:Z

    return v0
.end method

.method public isSurpportBluetooth()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportBluetooth:Z

    return v0
.end method

.method public isSurpportDirectionBySound()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportDirectionBySound:Z

    return v0
.end method

.method public isSurpportGps()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportGps:Z

    return v0
.end method

.method public isSurpportIndoorGps()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportIndoorGps:Z

    return v0
.end method

.method public setAvailableMemory(Ljava/lang/String;)V
    .locals 0
    .param p1, "availableMemory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    iput-object p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->availableMemory:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCpuSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuSize"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    iput-object p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->cpuSize:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    iput-object p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->deviceId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDeviceNetState(Lcom/unisound/ant/device/devicelayer/DeviceNetState;)V
    .locals 0
    .param p1, "deviceNetState"    # Lcom/unisound/ant/device/devicelayer/DeviceNetState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 148
    iput-object p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->deviceNetState:Lcom/unisound/ant/device/devicelayer/DeviceNetState;

    .line 149
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    iput-object p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->deviceType:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setOtherSensor(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "otherSensor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->otherSensor:Ljava/util/List;

    .line 141
    return-void
.end method

.method public setRetainCamera(Z)V
    .locals 0
    .param p1, "retainCamera"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isRetainCamera:Z

    .line 93
    return-void
.end method

.method public setRetainScreen(Z)V
    .locals 0
    .param p1, "retainScreen"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isRetainScreen:Z

    .line 85
    return-void
.end method

.method public setRetainSpeaker(Z)V
    .locals 0
    .param p1, "retainSpeaker"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isRetainSpeaker:Z

    .line 109
    return-void
.end method

.method public setSurpportBluetooth(Z)V
    .locals 0
    .param p1, "surpportBluetooth"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportBluetooth:Z

    .line 117
    return-void
.end method

.method public setSurpportDirectionBySound(Z)V
    .locals 0
    .param p1, "surpportDirectionBySound"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportDirectionBySound:Z

    .line 133
    return-void
.end method

.method public setSurpportGps(Z)V
    .locals 0
    .param p1, "surpportGps"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportGps:Z

    .line 101
    return-void
.end method

.method public setSurpportIndoorGps(Z)V
    .locals 0
    .param p1, "surpportIndoorGps"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->isSurpportIndoorGps:Z

    .line 125
    return-void
.end method

.method public setTotalMemory(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalMemory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    iput-object p1, p0, Lcom/unisound/ant/device/bean/HardwareParameters;->totalMemory:Ljava/lang/String;

    .line 61
    return-void
.end method
