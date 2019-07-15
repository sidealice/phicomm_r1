.class public interface abstract Lcom/unisound/vui/handler/session/music/impl/IMusicController;
.super Ljava/lang/Object;
.source "IMusicController.java"


# virtual methods
.method public abstract exit()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playNext()V
.end method

.method public abstract playPrev()V
.end method

.method public abstract playRandomMusic()V
.end method

.method public abstract playSpecifiedMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract playSpecifiedMusic(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V
.end method
