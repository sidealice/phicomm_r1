.class public Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;
.super Ljava/lang/Object;
.source "SmartDevice.java"


# instance fields
.field private deviceCode:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private homeCode:Ljava/lang/String;

.field private homeName:Ljava/lang/String;

.field private roomCode:Ljava/lang/String;

.field private roomName:Ljava/lang/String;

.field private stateInfo:Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;

.field private vendorName:Ljava/lang/String;

.field private zoneCode:Ljava/lang/String;

.field private zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->deviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->homeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->homeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->roomCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public getStateInfo()Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->stateInfo:Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;

    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->vendorName:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->zoneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->zoneName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceCode"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->deviceCode:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->deviceName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setHomeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeCode"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->homeCode:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setHomeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeName"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->homeName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setRoomCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomCode"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->roomCode:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->roomName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setStateInfo(Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;)V
    .locals 0
    .param p1, "stateInfo"    # Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->stateInfo:Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;

    .line 50
    return-void
.end method

.method public setVendorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->vendorName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setZoneCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneCode"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->zoneCode:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setZoneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/bean/SmartDevice;->zoneName:Ljava/lang/String;

    .line 74
    return-void
.end method
