.class public interface abstract Lcom/unisound/vui/handler/session/music/player/MusicPlayer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;,
        Lcom/unisound/vui/handler/session/music/player/MusicPlayer$PlayerFactory;,
        Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;
    }
.end annotation


# virtual methods
.method public abstract getBufferPercent()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play(Ljava/lang/String;Z)V
.end method

.method public abstract registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V
.end method

.method public abstract stop()V
.end method
