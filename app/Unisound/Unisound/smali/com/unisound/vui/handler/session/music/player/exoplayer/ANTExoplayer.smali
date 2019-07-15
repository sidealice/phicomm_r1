.class public Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;
.super Ljava/lang/Object;
.source "ANTExoplayer.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/player/MusicPlayer;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer$ExoplayerFactory;
    }
.end annotation


# static fields
.field private static final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private static final TAG:Ljava/lang/String; = "ANTExoplayer"


# instance fields
.field private callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

.field private context:Landroid/content/Context;

.field private eventLogger:Lcom/unisound/vui/common/media/EventLogger;

.field private isPrepared:Z

.field private final mainHandler:Landroid/os/Handler;

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private playState:I

.field private playWhenReady:Z

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->context:Landroid/content/Context;

    .line 63
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    iput-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "renderersFactory":Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    sget-object v2, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 67
    .local v1, "videoTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 68
    new-instance v2, Lcom/unisound/vui/common/media/EventLogger;

    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v3}, Lcom/unisound/vui/common/media/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    .line 69
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 70
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 71
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mainHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1
    .param p1, "useBandwidthMeter"    # Z

    .prologue
    .line 263
    if-eqz p1, :cond_0

    sget-object v0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->buildDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "overrideExtension"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v6

    .line 237
    .local v6, "type":I
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    .end local v6    # "type":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 239
    .restart local v6    # "type":I
    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 247
    :goto_1
    return-object v0

    .line 242
    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    goto :goto_1

    .line 245
    :pswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    goto :goto_1

    .line 247
    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    goto :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onStateChanged()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    iget v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;->onPlayStateChanged(I)V

    .line 216
    :cond_0
    return-void
.end method

.method private prepare(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 75
    const-string v1, "ANTExoplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";playWhenReady : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 77
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 78
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 79
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->isPrepared:Z

    .line 81
    iput-boolean p2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playWhenReady:Z

    .line 82
    return-void
.end method


# virtual methods
.method public buildDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .prologue
    .line 267
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->context:Landroid/content/Context;

    .line 268
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 267
    return-object v0
.end method

.method public buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 3
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->context:Landroid/content/Context;

    const-string v1, "ANTExoplayer"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->userAgent:Ljava/lang/String;

    .line 273
    new-instance v0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method public getBufferPercent()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 135
    const-string v0, "ANTExoplayer"

    const-string v1, "getCurrentPosition"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 126
    const-string v0, "ANTExoplayer"

    const-string v1, "seekTo"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playWhenReady:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 144
    iget v1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 145
    .local v0, "isPlaying":Z
    :goto_0
    const-string v1, "ANTExoplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return v0

    .line 144
    .end local v0    # "isPlaying":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->isPrepared:Z

    return v0
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 209
    const-string v0, "ANTExoplayer"

    const-string v1, "onPlaybackParametersChanged:"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    .line 198
    const-string v0, "ANTExoplayer"

    const-string v1, "onPositionDiscontinuity:"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;->onPlayerError(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x6

    .line 171
    const-string v0, "ANTExoplayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged playWhenReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    packed-switch p2, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->onStateChanged()V

    .line 195
    :cond_1
    return-void

    .line 174
    :pswitch_0
    iput v3, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    goto :goto_0

    .line 177
    :pswitch_1
    iget v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    if-ne v0, v3, :cond_1

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->isPrepared:Z

    .line 181
    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->onStateChanged()V

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "ANTExoplayer"

    const-string v1, "onPositionDiscontinuity:"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 158
    const-string v0, "ANTExoplayer"

    const-string v1, "onTimelineChanged:"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 2
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 163
    const-string v0, "ANTExoplayer"

    const-string v1, "onTracksChanged:"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "ANTExoplayer"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    .line 105
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->onStateChanged()V

    .line 106
    return-void
.end method

.method public play(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 89
    const-string v0, "ANTExoplayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";playState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";playWhenReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    .line 95
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->onStateChanged()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->prepare(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .line 151
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "ANTExoplayer"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 118
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 121
    const-string v0, "ANTExoplayer"

    const-string v1, "seekTo"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 123
    return-void
.end method

.method public setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;

    .prologue
    .line 155
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "ANTExoplayer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->playState:I

    .line 112
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/exoplayer/ANTExoplayer;->onStateChanged()V

    .line 113
    return-void
.end method
