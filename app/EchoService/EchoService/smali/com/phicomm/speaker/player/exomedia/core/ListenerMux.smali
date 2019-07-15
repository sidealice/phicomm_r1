.class public Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;
.super Ljava/lang/Object;
.source "ListenerMux.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
.implements Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;
    }
.end annotation


# static fields
.field private static final COMPLETED_DURATION_LEEWAY:J = 0x3e8L


# instance fields
.field private bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

.field private clearRequested:Z

.field private clearableSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

.field private delayedHandler:Landroid/os/Handler;

.field private errorListener:Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

.field private metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

.field private muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

.field private notifiedCompleted:Z

.field private notifiedPrepared:Z

.field private preparedListener:Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

.field private seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;)V
    .locals 3
    .param p1, "notifier"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 62
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    .line 63
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    .line 64
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->performPreparedHandlerNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    return-object v0
.end method

.method private notifyCompletionListener()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->shouldNotifyCompletion(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    .line 288
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$2;-><init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyErrorListener(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->errorListener:Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->errorListener:Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;->onError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPreparedListener()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    .line 265
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;-><init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method private performPreparedHandlerNotification()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onPrepared()V

    .line 276
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->preparedListener:Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->preparedListener:Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;->onPrepared()V

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSurfaceWhenReady(Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1, "clearableSurface"    # Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 173
    return-void
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    return v0
.end method

.method public onBufferingUpdate(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onBufferUpdated(I)V

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;->onBufferingUpdate(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->onBufferingUpdate(I)V

    .line 73
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;->onCompletion()V

    .line 80
    :cond_0
    return-void
.end method

.method public onError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exoMediaPlayer"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onMediaPlaybackEnded()V

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onExoPlayerError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    .line 103
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyErrorListener(Ljava/lang/Exception;)Z

    .line 104
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 84
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exception/NativeMediaPlaybackException;

    invoke-direct {v0, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/exception/NativeMediaPlaybackException;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyErrorListener(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyPreparedListener()V

    .line 97
    return-void
.end method

.method public onSeekComplete()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onSeekComplete()V

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    .line 141
    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    .line 92
    :cond_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 108
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onMediaPlaybackEnded()V

    .line 111
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    if-nez v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyCompletionListener()V

    .line 119
    :cond_0
    :goto_0
    if-ne p2, v3, :cond_1

    if-eqz p1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onPreviewImageStateChanged(Z)V

    .line 124
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    if-eqz v1, :cond_2

    .line 125
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    .line 126
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    .line 128
    .local v0, "clearableSurface":Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;
    if-eqz v0, :cond_2

    .line 129
    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;->clearSurface()V

    .line 130
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 133
    .end local v0    # "clearableSurface":Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;
    :cond_2
    return-void

    .line 114
    :cond_3
    if-ne p2, v3, :cond_0

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    if-nez v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyPreparedListener()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unAppliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onVideoSizeChanged(IIIF)V

    .line 162
    return-void
.end method

.method public setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    .line 227
    return-void
.end method

.method public setNotifiedCompleted(Z)V
    .locals 0
    .param p1, "wasNotified"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    .line 256
    return-void
.end method

.method public setNotifiedPrepared(Z)V
    .locals 2
    .param p1, "wasNotified"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    .line 236
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onPreviewImageStateChanged(Z)V

    .line 237
    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    .line 200
    return-void
.end method

.method public setOnCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    .line 191
    return-void
.end method

.method public setOnErrorListener(Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->errorListener:Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

    .line 218
    return-void
.end method

.method public setOnPreparedListener(Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->preparedListener:Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

    .line 182
    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    .line 209
    return-void
.end method
