.class public Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;
.super Ljava/lang/Object;
.source "ExoVideoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;
    }
.end annotation


# instance fields
.field protected clearableSurface:Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

.field protected context:Landroid/content/Context;

.field protected exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field protected internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

.field protected listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

.field protected playRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clearableSurface"    # Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    .line 46
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->clearableSurface:Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setup()V

    .line 53
    return-void
.end method


# virtual methods
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
    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-wide/16 v0, 0x0

    .line 155
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-wide/16 v0, 0x0

    .line 147
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected initExoPlayer()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V

    .line 210
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferUpdateListener(Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;)V

    .line 211
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->blockingClearSurface()V

    .line 200
    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 193
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 120
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    .line 121
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->release()V

    .line 180
    return-void
.end method

.method public restart()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->restart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 94
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    .line 106
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    .line 85
    return-void
.end method

.method public setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 2
    .param p1, "listenerMux"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->removeListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->addListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 189
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlaybackSpeed(F)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .locals 1
    .param p1, "trackType"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "trackIndex"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setSelectedTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 168
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 57
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setUri(Landroid/net/Uri;)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_0
.end method

.method public setVolume(F)Z
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setVolume(F)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected setup()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->initExoPlayer()V

    .line 204
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 115
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    .line 116
    return-void
.end method

.method public stopPlayback(Z)V
    .locals 2
    .param p1, "clearSurface"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stop()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->clearableSurface:Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearSurfaceWhenReady(Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V

    .line 135
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->release()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    .line 140
    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method
