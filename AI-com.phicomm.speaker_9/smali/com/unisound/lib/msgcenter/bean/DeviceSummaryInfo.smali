.class public Lcom/unisound/lib/msgcenter/bean/DeviceSummaryInfo;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "DeviceSummaryInfo.java"


# instance fields
.field deviceNickName:Ljava/lang/String;

.field environmentLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/unisound/lib/msgcenter/bean/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceNickName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironmentLocation()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceNickName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceSummaryInfo;->deviceNickName:Ljava/lang/String;

    return-void
.end method

.method public setEnvironmentLocation(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/DeviceSummaryInfo;->environmentLocation:Ljava/lang/String;

    return-void
.end method
