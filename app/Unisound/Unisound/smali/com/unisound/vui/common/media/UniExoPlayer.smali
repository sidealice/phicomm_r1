.class public Lcom/unisound/vui/common/media/UniExoPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/unisound/vui/common/media/MusicPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;
    }
.end annotation


# static fields
.field private static final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field public static final MEDIA_STREAM_TYPE:I = 0x3

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x5

.field public static final STATE_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UniExoPlayer"


# instance fields
.field private callback:Lcom/unisound/vui/common/media/MusicPlayer$Callback;

.field private context:Landroid/content/Context;

.field private currentNotifyVolume:I

.field private eventLogger:Lcom/unisound/vui/common/media/EventLogger;

.field private isAutoSetAlarm:Z

.field private isPrepared:Z

.field private final mainHandler:Landroid/os/Handler;

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private playState:I

.field private playWhenReady:Z

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private rendererBuildingState:I

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/unisound/vui/common/media/UniExoPlayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->currentNotifyVolume:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->isAutoSetAlarm:Z

    iput-object p1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/unisound/vui/common/media/UniExoPlayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    sget-object v2, Lcom/unisound/vui/common/media/UniExoPlayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v1, Lcom/unisound/vui/common/media/EventLogger;

    iget-object v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v2}, Lcom/unisound/vui/common/media/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioStreamType(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/unisound/vui/common/media/UniExoPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/unisound/vui/common/media/UniExoPlayer$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/common/media/UniExoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1
    .param p1, "useBandwidthMeter"    # Z

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lcom/unisound/vui/common/media/UniExoPlayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/media/UniExoPlayer;->buildDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "overrideExtension"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

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

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {p0, v2}, Lcom/unisound/vui/common/media/UniExoPlayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0, v2}, Lcom/unisound/vui/common/media/UniExoPlayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->eventLogger:Lcom/unisound/vui/common/media/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    goto :goto_1

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

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->callback:Lcom/unisound/vui/common/media/MusicPlayer$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->callback:Lcom/unisound/vui/common/media/MusicPlayer$Callback;

    iget v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    invoke-interface {v0, v1}, Lcom/unisound/vui/common/media/MusicPlayer$Callback;->onPlayStateChanged(I)V

    :cond_0
    return-void
.end method

.method private prepare(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "playWhenReady"    # Z

    .prologue
    const-string v0, "UniExoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";playWhenReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/media/UniExoPlayer;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->isPrepared:Z

    iput-boolean p2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playWhenReady:Z

    return-void
.end method

.method private resetNotifyVolume()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->isAutoSetAlarm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->currentNotifyVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput-boolean v3, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->isAutoSetAlarm:Z

    :cond_0
    return-void
.end method

.method private setNotificationMaxVolume()V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->currentNotifyVolume:I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->currentNotifyVolume:I

    div-int/lit8 v3, v1, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->isAutoSetAlarm:Z

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .prologue
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/common/media/UniExoPlayer;->buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 3
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->context:Landroid/content/Context;

    const-string v1, "UniExoPlayer"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->userAgent:Ljava/lang/String;

    new-instance v0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    iget-object v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method public getBufferPercent()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playWhenReady:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->isPrepared:Z

    return v0
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->callback:Lcom/unisound/vui/common/media/MusicPlayer$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->callback:Lcom/unisound/vui/common/media/MusicPlayer$Callback;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/common/media/MusicPlayer$Callback;->onPlayerError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x6

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniExoPlayer;->onStateChanged()V

    :cond_1
    return-void

    :pswitch_0
    iput v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->isPrepared:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniExoPlayer;->onStateChanged()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "UniExoPlayer"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniExoPlayer;->onStateChanged()V

    return-void
.end method

.method public play(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "playWhenReady"    # Z

    .prologue
    const-string v0, "UniExoPlayer"

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

    iget v2, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

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

    iget v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniExoPlayer;->onStateChanged()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/common/media/UniExoPlayer;->prepare(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/unisound/vui/common/media/MusicPlayer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/unisound/vui/common/media/MusicPlayer$Callback;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->callback:Lcom/unisound/vui/common/media/MusicPlayer$Callback;

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "UniExoPlayer"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public setRenderer(Lcom/unisound/vui/common/media/MusicPlayer$Renderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/unisound/vui/common/media/MusicPlayer$Renderer;

    .prologue
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "UniExoPlayer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/vui/common/media/UniExoPlayer;->playState:I

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniExoPlayer;->onStateChanged()V

    return-void
.end method
