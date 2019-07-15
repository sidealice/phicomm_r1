.class public interface abstract Lcom/unisound/vui/handler/session/music/PlayController;
.super Ljava/lang/Object;
.source "PlayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    }
.end annotation


# virtual methods
.method public abstract appendPlaylist(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelCollect()V
.end method

.method public abstract collect()V
.end method

.method public abstract configMediaPlayerState()V
.end method

.method public abstract fastForward(I)V
.end method

.method public abstract getBufferPercent()I
.end method

.method public abstract getCurrPlayItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
.end method

.method public abstract getCurrentPostion()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
.end method

.method public abstract getPlaybackStatus()I
.end method

.method public abstract isCollected()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play(Z)V
.end method

.method public abstract play(ZLjava/lang/String;)V
.end method

.method public abstract playNext()V
.end method

.method public abstract playPrev()V
.end method

.method public abstract registerMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method

.method public abstract rewind(I)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setBeginIndex(I)V
.end method

.method public abstract setPlayMode(Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)V
.end method

.method public abstract setPlaylist(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract skipToNext(Z)V
.end method

.method public abstract skipToPrevious(Z)V
.end method

.method public abstract skipToQueueItem(IZ)V
.end method

.method public abstract stop()V
.end method

.method public abstract unRegisterMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V
.end method
