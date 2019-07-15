.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xb

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x7

.field public static final MSG_LOADING_CHANGED:I = 0x1

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field public static final MSG_PLAYBACK_PARAMETERS_CHANGED:I = 0x6

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x4

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x7

.field private static final MSG_RELEASE:I = 0x6

.field public static final MSG_SEEK_ACK:I = 0x3

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xc

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xd

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x5

.field public static final MSG_STATE_CHANGED:I = 0x0

.field private static final MSG_STOP:I = 0x5

.field public static final MSG_TRACKS_CHANGED:I = 0x2

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERER_TIMESTAMP_OFFSET_US:I = 0x3938700

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private final mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private pendingInitialSeekCount:I

.field private pendingPrepareCount:I

.field private pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private final standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;ZIZLandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 7
    .param p1, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p4, "playWhenReady"    # Z
    .param p5, "repeatMode"    # I
    .param p6, "shuffleModeEnabled"    # Z
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 141
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 142
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 143
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 144
    iput p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 145
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 146
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 148
    iput-object p8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 150
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 151
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 152
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 153
    aget-object v0, p1, v6

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Renderer;->setIndex(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, p1, v6

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v1

    aput-object v1, v0, v6

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 157
    new-array v0, v3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    .line 161
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 162
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 166
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method private disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne p1, v0, :cond_0

    .line 861
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 862
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 864
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 865
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 866
    return-void
.end method

.method private doSomeWork()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 541
    .local v8, "operationStartTimeMs":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 542
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v15, :cond_0

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 545
    const-wide/16 v16, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 634
    :goto_0
    return-void

    .line 549
    :cond_0
    const-string v15, "doSomeWork"

    invoke-static {v15}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 552
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    invoke-interface/range {v15 .. v17}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 554
    const/4 v4, 0x1

    .line 555
    .local v4, "allRenderersEnded":Z
    const/4 v5, 0x1

    .line 556
    .local v5, "allRenderersReadyOrEnded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    aget-object v11, v16, v15

    .line 560
    .local v11, "renderer":Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-interface {v11, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    .line 561
    if-eqz v4, :cond_3

    invoke-interface {v11}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v4, 0x1

    .line 566
    :goto_2
    invoke-interface {v11}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-interface {v11}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v18

    if-nez v18, :cond_1

    .line 567
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererWaitingForNextStream(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_1
    const/4 v14, 0x1

    .line 568
    .local v14, "rendererReadyOrEnded":Z
    :goto_3
    if-nez v14, :cond_2

    .line 569
    invoke-interface {v11}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 571
    :cond_2
    if-eqz v5, :cond_5

    if-eqz v14, :cond_5

    const/4 v5, 0x1

    .line 556
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 561
    .end local v14    # "rendererReadyOrEnded":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 567
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 571
    .restart local v14    # "rendererReadyOrEnded":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 574
    .end local v11    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v14    # "rendererReadyOrEnded":Z
    :cond_6
    if-nez v5, :cond_7

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 579
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v15, :cond_8

    .line 580
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v15}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v10

    .line 581
    .local v10, "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v10, v15}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 584
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 585
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v15, v10}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 587
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 591
    .end local v10    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v12, v15, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    .line 592
    .local v12, "playingPeriodDurationUs":J
    if-eqz v4, :cond_b

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v12, v16

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-gtz v15, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v15, v15, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-eqz v15, :cond_b

    .line 596
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 619
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    aget-object v11, v16, v15

    .line 621
    .restart local v11    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v11}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 620
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 598
    .end local v11    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v15, v15

    if-lez v15, :cond_d

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    .line 601
    move/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->haveSufficientBuffer(ZJ)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v6, 0x1

    .line 603
    .local v6, "isNewlyReady":Z
    :goto_7
    if-eqz v6, :cond_a

    .line 604
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 605
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v15, :cond_a

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    .line 601
    .end local v6    # "isNewlyReady":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    .line 602
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v6

    goto :goto_7

    .line 609
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v15, v15

    if-lez v15, :cond_f

    move v7, v5

    .line 612
    .local v7, "isStillReady":Z
    :goto_8
    if-nez v7, :cond_a

    .line 613
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 614
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto/16 :goto_5

    .line 611
    .end local v7    # "isStillReady":Z
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v7

    goto :goto_8

    .line 625
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 626
    :cond_12
    const-wide/16 v16, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 633
    :goto_9
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto/16 :goto_0

    .line 627
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v15, v15

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_14

    .line 628
    const-wide/16 v16, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 630
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9
.end method

.method private enableRenderer(IZI)V
    .locals 12
    .param p1, "rendererIndex"    # I
    .param p2, "wasRendererEnabled"    # Z
    .param p3, "enabledRendererIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1491
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v0, v4, p1

    .line 1492
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    aput-object v0, v4, p3

    .line 1493
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v4

    if-nez v4, :cond_4

    .line 1494
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v1, v4, p1

    .line 1496
    .local v1, "rendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v10

    .line 1498
    .local v10, "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    invoke-static {v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 1500
    .local v2, "formats":[Lcom/google/android/exoplayer2/Format;
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    move v11, v6

    .line 1502
    .local v11, "playing":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v11, :cond_1

    .line 1504
    .local v6, "joining":Z
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, p1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1506
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v7

    .line 1504
    invoke-interface/range {v0 .. v8}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V

    .line 1507
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v9

    .line 1508
    .local v9, "mediaClock":Lcom/google/android/exoplayer2/util/MediaClock;
    if-eqz v9, :cond_3

    .line 1509
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v3, :cond_2

    .line 1510
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Multiple renderer media clocks enabled."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    throw v3

    .end local v6    # "joining":Z
    .end local v9    # "mediaClock":Lcom/google/android/exoplayer2/util/MediaClock;
    .end local v11    # "playing":Z
    :cond_0
    move v11, v3

    .line 1500
    goto :goto_0

    .restart local v11    # "playing":Z
    :cond_1
    move v6, v3

    .line 1502
    goto :goto_1

    .line 1513
    .restart local v6    # "joining":Z
    .restart local v9    # "mediaClock":Lcom/google/android/exoplayer2/util/MediaClock;
    :cond_2
    iput-object v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1514
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1515
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1518
    :cond_3
    if-eqz v11, :cond_4

    .line 1519
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .line 1522
    .end local v1    # "rendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    .end local v2    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v6    # "joining":Z
    .end local v9    # "mediaClock":Lcom/google/android/exoplayer2/util/MediaClock;
    .end local v10    # "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v11    # "playing":Z
    :cond_4
    return-void
.end method

.method private enableRenderers([ZI)V
    .locals 4
    .param p1, "rendererWasEnabledFlags"    # [Z
    .param p2, "totalEnabledRendererCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1480
    new-array v3, p2, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 1481
    const/4 v0, 0x0

    .line 1482
    .local v0, "enabledRendererCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1483
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 1484
    aget-boolean v3, p1, v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "enabledRendererCount":I
    .local v1, "enabledRendererCount":I
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderer(IZI)V

    move v0, v1

    .line 1482
    .end local v1    # "enabledRendererCount":I
    .restart local v0    # "enabledRendererCount":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 855
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    .line 857
    :cond_0
    return-void
.end method

.method private static getFormats(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;
    .locals 4
    .param p0, "newSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1532
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v2

    .line 1533
    .local v2, "length":I
    :goto_0
    new-array v0, v2, [Lcom/google/android/exoplayer2/Format;

    .line 1534
    .local v0, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1535
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1534
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1532
    .end local v0    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1537
    .restart local v0    # "formats":[Lcom/google/android/exoplayer2/Format;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    return-object v0
.end method

.method private getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 7
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1263
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "period"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "period"    # Lcom/google/android/exoplayer2/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared()V

    .line 1418
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1421
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1422
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1424
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handleSourceInfoRefreshEndedPlayback()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1150
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(II)V

    .line 1151
    return-void
.end method

.method private handleSourceInfoRefreshEndedPlayback(II)V
    .locals 12
    .param p1, "prepareAcks"    # I
    .param p2, "seekAcks"    # I

    .prologue
    const/4 v11, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1154
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1155
    .local v10, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v11

    .line 1159
    .local v1, "firstPeriodIndex":I
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(IJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1160
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1162
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide/16 v6, 0x0

    move v5, v1

    move-wide v8, v2

    .line 1163
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(IJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 1162
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(IILcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 1165
    invoke-direct {p0, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 1166
    return-void

    .line 1155
    .end local v1    # "firstPeriodIndex":I
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 1156
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1155
    invoke-virtual {v10, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    goto :goto_0
.end method

.method private handleSourceInfoRefreshed(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V
    .locals 43
    .param p1, "sourceRefreshInfo"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 976
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->source:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eq v4, v6, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 981
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v34, v0

    .line 982
    .local v34, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v22, v0

    .line 983
    .local v22, "timeline":Lcom/google/android/exoplayer2/Timeline;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->manifest:Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 984
    .local v31, "manifest":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->setTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 987
    if-nez v34, :cond_7

    .line 988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    move/from16 v41, v0

    .line 989
    .local v41, "processedPrepareAcks":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 990
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    if-lez v4, :cond_3

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v36

    .line 992
    .local v36, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    move/from16 v40, v0

    .line 993
    .local v40, "processedInitialSeekCount":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 994
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 995
    if-nez v36, :cond_1

    .line 998
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(II)V

    goto :goto_0

    .line 1000
    :cond_1
    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1001
    .local v23, "periodIndex":I
    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1002
    .local v8, "positionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    .line 1003
    move/from16 v0, v23

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v5

    .line 1004
    .local v5, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x0

    :goto_1
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1006
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(II)V

    goto/16 :goto_0

    :cond_2
    move-wide v6, v8

    .line 1004
    goto :goto_1

    .line 1008
    .end local v5    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v8    # "positionUs":J
    .end local v23    # "periodIndex":I
    .end local v36    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v40    # "processedInitialSeekCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v10

    if-nez v4, :cond_6

    .line 1009
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1010
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(II)V

    goto/16 :goto_0

    .line 1012
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 1013
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1012
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v30

    .line 1014
    .local v30, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1015
    .restart local v23    # "periodIndex":I
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1016
    .local v14, "startPositionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    move/from16 v0, v23

    invoke-virtual {v4, v0, v14, v15}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v5

    .line 1018
    .restart local v5    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1019
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v12, 0x0

    :goto_2
    move-object v11, v5

    .line 1018
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1020
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(II)V

    goto/16 :goto_0

    :cond_5
    move-wide v12, v14

    .line 1019
    goto :goto_2

    .line 1023
    .end local v5    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v14    # "startPositionUs":J
    .end local v23    # "periodIndex":I
    .end local v30    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(II)V

    goto/16 :goto_0

    .line 1028
    .end local v41    # "processedPrepareAcks":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move/from16 v37, v0

    .line 1029
    .local v37, "playingPeriodIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v35, v0

    .line 1031
    .local v35, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_3
    if-nez v35, :cond_9

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    move/from16 v0, v37

    if-lt v0, v4, :cond_9

    .line 1032
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh()V

    goto/16 :goto_0

    .line 1029
    .end local v35    # "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v35, v0

    goto :goto_3

    .line 1035
    .restart local v35    # "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_9
    if-nez v35, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    .line 1036
    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1, v4, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 1037
    .local v38, "playingPeriodUid":Ljava/lang/Object;
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v23

    .line 1038
    .restart local v23    # "periodIndex":I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_e

    .line 1041
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result v32

    .line 1042
    .local v32, "newPeriodIndex":I
    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_b

    .line 1044
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    goto/16 :goto_0

    .line 1036
    .end local v23    # "periodIndex":I
    .end local v32    # "newPeriodIndex":I
    .end local v38    # "playingPeriodUid":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v38, v0

    goto :goto_4

    .line 1048
    .restart local v23    # "periodIndex":I
    .restart local v32    # "newPeriodIndex":I
    .restart local v38    # "playingPeriodUid":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1049
    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1048
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v30

    .line 1050
    .restart local v30    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 1051
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1052
    .local v18, "newPositionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1, v4, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1053
    if-eqz v35, :cond_d

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, v4, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 1057
    .local v33, "newPeriodUid":Ljava/lang/Object;
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1058
    :goto_5
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_d

    .line 1059
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v35, v0

    .line 1060
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move/from16 v0, v32

    invoke-virtual {v4, v6, v0}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    goto :goto_5

    .line 1064
    :cond_c
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    goto :goto_5

    .line 1069
    .end local v33    # "newPeriodUid":Ljava/lang/Object;
    :cond_d
    new-instance v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v0, v32

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 1070
    .restart local v5    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v18

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v16, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1072
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh()V

    goto/16 :goto_0

    .line 1077
    .end local v5    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v18    # "newPositionUs":J
    .end local v30    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v32    # "newPeriodIndex":I
    :cond_e
    move/from16 v0, v23

    move/from16 v1, v37

    if-eq v0, v1, :cond_f

    .line 1078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1081
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    move/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v5

    .line 1085
    .restart local v5    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_10

    iget v4, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v4, v6, :cond_12

    .line 1086
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v18

    .line 1087
    .restart local v18    # "newPositionUs":J
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    move-wide/from16 v20, v0

    .line 1088
    .local v20, "contentPositionUs":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1089
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh()V

    goto/16 :goto_0

    .line 1087
    .end local v20    # "contentPositionUs":J
    :cond_11
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_6

    .line 1094
    .end local v5    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v18    # "newPositionUs":J
    :cond_12
    if-nez v35, :cond_13

    .line 1096
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh()V

    goto/16 :goto_0

    .line 1102
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-result-object v35

    .line 1103
    :goto_7
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_15

    .line 1104
    move-object/from16 v39, v35

    .line 1105
    .local v39, "previousPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v35, v0

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v23

    .line 1108
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_14

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v7, 0x1

    .line 1109
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1111
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-result-object v35

    goto :goto_7

    .line 1114
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, v35

    iget v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ge v4, v6, :cond_16

    const/16 v42, 0x1

    .line 1116
    .local v42, "seenReadingPeriodHolder":Z
    :goto_8
    if-nez v42, :cond_17

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 1120
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v18

    .line 1121
    .restart local v18    # "newPositionUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v0, v4, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    move-wide/from16 v28, v0

    move-wide/from16 v26, v18

    invoke-virtual/range {v24 .. v29}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1135
    .end local v18    # "newPositionUs":J
    .end local v39    # "previousPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v42    # "seenReadingPeriodHolder":Z
    :cond_15
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh()V

    goto/16 :goto_0

    .line 1114
    .restart local v39    # "previousPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_16
    const/16 v42, 0x0

    goto :goto_8

    .line 1126
    .restart local v42    # "seenReadingPeriodHolder":Z
    :cond_17
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1129
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    goto :goto_9
.end method

.method private isTimelineReady(J)Z
    .locals 3
    .param p1, "playingPeriodDurationUs"    # J

    .prologue
    .line 956
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 959
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeContinueLoading()V
    .locals 4

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->shouldContinueLoading(J)Z

    move-result v0

    .line 1437
    .local v0, "continueLoading":Z
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1438
    if-eqz v0, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->continueLoading(J)V

    .line 1441
    :cond_0
    return-void
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v1, v2, :cond_1

    .line 965
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 966
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_2

    .line 972
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    :goto_1
    return-void

    .line 965
    .restart local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 970
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 1375
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v11

    .line 1392
    .local v11, "info":Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    :goto_0
    if-nez v11, :cond_3

    .line 1393
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1410
    .end local v11    # "info":Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    :cond_0
    :goto_1
    return-void

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_2

    .line 1383
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    sub-int v12, v0, v2

    .line 1384
    .local v12, "bufferAheadPeriodCount":I
    const/16 v0, 0x64

    if-eq v12, v0, :cond_0

    .line 1389
    .end local v12    # "bufferAheadPeriodCount":I
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1390
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1389
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getNextMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v11

    .restart local v11    # "info":Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    goto :goto_0

    .line 1397
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_5

    const-wide/32 v4, 0x3938700

    .line 1400
    .local v4, "rendererPositionOffsetUs":J
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_6

    const/4 v10, 0x0

    .line 1401
    .local v10, "holderIndex":I
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v11, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v3, v13}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v9, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1402
    .local v9, "uid":Ljava/lang/Object;
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)V

    .line 1404
    .local v1, "newPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_4

    .line 1405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1407
    :cond_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1408
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, v11, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v0, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 1409
    invoke-direct {p0, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto/16 :goto_1

    .line 1397
    .end local v1    # "newPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v4    # "rendererPositionOffsetUs":J
    .end local v9    # "uid":Ljava/lang/Object;
    .end local v10    # "holderIndex":I
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1399
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    add-long v4, v2, v6

    goto :goto_2

    .line 1400
    .restart local v4    # "rendererPositionOffsetUs":J
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/lit8 v10, v0, 0x1

    goto :goto_3
.end method

.method private notifySourceInfoRefresh()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1169
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(II)V

    .line 1170
    return-void
.end method

.method private notifySourceInfoRefresh(II)V
    .locals 1
    .param p1, "prepareAcks"    # I
    .param p2, "seekAcks"    # I

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(IILcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 1174
    return-void
.end method

.method private notifySourceInfoRefresh(IILcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 2
    .param p1, "prepareAcks"    # I
    .param p2, "seekAcks"    # I
    .param p3, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1179
    return-void
.end method

.method private prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 10
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 384
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 385
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    .line 387
    if-eqz p2, :cond_0

    .line 388
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 394
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0, v8, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 396
    invoke-direct {p0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    return-void

    .line 391
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    move-object v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto :goto_0
.end method

.method private releaseInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 796
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 798
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 800
    monitor-enter p0

    .line 801
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 802
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 803
    monitor-exit p0

    .line 804
    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0
    .param p1, "periodHolder"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .prologue
    .line 1444
    :goto_0
    if-eqz p1, :cond_0

    .line 1445
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1446
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 1448
    :cond_0
    return-void
.end method

.method private rendererWaitingForNextStream(Lcom/google/android/exoplayer2/Renderer;)Z
    .locals 1
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    .line 1526
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reselectTracksInternal()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v2, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 875
    .local v12, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    const/16 v17, 0x1

    .line 877
    .local v17, "selectionsChangedForReadPeriod":Z
    :goto_1
    if-eqz v12, :cond_0

    iget-boolean v2, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_0

    .line 881
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 892
    if-eqz v17, :cond_c

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v2, v3, :cond_7

    const/4 v13, 0x1

    .line 895
    .local v13, "recreateStreams":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    new-array v0, v2, [Z

    move-object/from16 v18, v0

    .line 901
    .local v18, "streamResetFlags":[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-object/from16 v0, v18

    invoke-virtual {v2, v6, v7, v13, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v4

    .line 903
    .local v4, "periodPositionUs":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 907
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 908
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 911
    :cond_2
    const/4 v8, 0x0

    .line 912
    .local v8, "enabledRendererCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    new-array v15, v2, [Z

    .line 913
    .local v15, "rendererWasEnabledFlags":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v9, v2, :cond_a

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v14, v2, v9

    .line 915
    .local v14, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v14}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_4
    aput-boolean v2, v15, v9

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v16, v2, v9

    .line 917
    .local v16, "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    if-eqz v16, :cond_3

    .line 918
    add-int/lit8 v8, v8, 0x1

    .line 920
    :cond_3
    aget-boolean v2, v15, v9

    if-eqz v2, :cond_4

    .line 921
    invoke-interface {v14}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v2

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_9

    .line 923
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    .line 913
    :cond_4
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 885
    .end local v4    # "periodPositionUs":J
    .end local v8    # "enabledRendererCount":I
    .end local v9    # "i":I
    .end local v13    # "recreateStreams":Z
    .end local v14    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v15    # "rendererWasEnabledFlags":[Z
    .end local v16    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    .end local v18    # "streamResetFlags":[Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v12, v2, :cond_6

    .line 887
    const/16 v17, 0x0

    .line 889
    :cond_6
    iget-object v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto/16 :goto_1

    .line 894
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 915
    .restart local v4    # "periodPositionUs":J
    .restart local v8    # "enabledRendererCount":I
    .restart local v9    # "i":I
    .restart local v13    # "recreateStreams":Z
    .restart local v14    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .restart local v15    # "rendererWasEnabledFlags":[Z
    .restart local v18    # "streamResetFlags":[Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 924
    .restart local v16    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_9
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_4

    .line 926
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v14, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    goto :goto_5

    .line 930
    .end local v14    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v16    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v6, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v2, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 931
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 932
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 948
    .end local v4    # "periodPositionUs":J
    .end local v8    # "enabledRendererCount":I
    .end local v9    # "i":I
    .end local v13    # "recreateStreams":Z
    .end local v15    # "rendererWasEnabledFlags":[Z
    .end local v18    # "streamResetFlags":[Z
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 935
    :cond_c
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v12, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 937
    :goto_7
    if-eqz v12, :cond_d

    .line 938
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 939
    iget-object v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_7

    .line 941
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_b

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v20, v0

    .line 944
    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v6

    .line 943
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 945
    .local v10, "loadingPeriodPositionUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v11, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    goto :goto_6
.end method

.method private resetInternal(Z)V
    .locals 9
    .param p1, "releaseMediaSource"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 807
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 808
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 809
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 810
    const-wide/32 v4, 0x3938700

    iput-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 811
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 813
    .local v1, "renderer":Lcom/google/android/exoplayer2/Renderer;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 811
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 819
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    new-array v2, v3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 820
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_3
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 822
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 823
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 824
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 825
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 826
    if-eqz p1, :cond_2

    .line 827
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_1

    .line 828
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 829
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 831
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->setTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 832
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v8, v8}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 834
    :cond_2
    return-void

    .line 820
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_3

    .line 814
    .restart local v1    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private resetRendererPosition(J)V
    .locals 7
    .param p1, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v1, :cond_0

    const-wide/32 v2, 0x3938700

    add-long/2addr v2, p1

    .line 773
    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 774
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 775
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 776
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 771
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 773
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v2

    goto :goto_0

    .line 778
    :cond_1
    return-void
.end method

.method private resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;
    .locals 11
    .param p1, "seekPosition"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 1218
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v9, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1219
    .local v9, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1220
    .local v0, "seekTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    move-object v0, v9

    .line 1228
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1235
    .local v8, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-ne v9, v0, :cond_1

    .line 1254
    .end local v8    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    return-object v8

    .line 1230
    :catch_0
    move-exception v6

    .line 1232
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {v1, v9, v2, v4, v5}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v1

    .line 1240
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v8    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1241
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1240
    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v7

    .line 1242
    .local v7, "periodIndex":I
    if-eq v7, v10, :cond_2

    .line 1244
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    goto :goto_0

    .line 1247
    :cond_2
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result v7

    .line 1248
    if-eq v7, v10, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v7, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v9, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v8

    goto :goto_0

    .line 1254
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I
    .locals 10
    .param p1, "oldPeriodIndex"    # I
    .param p2, "oldTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    const/4 v9, -0x1

    .line 1193
    const/4 v8, -0x1

    .line 1194
    .local v8, "newPeriodIndex":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v7

    .line 1195
    .local v7, "maxIterations":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    if-ne v8, v9, :cond_0

    .line 1196
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object v0, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result p1

    .line 1198
    if-ne p1, v9, :cond_1

    .line 1205
    :cond_0
    return v8

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v1, 0x1

    .line 1203
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1202
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v8

    .line 1195
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private scheduleNextWork(JJ)V
    .locals 7
    .param p1, "thisOperationStartTimeMs"    # J
    .param p3, "intervalMs"    # J

    .prologue
    const/4 v6, 0x2

    .line 637
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    add-long v2, p1, p3

    .line 639
    .local v2, "nextOperationStartTimeMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 640
    .local v0, "nextOperationDelayMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 641
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 24
    .param p1, "seekPosition"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v17, v0

    .line 649
    .local v17, "timeline":Lcom/google/android/exoplayer2/Timeline;
    if-nez v17, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 651
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 696
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v15

    .line 656
    .local v15, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v15, :cond_2

    .line 657
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 663
    .local v5, "firstPeriodIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(IJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 664
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide/16 v6, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 666
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(IJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    .line 665
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 666
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 668
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    goto :goto_0

    .line 657
    .end local v5    # "firstPeriodIndex":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 658
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 657
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v4

    iget v5, v4, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    goto :goto_1

    .line 672
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v18, v20

    if-nez v4, :cond_4

    const/16 v16, 0x1

    .line 673
    .local v16, "seekPositionAdjusted":Z
    :goto_2
    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 674
    .local v14, "periodIndex":I
    iget-object v4, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 675
    .local v8, "periodPositionUs":J
    move-wide v10, v8

    .line 676
    .local v10, "contentPositionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    .line 677
    invoke-virtual {v4, v14, v8, v9}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v7

    .line 678
    .local v7, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 679
    const/16 v16, 0x1

    .line 680
    const-wide/16 v8, 0x0

    .line 683
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v18, 0x3e8

    div-long v18, v8, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v18, v20

    if-nez v4, :cond_6

    .line 692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v18, 0x3

    if-eqz v16, :cond_5

    const/4 v4, 0x1

    :goto_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 694
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 672
    .end local v7    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v8    # "periodPositionUs":J
    .end local v10    # "contentPositionUs":J
    .end local v14    # "periodIndex":I
    .end local v16    # "seekPositionAdjusted":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 693
    .restart local v7    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v8    # "periodPositionUs":J
    .restart local v10    # "contentPositionUs":J
    .restart local v14    # "periodIndex":I
    .restart local v16    # "seekPositionAdjusted":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 688
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 689
    .local v12, "newPeriodPositionUs":J
    cmp-long v4, v8, v12

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_4
    or-int v16, v16, v4

    .line 690
    move-wide v8, v12

    .line 692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v18, 0x3

    if-eqz v16, :cond_8

    const/4 v4, 0x1

    :goto_5
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 694
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 689
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 693
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 692
    .end local v12    # "newPeriodPositionUs":J
    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v19, 0x3

    if-eqz v16, :cond_9

    const/4 v4, 0x1

    :goto_6
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 694
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    throw v18

    .line 693
    :cond_9
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .locals 10
    .param p1, "periodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 700
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 701
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 702
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "newPlayingPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_2

    .line 707
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_0

    .line 708
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 726
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v3, v5, :cond_5

    .line 728
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    .line 729
    .local v2, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    .line 728
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 712
    .end local v2    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 713
    .local v1, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_1
    if-eqz v1, :cond_0

    .line 714
    if-nez v0, :cond_3

    .line 715
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldKeepPeriodHolder(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 716
    move-object v0, v1

    .line 720
    :goto_2
    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_1

    .line 718
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    goto :goto_2

    .line 731
    .end local v1    # "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_4
    new-array v3, v4, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 732
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 736
    :cond_5
    if-eqz v0, :cond_7

    .line 737
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 738
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 739
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 740
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 741
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v3, :cond_6

    .line 742
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 744
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 745
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 753
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 754
    return-wide p2

    .line 747
    :cond_7
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 748
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 749
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 750
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_3
.end method

.method private sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 7
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 838
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 839
    .local v0, "message":Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    .end local v0    # "message":Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v1, v6, :cond_2

    .line 843
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 846
    :cond_2
    monitor-enter p0

    .line 847
    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 848
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 849
    monitor-exit p0

    .line 851
    return-void

    .line 849
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 846
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 847
    :try_start_2
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 848
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 849
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private setIsLoading(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 378
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    .line 379
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 379
    goto :goto_0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 402
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 403
    if-nez p1, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 405
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 408
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 410
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 785
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 787
    return-void
.end method

.method private setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 7
    .param p1, "periodHolder"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1451
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v4, p1, :cond_0

    .line 1476
    :goto_0
    return-void

    .line 1455
    :cond_0
    const/4 v0, 0x0

    .line 1456
    .local v0, "enabledRendererCount":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    new-array v3, v4, [Z

    .line 1457
    .local v3, "rendererWasEnabledFlags":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 1458
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v4, v1

    .line 1459
    .local v2, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    aput-boolean v4, v3, v1

    .line 1460
    iget-object v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    .line 1461
    add-int/lit8 v0, v0, 0x1

    .line 1463
    :cond_1
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_2

    .line 1464
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1465
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v1

    if-ne v4, v5, :cond_3

    .line 1469
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1457
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1459
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1473
    .end local v2    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1474
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1475
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    goto :goto_0
.end method

.method private setRepeatModeInternal(I)V
    .locals 1
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 418
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->setRepeatMode(I)V

    .line 420
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->validateExistingPeriodHolders()V

    .line 421
    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->setShuffleModeEnabled(Z)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->validateExistingPeriodHolders()V

    .line 428
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 370
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 371
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 374
    :cond_0
    return-void
.end method

.method private shouldKeepPeriodHolder(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Z
    .locals 6
    .param p1, "seekPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "positionUs"    # J
    .param p4, "holder"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .prologue
    .line 759
    iget-object v1, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 761
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v0

    .line 762
    .local v0, "nextAdGroupIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 763
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v2

    iget-object v1, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 764
    :cond_0
    const/4 v1, 0x1

    .line 767
    .end local v0    # "nextAdGroupIndex":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 487
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 488
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 489
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 490
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 790
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 792
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 793
    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 496
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 497
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private updatePeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .locals 2
    .param p1, "periodHolder"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .param p2, "periodIndex"    # I

    .prologue
    .line 1140
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1141
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1142
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_1

    .line 1143
    :cond_0
    return-object p1

    .line 1145
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0
.end method

.method private updatePeriods()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v2, :cond_1

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1371
    :cond_0
    return-void

    .line 1274
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1276
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1281
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_0

    .line 1287
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1295
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1297
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1277
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-nez v2, :cond_3

    .line 1278
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto/16 :goto_0

    .line 1300
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-eqz v2, :cond_7

    .line 1301
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v9, v2, :cond_0

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v18, v2, v9

    .line 1303
    .local v18, "renderer":Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v20, v2, v9

    .line 1306
    .local v20, "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    if-eqz v20, :cond_6

    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v2

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_6

    .line 1307
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1308
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    .line 1301
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1315
    .end local v9    # "i":I
    .end local v18    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v20    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_0

    .line 1320
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v9, v2, :cond_9

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v18, v2, v9

    .line 1322
    .restart local v18    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v20, v2, v9

    .line 1323
    .restart local v20    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v2

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    if-eqz v20, :cond_8

    .line 1324
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1330
    .end local v18    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v20    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object/from16 v17, v0

    .line 1331
    .local v17, "oldTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1334
    .local v15, "newTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1335
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    const/4 v10, 0x1

    .line 1336
    .local v10, "initialDiscontinuity":Z
    :goto_4
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v9, v2, :cond_0

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v18, v2, v9

    .line 1338
    .restart local v18    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v19, v2, v9

    .line 1339
    .local v19, "rendererWasEnabled":Z
    if-nez v19, :cond_c

    .line 1336
    :cond_a
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1335
    .end local v10    # "initialDiscontinuity":Z
    .end local v18    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v19    # "rendererWasEnabled":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    .line 1341
    .restart local v10    # "initialDiscontinuity":Z
    .restart local v18    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .restart local v19    # "rendererWasEnabled":Z
    :cond_c
    if-eqz v10, :cond_d

    .line 1344
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_6

    .line 1345
    :cond_d
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1346
    iget-object v2, v15, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v14

    .line 1347
    .local v14, "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-object v2, v15, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v13, v2, v9

    .line 1348
    .local v13, "newRendererEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v2, v2, v9

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    const/4 v11, 0x1

    .line 1349
    .local v11, "isNoSampleRenderer":Z
    :goto_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v16, v2, v9

    .line 1350
    .local v16, "oldConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    iget-object v2, v15, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v12, v2, v9

    .line 1351
    .local v12, "newConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    if-eqz v13, :cond_f

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-nez v11, :cond_f

    .line 1358
    invoke-static {v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 1359
    .local v8, "formats":[Lcom/google/android/exoplayer2/Format;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1360
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v4

    .line 1359
    move-object/from16 v0, v18

    invoke-interface {v0, v8, v2, v4, v5}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    goto :goto_6

    .line 1348
    .end local v8    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v11    # "isNoSampleRenderer":Z
    .end local v12    # "newConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    .end local v16    # "oldConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    :cond_e
    const/4 v11, 0x0

    goto :goto_7

    .line 1367
    .restart local v11    # "isNoSampleRenderer":Z
    .restart local v12    # "newConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    .restart local v16    # "oldConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    :cond_f
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_6
.end method

.method private updatePlaybackPositions()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 508
    .local v2, "periodPositionUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 509
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1, v4, v5, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 529
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iput-wide v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    if-nez v0, :cond_5

    move-wide v6, v8

    .line 535
    .local v6, "bufferedPositionUs":J
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    .end local v6    # "bufferedPositionUs":J
    :cond_1
    iput-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 520
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 521
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererWaitingForNextStream(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 527
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    goto :goto_1

    .line 524
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    goto :goto_3

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 534
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v6

    goto :goto_2
.end method

.method private validateExistingPeriodHolders()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 432
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 434
    .local v6, "lastValidPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_0
    if-nez v6, :cond_3

    .line 484
    :cond_0
    :goto_1
    return-void

    .line 432
    .end local v6    # "lastValidPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 449
    .restart local v6    # "lastValidPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .local v8, "nextPeriodIndex":I
    :cond_2
    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 438
    .end local v8    # "nextPeriodIndex":I
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v8

    .line 441
    .restart local v8    # "nextPeriodIndex":I
    :goto_2
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v0, :cond_4

    .line 443
    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    .line 445
    :cond_4
    if-eq v8, v12, :cond_5

    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-eq v0, v8, :cond_2

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 454
    .local v7, "loadingPeriodHolderIndex":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 456
    .local v9, "readingPeriodHolderIndex":I
    :goto_3
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_6

    .line 457
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 458
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v4, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 463
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 466
    iget v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-gt v7, v0, :cond_9

    move v10, v11

    .line 467
    .local v10, "seenLoadingPeriodHolder":Z
    :goto_4
    if-nez v10, :cond_7

    .line 468
    iput-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 470
    :cond_7
    if-eq v9, v12, :cond_a

    iget v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-gt v9, v0, :cond_a

    .line 472
    .local v11, "seenReadingPeriodHolder":Z
    :goto_5
    if-nez v11, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 476
    .local v1, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    .line 477
    .local v2, "newPositionUs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, 0x3

    iget-object v12, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v4, v5, v13, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .end local v1    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v2    # "newPositionUs":J
    .end local v9    # "readingPeriodHolderIndex":I
    .end local v10    # "seenLoadingPeriodHolder":Z
    .end local v11    # "seenReadingPeriodHolder":Z
    :cond_8
    move v9, v12

    .line 454
    goto :goto_3

    .restart local v9    # "readingPeriodHolderIndex":I
    :cond_9
    move v10, v13

    .line 466
    goto :goto_4

    .restart local v10    # "seenLoadingPeriodHolder":Z
    :cond_a
    move v11, v13

    .line 470
    goto :goto_5
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 5
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v3, :cond_1

    .line 213
    const-string v3, "ExoPlayerImplInternal"

    const-string v4, "Ignoring messages sent after release."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 217
    .local v1, "messageNumber":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "wasInterrupted":Z
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v1, :cond_2

    .line 221
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 224
    goto :goto_1

    .line 226
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-eqz v2, :cond_0

    .line 228
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 212
    .end local v1    # "messageNumber":I
    .end local v2    # "wasInterrupted":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 288
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 363
    :goto_0
    return v1

    .line 290
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    move v1, v2

    .line 291
    goto :goto_0

    .line 294
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v1, v2

    .line 295
    goto :goto_0

    .line 298
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    move v1, v2

    .line 299
    goto :goto_0

    .line 302
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    move v1, v2

    .line 303
    goto :goto_0

    .line 306
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    move v1, v2

    .line 307
    goto :goto_0

    .line 310
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    move v1, v2

    .line 311
    goto :goto_0

    .line 314
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    move v1, v2

    .line 315
    goto :goto_0

    .line 318
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 319
    goto :goto_0

    .line 322
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    move v1, v2

    .line 323
    goto :goto_0

    .line 326
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 327
    goto :goto_0

    .line 330
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V

    move v1, v2

    .line 331
    goto :goto_0

    .line 334
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 335
    goto :goto_0

    .line 338
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    move v1, v2

    .line 339
    goto :goto_0

    .line 342
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    check-cast v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    .line 343
    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Renderer error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 351
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 352
    goto/16 :goto_0

    .line 353
    .end local v0    # "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 357
    goto/16 :goto_0

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 362
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 363
    goto/16 :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void

    :cond_0
    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "wasInterrupted":Z
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 240
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 243
    goto :goto_1

    .line 245
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-eqz v1, :cond_0

    .line 247
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 233
    .end local v1    # "wasInterrupted":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 3
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 4
    .param p1, "playWhenReady"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void

    :cond_0
    move v0, v2

    .line 178
    goto :goto_0
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 4
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v3, 0xd

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void

    :cond_0
    move v0, v1

    .line 186
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    return-void
.end method
