.class public Lcom/unisound/lib/msgcenter/bean/MusicInfo;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "MusicInfo.java"


# static fields
.field public static final MUSIC_STATE_PAUSE:Ljava/lang/String; = "pause"

.field public static final MUSIC_STATE_PLAYING:Ljava/lang/String; = "playing"

.field public static final MUSIC_STATE_STOP:Ljava/lang/String; = "stop"


# instance fields
.field private controlCmd:Ljava/lang/String;

.field private currentSongInfo:Lcom/unisound/lib/msgcenter/bean/SongInfo;

.field private isCollected:Z

.field private itemId:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private playState:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlCmd()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->controlCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSongInfo()Lcom/unisound/lib/msgcenter/bean/SongInfo;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->currentSongInfo:Lcom/unisound/lib/msgcenter/bean/SongInfo;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->playState:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->volume:I

    return v0
.end method

.method public isCollected()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->isCollected:Z

    return v0
.end method

.method public setCollected(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->isCollected:Z

    return-void
.end method

.method public setControlCmd(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->controlCmd:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSongInfo(Lcom/unisound/lib/msgcenter/bean/SongInfo;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->currentSongInfo:Lcom/unisound/lib/msgcenter/bean/SongInfo;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->playMode:Ljava/lang/String;

    return-void
.end method

.method public setPlayState(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->playState:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->volume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicInfo{currentSongInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->currentSongInfo:Lcom/unisound/lib/msgcenter/bean/SongInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->playMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->playState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", volume="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->volume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", controlCmd=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->controlCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->isCollected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
