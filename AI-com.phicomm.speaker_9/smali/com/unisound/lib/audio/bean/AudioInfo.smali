.class public Lcom/unisound/lib/audio/bean/AudioInfo;
.super Ljava/lang/Object;
.source "AudioInfo.java"


# instance fields
.field private controlCmd:Ljava/lang/String;

.field private currentSongInfo:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

.field private isCollected:Z

.field private itemId:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private playState:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlCmd()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->controlCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSongInfo()Lcom/unisound/lib/audio/bean/AudioCurrentInfo;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->currentSongInfo:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->playState:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->volume:I

    return v0
.end method

.method public isIsCollected()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->isCollected:Z

    return v0
.end method

.method public setControlCmd(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->controlCmd:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSongInfo(Lcom/unisound/lib/audio/bean/AudioCurrentInfo;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->currentSongInfo:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    return-void
.end method

.method public setIsCollected(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->isCollected:Z

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->playMode:Ljava/lang/String;

    return-void
.end method

.method public setPlayState(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->playState:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->volume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioInfo{playMode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->playMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", volume="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->volume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCollected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->isCollected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->playState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currentSongInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->currentSongInfo:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", itemId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", controlCmd=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioInfo;->controlCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
