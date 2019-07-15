.class public Lcom/unisound/lib/bind/DeviceSummaryInfo;
.super Ljava/lang/Object;
.source "DeviceSummaryInfo.java"


# instance fields
.field deviceNickName:Ljava/lang/String;

.field environmentLocation:Ljava/lang/String;

.field udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceNickName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironmentLocation()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceNickName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    return-void
.end method

.method public setEnvironmentLocation(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/unisound/lib/bind/DeviceSummaryInfo;->udid:Ljava/lang/String;

    return-void
.end method
