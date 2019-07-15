.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;
.super Ljava/lang/Object;
.source "MusicInfo.java"


# static fields
.field public static final MUSIC_STATE_PAUSE:Ljava/lang/String; = "pause"

.field public static final MUSIC_STATE_PLAYING:Ljava/lang/String; = "playing"

.field public static final MUSIC_STATE_STOP:Ljava/lang/String; = "stop"


# instance fields
.field private controlCmd:Ljava/lang/String;

.field private currentSongInfo:Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

.field private isCollected:Z

.field private itemId:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private playState:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getControlCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->controlCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSongInfo()Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->currentSongInfo:Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->playState:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->volume:I

    return v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->isCollected:Z

    return v0
.end method

.method public setCollected(Z)V
    .locals 0
    .param p1, "collected"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->isCollected:Z

    .line 29
    return-void
.end method

.method public setControlCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "controlCmd"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->controlCmd:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCurrentSongInfo(Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;)V
    .locals 0
    .param p1, "currentSongInfo"    # Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->currentSongInfo:Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    .line 45
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->itemId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "playMode"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->playMode:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPlayState(Ljava/lang/String;)V
    .locals 0
    .param p1, "playState"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->playState:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->volume:I

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicInfo{currentSongInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->currentSongInfo:Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playMode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->playMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playState=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->playState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", controlCmd=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->controlCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicInfo;->isCollected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
