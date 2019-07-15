.class public Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;
.super Ljava/lang/Object;
.source "NativeVideoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;,
        Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;,
        Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;
    }
.end annotation


# instance fields
.field protected callback:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;

.field protected clearableSurface:Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

.field protected context:Landroid/content/Context;

.field protected currentBufferPercent:I

.field protected currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

.field protected listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

.field protected mediaPlayer:Landroid/media/MediaPlayer;

.field protected onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field protected onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field protected playRequested:Z

.field protected requestedSeek:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;
    .param p3, "clearableSurface"    # Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 75
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    .line 85
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->callback:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;

    .line 87
    iput-object p3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->clearableSurface:Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    .line 89
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->initMediaPlayer()V

    .line 90
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 91
    return-void
.end method


# virtual methods
.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 143
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentBufferPercent:I

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    const-wide/16 v0, 0x0

    .line 125
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    const-wide/16 v0, 0x0

    .line 117
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method protected initMediaPlayer()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 321
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 322
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 323
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 324
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 325
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 326
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 327
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 329
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 331
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 313
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    .line 316
    :cond_0
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 303
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->seekTo(J)V

    .line 306
    :cond_2
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    goto :goto_0
.end method

.method protected openVideo(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 338
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 342
    :cond_0
    iput v4, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentBufferPercent:I

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 346
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 347
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 349
    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v1, "ContentValues"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 354
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 350
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 106
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PAUSED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 110
    return-void
.end method

.method public restart()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v2, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v1, v2, :cond_0

    .line 204
    :goto_0
    return v0

    .line 197
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->seekTo(J)V

    .line 198
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    .line 201
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 202
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 204
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-wide p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    goto :goto_0
.end method

.method public setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 0
    .param p1, "listenerMux"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .line 228
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 233
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 263
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 253
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 285
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 295
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 243
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 273
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
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
    .line 218
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->headers:Ljava/util/Map;

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 222
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->openVideo(Landroid/net/Uri;)V

    .line 223
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 96
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PLAYING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 101
    return-void
.end method

.method public stopPlayback(Z)V
    .locals 3
    .param p1, "clearSurface"    # Z

    .prologue
    .line 159
    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 161
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->clearableSurface:Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearSurfaceWhenReady(Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V

    .line 173
    :cond_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContentValues"

    const-string v2, "stopPlayback: error calling mediaPlayer.stop()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 180
    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 184
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 190
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContentValues"

    const-string v2, "stopPlayback: error calling mediaPlayer.reset() or mediaPlayer.release()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
