.class public interface abstract Lcom/phicomm/speaker/player/interfaces/Player;
.super Ljava/lang/Object;
.source "Player.java"


# virtual methods
.method public abstract ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;
.end method

.method public abstract getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
.end method

.method public abstract getPlayMode()I
.end method

.method public abstract getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()Z
.end method

.method public abstract play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
.end method

.method public abstract playIndex(IZ)Z
.end method

.method public abstract playNext(Z)Z
.end method

.method public abstract playPre(Z)Z
.end method

.method public abstract setPlayMode(I)Z
.end method

.method public abstract start()Z
.end method

.method public abstract startFadeIn(J)Z
.end method

.method public abstract startServer()V
.end method

.method public abstract stop()Z
.end method

.method public abstract stopFadeOut(J)Z
.end method

.method public abstract stopServer()V
.end method
