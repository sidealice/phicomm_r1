.class public interface abstract Lcom/unisound/vui/handler/session/music/CommonPlayer;
.super Ljava/lang/Object;
.source "CommonPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer;,
        Lcom/unisound/vui/handler/session/music/CommonPlayer$PlayerFactory;,
        Lcom/unisound/vui/handler/session/music/CommonPlayer$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCollectMusic(Ljava/lang/String;)V
.end method

.method public abstract appendPlayList(IILjava/util/List;)V
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

.method public abstract batchDeleteCollectMusic(Ljava/lang/String;)V
.end method

.method public abstract collect()V
.end method

.method public abstract deleteCollectMusic(Ljava/lang/String;)V
.end method

.method public abstract getBufferPercent()I
.end method

.method public abstract getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
.end method

.method public abstract getCurrentPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDevicePlayingType()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getItemList()Ljava/util/List;
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

.method public abstract getPlayStatus()I
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract play(I)V
.end method

.method public abstract play(II)V
.end method

.method public abstract play(Ljava/lang/String;)V
.end method

.method public abstract play(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract play(Ljava/util/List;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;III)V"
        }
    .end annotation
.end method

.method public abstract playNext()V
.end method

.method public abstract playPrev()V
.end method

.method public abstract registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V
.end method

.method public abstract setDevicePlayingType(Ljava/lang/String;)V
.end method

.method public abstract setPlayList(Ljava/util/List;)V
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

.method public abstract setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V
.end method

.method public abstract stop()V
.end method
