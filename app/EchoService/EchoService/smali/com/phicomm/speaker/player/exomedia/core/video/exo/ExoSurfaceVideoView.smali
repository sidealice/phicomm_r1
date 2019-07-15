.class public Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;
.super Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;
.source "ExoSurfaceVideoView.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/api/VideoViewApi;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->setup()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->setup()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->setup()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->setup()V

    .line 62
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
    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onVideoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->updateVideoSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->requestLayout()V

    .line 169
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->pause()V

    .line 107
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->release()V

    .line 157
    return-void
.end method

.method public restart()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->restart()Z

    move-result v0

    return v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->seekTo(J)V

    .line 92
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    .line 77
    return-void
.end method

.method public setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 1
    .param p1, "listenerMux"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    .line 162
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setPlaybackSpeed(F)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .locals 1
    .param p1, "trackType"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "trackIndex"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 147
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;)V

    .line 67
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 72
    return-void
.end method

.method public setVolume(F)Z
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setVolume(F)Z

    move-result v0

    return v0
.end method

.method protected setup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    .line 174
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 175
    invoke-virtual {p0, v2, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->updateVideoSize(II)Z

    .line 176
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->start()V

    .line 102
    return-void
.end method

.method public stopPlayback(Z)V
    .locals 1
    .param p1, "clearSurface"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->stopPlayback(Z)V

    .line 112
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->suspend()V

    .line 117
    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->trackSelectionAvailable()Z

    move-result v0

    return v0
.end method
