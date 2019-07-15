.class public Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;
.super Ljava/lang/Object;
.source "ExoAudioPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field protected internalListeners:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

.field protected listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

.field protected playRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;-><init>(Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->context:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferUpdateListener(Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getAvailableTracks()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const-wide/16 v0, 0x0

    .line 164
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-wide/16 v0, 0x0

    .line 155
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public onMediaPrepared()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 123
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    .line 124
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    .line 90
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->release()V

    .line 175
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public restart()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->restart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 144
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    .line 106
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setAudioStreamType(I)V

    .line 190
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 63
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    .line 71
    if-eqz p2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setUri(Landroid/net/Uri;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_0
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    .line 85
    return-void
.end method

.method public setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 2
    .param p1, "listenerMux"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->removeListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .line 219
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->addListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 220
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlaybackSpeed(F)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .locals 1
    .param p1, "type"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "trackIndex"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setSelectedTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 205
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "right"    # F

    .prologue
    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setVolume(F)V

    .line 101
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 195
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 117
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    .line 118
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stop()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    .line 130
    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method
