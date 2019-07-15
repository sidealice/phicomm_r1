.class public Lcom/unisound/ant/device/bean/GeneralInfo;
.super Ljava/lang/Object;
.source "GeneralInfo.java"


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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableMemory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->availableMemory:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuSize()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->cpuSize:Ljava/lang/String;

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
    .line 115
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->otherSensor:Ljava/util/List;

    return-object v0
.end method

.method public getTotalMemory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->totalMemory:Ljava/lang/String;

    return-object v0
.end method

.method public isRetainCamera()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isRetainCamera:Z

    return v0
.end method

.method public isRetainScreen()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isRetainScreen:Z

    return v0
.end method

.method public isRetainSpeaker()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isRetainSpeaker:Z

    return v0
.end method

.method public isSurpportBluetooth()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportBluetooth:Z

    return v0
.end method

.method public isSurpportDirectionBySound()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportDirectionBySound:Z

    return v0
.end method

.method public isSurpportGps()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportGps:Z

    return v0
.end method

.method public isSurpportIndoorGps()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportIndoorGps:Z

    return v0
.end method

.method public setAvailableMemory(Ljava/lang/String;)V
    .locals 0
    .param p1, "availableMemory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->availableMemory:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCpuSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuSize"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->cpuSize:Ljava/lang/String;

    .line 56
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
    .line 119
    .local p1, "otherSensor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->otherSensor:Ljava/util/List;

    .line 120
    return-void
.end method

.method public setRetainCamera(Z)V
    .locals 0
    .param p1, "retainCamera"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isRetainCamera:Z

    .line 72
    return-void
.end method

.method public setRetainScreen(Z)V
    .locals 0
    .param p1, "retainScreen"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isRetainScreen:Z

    .line 64
    return-void
.end method

.method public setRetainSpeaker(Z)V
    .locals 0
    .param p1, "retainSpeaker"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isRetainSpeaker:Z

    .line 88
    return-void
.end method

.method public setSurpportBluetooth(Z)V
    .locals 0
    .param p1, "surpportBluetooth"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportBluetooth:Z

    .line 96
    return-void
.end method

.method public setSurpportDirectionBySound(Z)V
    .locals 0
    .param p1, "surpportDirectionBySound"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportDirectionBySound:Z

    .line 112
    return-void
.end method

.method public setSurpportGps(Z)V
    .locals 0
    .param p1, "surpportGps"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportGps:Z

    .line 80
    return-void
.end method

.method public setSurpportIndoorGps(Z)V
    .locals 0
    .param p1, "surpportIndoorGps"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->isSurpportIndoorGps:Z

    .line 104
    return-void
.end method

.method public setTotalMemory(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalMemory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GeneralInfo;->totalMemory:Ljava/lang/String;

    .line 40
    return-void
.end method
