.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodHolder"
.end annotation


# instance fields
.field public hasEnabledTracks:Z

.field public final index:I

.field public info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field public next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public prepared:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field public final rendererPositionOffsetUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field public final sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field public trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)V
    .locals 9
    .param p1, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p2, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p3, "rendererPositionOffsetUs"    # J
    .param p5, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p6, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p7, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p8, "periodUid"    # Ljava/lang/Object;
    .param p9, "index"    # I
    .param p10, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .prologue
    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1569
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 1570
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 1571
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 1572
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 1573
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1574
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 1575
    invoke-static/range {p8 .. p8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 1576
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 1577
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1578
    array-length v4, p1

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/SampleStream;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    .line 1579
    array-length v4, p1

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 1580
    move-object/from16 v0, p10

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p6}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v3

    .line 1581
    .local v3, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    move-object/from16 v0, p10

    iget-wide v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1582
    new-instance v2, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Z)V

    .line 1583
    .local v2, "clippingMediaPeriod":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
    const-wide/16 v4, 0x0

    move-object/from16 v0, p10

    iget-wide v6, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->setClipping(JJ)V

    .line 1584
    move-object v3, v2

    .line 1586
    .end local v2    # "clippingMediaPeriod":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
    :cond_0
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1587
    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 3
    .param p1, "sampleStreams"    # [Lcom/google/android/exoplayer2/source/SampleStream;

    .prologue
    .line 1724
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1725
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1727
    new-instance v1, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    .line 1724
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1730
    :cond_1
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 3
    .param p1, "sampleStreams"    # [Lcom/google/android/exoplayer2/source/SampleStream;

    .prologue
    .line 1712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1713
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1714
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 1712
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1717
    :cond_1
    return-void
.end method


# virtual methods
.method public continueLoading(J)V
    .locals 3
    .param p1, "rendererPositionUs"    # J

    .prologue
    .line 1639
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 1640
    .local v0, "loadingPeriodPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 1641
    return-void
.end method

.method public getRendererOffset()J
    .locals 4

    .prologue
    .line 1598
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public handlePrepared()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1621
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    .line 1622
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    .line 1623
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    move-result-wide v0

    .line 1624
    .local v0, "newStartPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1625
    return-void
.end method

.method public haveSufficientBuffer(ZJ)Z
    .locals 6
    .param p1, "rebuffering"    # Z
    .param p2, "rendererPositionUs"    # J

    .prologue
    .line 1608
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    .line 1610
    .local v0, "bufferedPositionUs":J
    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 1611
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-eqz v2, :cond_1

    .line 1612
    const/4 v2, 0x1

    .line 1616
    :goto_1
    return v2

    .line 1608
    .end local v0    # "bufferedPositionUs":J
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1609
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 1614
    .restart local v0    # "bufferedPositionUs":J
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    .line 1616
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-interface {v2, v4, v5, p1}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result v2

    goto :goto_1
.end method

.method public isFullyBuffered()Z
    .locals 4

    .prologue
    .line 1603
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1604
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    .line 1696
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1697
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    check-cast v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 1705
    :goto_0
    return-void

    .line 1699
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1701
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selectTracks()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1644
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1645
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 1644
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1646
    .local v0, "selectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1647
    const/4 v1, 0x0

    .line 1650
    :goto_0
    return v1

    .line 1649
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1650
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public shouldContinueLoading(J)Z
    .locals 9
    .param p1, "rendererPositionUs"    # J

    .prologue
    .line 1628
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_0

    const-wide/16 v4, 0x0

    .line 1629
    .local v4, "nextLoadPositionUs":J
    :goto_0
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 1630
    const/4 v6, 0x0

    .line 1634
    :goto_1
    return v6

    .line 1628
    .end local v4    # "nextLoadPositionUs":J
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v4

    goto :goto_0

    .line 1632
    .restart local v4    # "nextLoadPositionUs":J
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    .line 1633
    .local v2, "loadingPeriodPositionUs":J
    sub-long v0, v4, v2

    .line 1634
    .local v0, "bufferedDurationUs":J
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v6, v0, v1}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result v6

    goto :goto_1
.end method

.method public toPeriodTime(J)J
    .locals 3
    .param p1, "rendererTimeUs"    # J

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public toRendererTime(J)J
    .locals 3
    .param p1, "periodTimeUs"    # J

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public updatePeriodTrackSelection(JZ)J
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "forceRecreateStreams"    # Z

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public updatePeriodTrackSelection(JZ[Z)J
    .locals 11
    .param p1, "positionUs"    # J
    .param p3, "forceRecreateStreams"    # Z
    .param p4, "streamResetFlags"    # [Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1660
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v8, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 1661
    .local v8, "trackSelections":Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v1, :cond_1

    .line 1662
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1663
    invoke-virtual {v1, v3, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    :goto_1
    aput-boolean v1, v2, v0

    .line 1661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v10

    .line 1663
    goto :goto_1

    .line 1668
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 1670
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    move-object v5, p4

    move-wide v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    .line 1672
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 1673
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1676
    iput-boolean v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    .line 1677
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1678
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 1679
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v1, v1, v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1681
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 1682
    iput-boolean v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    .line 1677
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1685
    :cond_3
    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v9

    :goto_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_3

    :cond_4
    move v1, v10

    goto :goto_4

    .line 1690
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->groups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v1, v2, v3, v8}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 1691
    return-wide p1
.end method
