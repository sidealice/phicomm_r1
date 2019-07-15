.class public Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;
.super Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;
.source "NativeSurfaceVideoView.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;
.implements Lcom/phicomm/speaker/player/exomedia/core/api/VideoViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

.field protected touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
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
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 123
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onVideoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->updateVideoSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    .line 202
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->pause()V

    .line 87
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public restart()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->restart()Z

    move-result v0

    return v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->seekTo(J)V

    .line 102
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 0
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 76
    return-void
.end method

.method public setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 1
    .param p1, "listenerMux"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    .line 195
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 266
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 256
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 288
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 298
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 246
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 276
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    .line 129
    invoke-super {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setPlaybackSpeed(F)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .locals 0
    .param p1, "trackType"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "trackIndex"    # I

    .prologue
    .line 185
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 234
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    .line 235
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->invalidate()V

    .line 236
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 135
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 140
    return-void
.end method

.method public setVolume(F)Z
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-direct {v0, p1, p0, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    .line 303
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 305
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setFocusable(Z)V

    .line 306
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->setFocusableInTouchMode(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->requestFocus()Z

    .line 309
    invoke-virtual {p0, v2, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->updateVideoSize(II)Z

    .line 310
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    .line 81
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->requestFocus()Z

    .line 82
    return-void
.end method

.method public stopPlayback(Z)V
    .locals 1
    .param p1, "clearSurface"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->stopPlayback(Z)V

    .line 165
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->suspend()V

    .line 210
    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public videoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->updateVideoSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    .line 114
    :cond_0
    return-void
.end method
