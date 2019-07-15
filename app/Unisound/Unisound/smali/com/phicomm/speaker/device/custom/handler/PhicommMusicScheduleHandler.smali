.class public Lcom/phicomm/speaker/device/custom/handler/PhicommMusicScheduleHandler;
.super Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;
.source "PhicommMusicScheduleHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected isInMusicStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    .line 16
    .local v0, "deviceStatus":I
    const-string v2, "AbstractMusicScheduleHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
