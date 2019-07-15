.class public Lcom/unisound/ant/device/bean/DeviceSummaryInfo;
.super Lcom/unisound/ant/device/bean/Parameter;
.source "DeviceSummaryInfo.java"


# instance fields
.field deviceNickName:Ljava/lang/String;

.field environmentLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceNickName"    # Ljava/lang/String;
    .param p2, "environmentLocation"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/unisound/ant/device/bean/Parameter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getDeviceNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironmentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceNickName"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setEnvironmentLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "environmentLocation"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    .line 29
    return-void
.end method
