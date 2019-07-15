.class public Lcom/unisound/ant/device/profile/DeviceProfileInfo;
.super Lcom/unisound/ant/device/bean/Parameter;
.source "DeviceProfileInfo.java"


# instance fields
.field private aiChip:Ljava/lang/String;

.field private capabilites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/DeviceCapability;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private generalInfo:Lcom/unisound/ant/device/bean/GeneralInfo;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/unisound/ant/device/bean/Parameter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->capabilites:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAiChip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->aiChip:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/DeviceCapability;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->capabilites:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneralInfo()Lcom/unisound/ant/device/bean/GeneralInfo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->generalInfo:Lcom/unisound/ant/device/bean/GeneralInfo;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAiChip(Ljava/lang/String;)V
    .locals 0
    .param p1, "aiChip"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->aiChip:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCapabilites(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/DeviceCapability;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "capabilites":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/DeviceCapability;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->capabilites:Ljava/util/List;

    .line 68
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->category:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->deviceModel:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->deviceType:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setGeneralInfo(Lcom/unisound/ant/device/bean/GeneralInfo;)V
    .locals 0
    .param p1, "generalInfo"    # Lcom/unisound/ant/device/bean/GeneralInfo;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->generalInfo:Lcom/unisound/ant/device/bean/GeneralInfo;

    .line 76
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->udid:Ljava/lang/String;

    .line 28
    return-void
.end method
