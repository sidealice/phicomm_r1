.class public Lcom/phicomm/speaker/player/exomedia/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/AudioPlayer$1;,
        Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;
    }
.end annotation


# instance fields
.field protected audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

.field protected listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

.field protected overriddenDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceUtil"    # Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->overriddenDuration:J

    .line 61
    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;->supportsExoPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->init(Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;)V

    .line 62
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;)V
    .locals 2
    .param p1, "audioPlayerImpl"    # Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->overriddenDuration:J

    .line 65
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->init(Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;)V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/exomedia/AudioPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/AudioPlayer;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->onPlaybackEnded()V

    return-void
.end method

.method private onPlaybackEnded()V
    .locals 0

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->pause()V

    .line 379
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->getAudioSessionId()I

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
    .line 316
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->overriddenDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 249
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->overriddenDuration:J

    .line 252
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected init(Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;)V
    .locals 3
    .param p1, "audioPlayerImpl"    # Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    .line 71
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;-><init>(Lcom/phicomm/speaker/player/exomedia/AudioPlayer;Lcom/phicomm/speaker/player/exomedia/AudioPlayer$1;)V

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;-><init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    .line 73
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public overrideDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 263
    iput-wide p1, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->overriddenDuration:J

    .line 264
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->pause()V

    .line 224
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->prepareAsync()V

    .line 150
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->release()V

    .line 238
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->stopPlayback()V

    .line 186
    invoke-virtual {p0, v0, v0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->reset()V

    .line 189
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "milliSeconds"    # J

    .prologue
    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->seekTo(J)V

    .line 200
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setAudioStreamType(I)V

    .line 107
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setDataSource(Landroid/net/Uri;)V

    .line 117
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->overrideDuration(J)V

    .line 118
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 129
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->overrideDuration(J)V

    .line 130
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    .line 142
    return-void
.end method

.method public setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V

    .line 371
    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setOnBufferUpdateListener(Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;)V

    .line 344
    return-void
.end method

.method public setOnCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setOnCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;)V

    .line 335
    return-void
.end method

.method public setOnErrorListener(Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setOnErrorListener(Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;)V

    .line 362
    return-void
.end method

.method public setOnPreparedListener(Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setOnPreparedListener(Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;)V

    .line 326
    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setOnSeekCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;)V

    .line 353
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setPlaybackSpeed(F)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .locals 1
    .param p1, "trackType"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "trackIndex"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 307
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setVolume(FF)V

    .line 160
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->setWakeMode(Landroid/content/Context;I)V

    .line 178
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->start()V

    .line 217
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->stopPlayback()V

    .line 231
    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->trackSelectionAvailable()Z

    move-result v0

    return v0
.end method
