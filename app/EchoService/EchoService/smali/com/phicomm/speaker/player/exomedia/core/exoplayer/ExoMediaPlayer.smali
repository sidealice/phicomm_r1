.class public Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source "ExoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;,
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;,
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;,
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;,
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;,
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
    }
.end annotation


# static fields
.field private static final BUFFER_REPEAT_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ExoMediaPlayer"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x3e8


# instance fields
.field private final adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

.field private audioSessionId:I

.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private bufferRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

.field private bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

.field private capabilitiesListener:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

.field private captionListener:Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

.field private final context:Landroid/content/Context;

.field private drmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private eventLogger:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/EventLogger;

.field private internalErrorListener:Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private mediaSourceProvider:Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;

.field private metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private prepared:Z

.field private renderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private surface:Landroid/view/Surface;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    .line 93
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 98
    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-direct {v1, v4}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    .line 99
    new-instance v1, Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    .line 105
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    .line 106
    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSourceProvider:Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;

    .line 107
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 114
    iput-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    invoke-direct {v1, p0, v4}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->capabilitiesListener:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    .line 117
    iput v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    .line 120
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->context:Landroid/content/Context;

    .line 122
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->setRepeaterDelay(I)V

    .line 123
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    new-instance v2, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;

    invoke-direct {v2, p0, v4}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->setRepeatListener(Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;)V

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    .line 127
    new-instance v3, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;

    invoke-direct {v3, p0, v4}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    .line 128
    .local v3, "componentListener":Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    .line 129
    .local v0, "rendererProvider":Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->generateDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    .line 131
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->generate()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    .line 133
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    .line 134
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 136
    sget-object v1, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    if-eqz v1, :cond_0

    sget-object v7, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 137
    .local v7, "loadControl":Lcom/google/android/exoplayer2/LoadControl;
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/Renderer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v1, v2, v7}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newInstance([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 138
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 139
    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/EventLogger;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->eventLogger:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/EventLogger;

    .line 140
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->eventLogger:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/EventLogger;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 141
    return-void

    .line 136
    .end local v7    # "loadControl":Lcom/google/android/exoplayer2/LoadControl;
    :cond_0
    new-instance v7, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->captionListener:Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->drmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->internalErrorListener:Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private reportPlayerState()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 525
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v4

    .line 526
    .local v4, "playWhenReady":Z
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v5

    .line 528
    .local v5, "playbackState":I
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v6, v4, v5}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getState(ZI)I

    move-result v3

    .line 529
    .local v3, "newState":I
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v6}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getMostRecentState()I

    move-result v6

    if-eq v3, v6, :cond_4

    .line 530
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v6, v4, v5}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->setMostRecentState(ZI)V

    .line 533
    if-ne v3, v9, :cond_2

    .line 534
    invoke-direct {p0, v8}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    .line 542
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7, v8}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v1

    .line 543
    .local v1, "informSeekCompletion":Z
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v7, v9, [I

    fill-array-data v7, :array_1

    invoke-virtual {v6, v7, v8}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v6

    or-int/2addr v1, v6

    .line 544
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v7, v10, [I

    fill-array-data v7, :array_2

    invoke-virtual {v6, v7, v8}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v6

    or-int/2addr v1, v6

    .line 546
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .line 547
    .local v2, "listener":Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
    invoke-interface {v2, v4, v5}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onStateChanged(ZI)V

    .line 549
    if-eqz v1, :cond_1

    .line 550
    invoke-interface {v2}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onSeekComplete()V

    goto :goto_1

    .line 535
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "informSeekCompletion":Z
    .end local v2    # "listener":Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
    :cond_2
    if-eq v3, v8, :cond_3

    if-ne v3, v10, :cond_0

    .line 536
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    goto :goto_0

    .line 554
    :cond_4
    return-void

    .line 542
    nop

    :array_0
    .array-data 4
        0x64
        0x2
        0x3
    .end array-data

    .line 543
    :array_1
    .array-data 4
        0x2
        0x64
        0x3
    .end array-data

    .line 544
    :array_2
    .array-data 4
        0x64
        0x3
        0x2
        0x3
    .end array-data
.end method

.method private setBufferRepeaterStarted(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 557
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->start()V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    return-void
.end method

.method public blockingClearSurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 221
    :cond_0
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    .line 222
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    .line 223
    return-void
.end method

.method public forcePrepare()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 310
    return-void
.end method

.method protected generateDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 509
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move-object v0, v8

    .line 520
    :goto_0
    return-object v0

    .line 514
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 517
    .local v1, "uuid":Ljava/util/UUID;
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->capabilitiesListener:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v7

    .line 519
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ExoMediaPlayer"

    const-string v2, "Unable to create a DrmSessionManager due to an exception"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 520
    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    return v0
.end method

.method public getAvailableTracks()Ljava/util/Map;
    .locals 11
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
    const/4 v10, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 232
    const/4 v5, 0x0

    .line 251
    :cond_0
    return-object v5

    .line 236
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v5, "trackMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;Lcom/google/android/exoplayer2/source/TrackGroupArray;>;"
    iget-object v8, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v4

    .line 238
    .local v4, "mappedTrackInfo":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    if-eqz v4, :cond_0

    .line 243
    const/4 v8, 0x4

    new-array v7, v8, [Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const/4 v8, 0x0

    sget-object v9, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    aput-object v9, v7, v8

    sget-object v8, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    aput-object v8, v7, v10

    const/4 v8, 0x2

    sget-object v9, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->CLOSED_CAPTION:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->METADATA:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    aput-object v9, v7, v8

    .line 244
    .local v7, "types":[Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    move-object v0, v7

    .local v0, "arr$":[Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 245
    .local v6, "type":Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    invoke-virtual {p0, v6}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getExoPlayerTrackType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;)I

    move-result v1

    .line 246
    .local v1, "exoPlayerTrackIndex":I
    iget v8, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-le v8, v1, :cond_2

    .line 247
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getExoPlayerTrackType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;)I
    .locals 2
    .param p1, "type"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    .prologue
    .line 445
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;->$SwitchMap$com$phicomm$speaker$player$exomedia$ExoMedia$RendererType:[I

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 456
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 447
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 451
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 453
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getSelectedTrackIndex(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;)I
    .locals 6
    .param p1, "type"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    .prologue
    const/4 v4, -0x1

    .line 256
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getExoPlayerTrackType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;)I

    move-result v0

    .line 257
    .local v0, "exoPlayerTrackIndex":I
    iget-object v5, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    .line 258
    .local v1, "mappedTrackInfo":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 259
    .local v3, "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :goto_0
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v5, :cond_2

    .line 269
    :cond_0
    :goto_1
    return v4

    .line 258
    .end local v3    # "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    goto :goto_0

    .line 264
    .restart local v3    # "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_2
    iget-object v5, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v5, v0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    move-result-object v2

    .line 265
    .local v2, "selectionOverride":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v5, v0, :cond_0

    iget v5, v2, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->length:I

    if-lez v5, :cond_0

    .line 269
    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    goto :goto_1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3
    .param p1, "exception"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .line 151
    .local v1, "listener":Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
    invoke-interface {v1, p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    goto :goto_0

    .line 153
    .end local v1    # "listener":Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->reportPlayerState()V

    .line 146
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->reset()V

    .line 322
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 325
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    .line 367
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    .line 370
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 371
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    .line 372
    return-void
.end method

.method public removeListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    return-void
.end method

.method public restart()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 351
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v0

    .line 352
    .local v0, "playbackState":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 353
    const/4 v1, 0x0

    .line 362
    :goto_0
    return v1

    .line 356
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->forcePrepare()V

    .line 360
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "positionMs"    # J

    .prologue
    .line 341
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 342
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->isLastReportedPlayWhenReady()Z

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->setMostRecentState(ZI)V

    .line 343
    return-void
.end method

.method protected sendMessage(IILjava/lang/Object;)V
    .locals 1
    .param p1, "renderType"    # I
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    .line 461
    return-void
.end method

.method protected sendMessage(IILjava/lang/Object;Z)V
    .locals 5
    .param p1, "renderType"    # I
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "blocking"    # Z

    .prologue
    .line 464
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    :goto_0
    return-void

    .line 468
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;>;"
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;

    .line 470
    .local v2, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 471
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {v3, v2, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    .end local v2    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_2
    if-eqz p4, :cond_3

    .line 476
    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 296
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getAudioUsageForStreamType(I)I

    move-result v2

    .line 298
    .local v2, "usage":I
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getAudioContentTypeForStreamType(I)I

    move-result v1

    .line 300
    .local v1, "contentType":I
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    .line 305
    .local v0, "audioAttributes":Lcom/google/android/exoplayer2/audio/AudioAttributes;
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;)V

    .line 306
    return-void
.end method

.method public setBufferUpdateListener(Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    .line 192
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    .line 193
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCaptionListener(Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->captionListener:Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

    .line 201
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 0
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->drmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 165
    return-void
.end method

.method public setInternalErrorListener(Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->internalErrorListener:Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

    .line 197
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 175
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    .line 176
    return-void
.end method

.method public setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    .line 205
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 336
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    .line 338
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 383
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 384
    .local v0, "params":Lcom/google/android/exoplayer2/PlaybackParameters;
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 386
    const/4 v1, 0x1

    return v1
.end method

.method public setSelectedTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .locals 8
    .param p1, "type"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x1

    .line 274
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getExoPlayerTrackType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;)I

    move-result v0

    .line 275
    .local v0, "exoPlayerTrackIndex":I
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    .line 276
    .local v2, "mappedTrackInfo":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    if-nez v2, :cond_1

    const/4 v4, 0x0

    .line 277
    .local v4, "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :goto_0
    if-eqz v4, :cond_0

    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v6, :cond_2

    .line 288
    :cond_0
    :goto_1
    return-void

    .line 276
    .end local v4    # "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_1
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    goto :goto_0

    .line 282
    .restart local v4    # "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_2
    new-array v5, v7, [I

    const/4 v6, 0x0

    aput p2, v5, v6

    .line 283
    .local v5, "tracks":[I
    array-length v6, v5

    if-ne v6, v7, :cond_3

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;-><init>()V

    .line 284
    .local v1, "factory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    :goto_2
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    invoke-direct {v3, v1, v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V

    .line 287
    .local v3, "selectionOverride":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v6, v0, v4, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V

    goto :goto_1

    .line 283
    .end local v1    # "factory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .end local v3    # "selectionOverride":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    :cond_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    goto :goto_2
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    .line 209
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    .line 210
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSourceProvider:Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;->generate(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 169
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .prologue
    .line 291
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "wasHeld":Z
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const/4 v1, 0x1

    .line 422
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 429
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 430
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 431
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_2

    .line 432
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 433
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 441
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    .line 442
    return-void

    .line 435
    .restart local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    const-string v2, "ExoMediaPlayer"

    const-string v3, "Unable to acquire WAKE_LOCK due to a null power manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_3
    const-string v2, "ExoMediaPlayer"

    const-string v3, "Unable to acquire WAKE_LOCK due to missing manifest permission"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected stayAwake(Z)V
    .locals 4
    .param p1, "awake"    # Z

    .prologue
    .line 490
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 496
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 331
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 333
    :cond_0
    return-void
.end method
