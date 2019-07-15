.class public Lcom/unisound/ant/device/devicelayer/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceCapabilites()Ljava/util/List;
    .locals 8
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
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "capabilites":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/DeviceCapability;>;"
    new-instance v4, Lcom/unisound/ant/device/bean/DeviceCapability;

    invoke-direct {v4}, Lcom/unisound/ant/device/bean/DeviceCapability;-><init>()V

    .line 59
    .local v4, "capabilityMusic":Lcom/unisound/ant/device/bean/DeviceCapability;
    const-string v7, "playAudio"

    invoke-virtual {v4, v7}, Lcom/unisound/ant/device/bean/DeviceCapability;->setCapability(Ljava/lang/String;)V

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v6, "musicOperates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "update"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v7, "prev"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v7, "next"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v4, v6}, Lcom/unisound/ant/device/bean/DeviceCapability;->setOperations(Ljava/util/List;)V

    .line 65
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v3, Lcom/unisound/ant/device/bean/DeviceCapability;

    invoke-direct {v3}, Lcom/unisound/ant/device/bean/DeviceCapability;-><init>()V

    .line 68
    .local v3, "capabilityDeviceSet":Lcom/unisound/ant/device/bean/DeviceCapability;
    const-string v7, "deviceManagement"

    invoke-virtual {v4, v7}, Lcom/unisound/ant/device/bean/DeviceCapability;->setCapability(Ljava/lang/String;)V

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v5, "deviceSettingOperates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "uploadDeviceInfo"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v3, v5}, Lcom/unisound/ant/device/bean/DeviceCapability;->setOperations(Ljava/util/List;)V

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcom/unisound/ant/device/bean/DeviceCapability;

    invoke-direct {v2}, Lcom/unisound/ant/device/bean/DeviceCapability;-><init>()V

    .line 75
    .local v2, "capabilityController":Lcom/unisound/ant/device/bean/DeviceCapability;
    const-string v7, "controller"

    invoke-virtual {v2, v7}, Lcom/unisound/ant/device/bean/DeviceCapability;->setCapability(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "ControllerOperates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "query"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v7, "control"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v3, v0}, Lcom/unisound/ant/device/bean/DeviceCapability;->setOperations(Ljava/util/List;)V

    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v1
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/unisound/ant/device/bean/HardwareParameters;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/unisound/ant/device/bean/HardwareParameters;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/HardwareParameters;-><init>()V

    .line 27
    .local v0, "deviceInfo":Lcom/unisound/ant/device/bean/HardwareParameters;
    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setDeviceId(Ljava/lang/String;)V

    .line 28
    const-string v1, "4Mic"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setDeviceType(Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->getRamTotalSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setTotalMemory(Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->getRamAvailableSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setAvailableMemory(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getCpuInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setCpuSize(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->isSupportCamera(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setRetainCamera(Z)V

    .line 33
    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/HardwareParameters;->setRetainScreen(Z)V

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setRetainSpeaker(Z)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/HardwareParameters;->setSurpportBluetooth(Z)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/HardwareParameters;->setSurpportIndoorGps(Z)V

    .line 37
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->hasGPSDevice(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setSurpportGps(Z)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setOtherSensor(Ljava/util/List;)V

    .line 39
    invoke-static {p0}, Lcom/unisound/ant/device/devicelayer/DeviceUtils;->getDeviceNetState(Landroid/content/Context;)Lcom/unisound/ant/device/devicelayer/DeviceNetState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/HardwareParameters;->setDeviceNetState(Lcom/unisound/ant/device/devicelayer/DeviceNetState;)V

    .line 40
    return-object v0
.end method

.method public static getDeviceNetState(Landroid/content/Context;)Lcom/unisound/ant/device/devicelayer/DeviceNetState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/unisound/ant/device/devicelayer/DeviceNetState;

    invoke-direct {v0}, Lcom/unisound/ant/device/devicelayer/DeviceNetState;-><init>()V

    .line 49
    .local v0, "netState":Lcom/unisound/ant/device/devicelayer/DeviceNetState;
    invoke-static {p0}, Lcom/unisound/vui/common/network/NetUtil;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->setNetType(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/unisound/vui/common/network/NetUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->setInNetIp(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/unisound/vui/common/network/NetUtil;->getOutNetIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->setOutNetIp(Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method public static getDeviceProfile(Landroid/content/Context;)Lcom/unisound/ant/device/profile/DeviceProfileInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v0, Lcom/unisound/ant/device/profile/DeviceProfileInfo;

    invoke-direct {v0}, Lcom/unisound/ant/device/profile/DeviceProfileInfo;-><init>()V

    .line 105
    .local v0, "profile":Lcom/unisound/ant/device/profile/DeviceProfileInfo;
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->setUdid(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/unisound/ant/device/devicelayer/DeviceUtils;->getDeviceCapabilites()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->setCapabilites(Ljava/util/List;)V

    .line 107
    invoke-static {p0}, Lcom/unisound/ant/device/devicelayer/DeviceUtils;->getGeneralInfo(Landroid/content/Context;)Lcom/unisound/ant/device/bean/GeneralInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/profile/DeviceProfileInfo;->setGeneralInfo(Lcom/unisound/ant/device/bean/GeneralInfo;)V

    .line 108
    return-object v0
.end method

.method private static getGeneralInfo(Landroid/content/Context;)Lcom/unisound/ant/device/bean/GeneralInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/unisound/ant/device/bean/GeneralInfo;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/GeneralInfo;-><init>()V

    .line 91
    .local v0, "info":Lcom/unisound/ant/device/bean/GeneralInfo;
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->getRamTotalSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/GeneralInfo;->setTotalMemory(Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->getRamAvailableSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/GeneralInfo;->setAvailableMemory(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getCpuInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/GeneralInfo;->setCpuSize(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->isSupportCamera(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/GeneralInfo;->setRetainCamera(Z)V

    .line 95
    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/GeneralInfo;->setRetainScreen(Z)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/GeneralInfo;->setRetainSpeaker(Z)V

    .line 97
    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/GeneralInfo;->setSurpportBluetooth(Z)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/GeneralInfo;->setSurpportIndoorGps(Z)V

    .line 99
    invoke-static {p0}, Lcom/unisound/vui/util/SystemUitls;->hasGPSDevice(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/GeneralInfo;->setSurpportGps(Z)V

    .line 100
    return-object v0
.end method
