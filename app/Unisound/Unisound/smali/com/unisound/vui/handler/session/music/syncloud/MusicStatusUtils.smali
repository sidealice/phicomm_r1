.class public Lcom/unisound/vui/handler/session/music/syncloud/MusicStatusUtils;
.super Ljava/lang/Object;
.source "MusicStatusUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static packageDataAllInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/MusicData;
    .locals 2
    .param p0, "playStatus"    # Ljava/lang/String;
    .param p1, "playMode"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/unisound/ant/device/bean/MusicData;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/MusicData;-><init>()V

    .line 22
    .local v0, "data":Lcom/unisound/ant/device/bean/MusicData;
    const-string v1, "play"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setControlCmd(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/bean/MusicData;->setPlayState(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/bean/MusicData;->setPlayMode(Ljava/lang/String;)V

    .line 25
    return-object v0
.end method

.method public static packageDataCollectionStatus(Z)Lcom/unisound/ant/device/bean/MusicData;
    .locals 2
    .param p0, "isCollected"    # Z

    .prologue
    .line 74
    new-instance v0, Lcom/unisound/ant/device/bean/MusicData;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/MusicData;-><init>()V

    .line 75
    .local v0, "data":Lcom/unisound/ant/device/bean/MusicData;
    if-eqz p0, :cond_0

    const-string v1, "collect"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setControlCmd(Ljava/lang/String;)V

    .line 76
    return-object v0

    .line 75
    :cond_0
    const-string v1, "cancelCollect"

    goto :goto_0
.end method

.method public static packageDataPlayMode(Ljava/lang/String;)Lcom/unisound/ant/device/bean/MusicData;
    .locals 2
    .param p0, "playMode"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lcom/unisound/ant/device/bean/MusicData;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/MusicData;-><init>()V

    .line 62
    .local v0, "data":Lcom/unisound/ant/device/bean/MusicData;
    const-string v1, "changeMode"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setControlCmd(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/bean/MusicData;->setPlayMode(Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public static packageDataPlayStatusPause()Lcom/unisound/ant/device/bean/MusicData;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/unisound/ant/device/bean/MusicData;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/MusicData;-><init>()V

    .line 35
    .local v0, "data":Lcom/unisound/ant/device/bean/MusicData;
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setPlayState(Ljava/lang/String;)V

    .line 36
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setControlCmd(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public static packageDataPlayStatusStop()Lcom/unisound/ant/device/bean/MusicData;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/unisound/ant/device/bean/MusicData;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/MusicData;-><init>()V

    .line 47
    .local v0, "data":Lcom/unisound/ant/device/bean/MusicData;
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setPlayState(Ljava/lang/String;)V

    .line 49
    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setControlCmd(Ljava/lang/String;)V

    .line 50
    return-object v0
.end method

.method public static packageDataVolume(I)Lcom/unisound/ant/device/bean/MusicData;
    .locals 2
    .param p0, "volume"    # I

    .prologue
    .line 86
    new-instance v0, Lcom/unisound/ant/device/bean/MusicData;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/MusicData;-><init>()V

    .line 87
    .local v0, "data":Lcom/unisound/ant/device/bean/MusicData;
    const-string v1, "changeVolume"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/MusicData;->setControlCmd(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/bean/MusicData;->setVolume(I)V

    .line 89
    return-object v0
.end method
