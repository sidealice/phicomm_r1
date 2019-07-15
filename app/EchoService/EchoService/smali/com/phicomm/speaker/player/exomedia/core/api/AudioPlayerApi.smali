.class public interface abstract Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;
.super Ljava/lang/Object;
.source "AudioPlayerApi.java"


# virtual methods
.method public abstract getAudioSessionId()I
.end method

.method public abstract getAvailableTracks()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBufferedPercent()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onMediaPrepared()V
.end method

.method public abstract pause()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract restart()Z
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Landroid/net/Uri;)V
.end method

.method public abstract setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
.end method

.method public abstract setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
.end method

.method public abstract setPlaybackSpeed(F)Z
.end method

.method public abstract setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stopPlayback()V
.end method

.method public abstract trackSelectionAvailable()Z
.end method
