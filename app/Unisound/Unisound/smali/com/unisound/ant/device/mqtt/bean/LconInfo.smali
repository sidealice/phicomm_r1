.class public Lcom/unisound/ant/device/mqtt/bean/LconInfo;
.super Ljava/lang/Object;
.source "LconInfo.java"


# instance fields
.field appKey:Ljava/lang/String;

.field deviceType:Ljava/lang/String;

.field udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->appKey:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->deviceType:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->udid:Ljava/lang/String;

    .line 26
    return-void
.end method
