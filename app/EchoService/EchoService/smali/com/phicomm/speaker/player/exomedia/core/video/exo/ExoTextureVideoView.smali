.class public Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;
.super Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;
.source "ExoTextureVideoView.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/api/VideoViewApi;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

    .line 63
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
    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onVideoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->updateVideoSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->requestLayout()V

    .line 170
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->pause()V

    .line 108
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->release()V

    .line 158
    return-void
.end method

.method public restart()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->restart()Z

    move-result v0

    return v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->seekTo(J)V

    .line 93
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    .line 78
    return-void
.end method

.method public setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 1
    .param p1, "listenerMux"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    .line 163
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setPlaybackSpeed(F)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .locals 1
    .param p1, "trackType"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "trackIndex"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 148
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;)V

    .line 68
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 73
    return-void
.end method

.method public setVolume(F)Z
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->setVolume(F)Z

    move-result v0

    return v0
.end method

.method protected setup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    .line 175
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 176
    invoke-virtual {p0, v2, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->updateVideoSize(II)Z

    .line 177
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->start()V

    .line 103
    return-void
.end method

.method public stopPlayback(Z)V
    .locals 1
    .param p1, "clearSurface"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->stopPlayback(Z)V

    .line 113
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->suspend()V

    .line 118
    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->trackSelectionAvailable()Z

    move-result v0

    return v0
.end method
