.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L


# instance fields
.field private actualMinLoadableRetryCount:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private lastSeekPositionUs:J

.field private length:J

.field private final listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final minLoadableRetryCount:I

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private released:Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private trackEnabledStates:[Z

.field private trackIsAudioVideoFlags:[Z

.field private tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "extractors"    # [Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
    .param p7, "listener"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;
    .param p8, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p9, "customCacheKey"    # Ljava/lang/String;
    .param p10, "continueLoadingCheckIntervalBytes"    # I

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    .line 134
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 135
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    .line 136
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    .line 137
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    .line 138
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    .line 139
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 140
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    .line 141
    int-to-long v0, p10

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 142
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:ExtractorMediaPeriod"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 143
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {v0, p3, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;-><init>([Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 145
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    .line 160
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 161
    new-array v0, v2, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 162
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    .line 165
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x3

    .end local p4    # "minLoadableRetryCount":I
    :cond_0
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureRetry(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 8
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .prologue
    const-wide/16 v6, 0x0

    .line 540
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 541
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 551
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 552
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 553
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_2
    invoke-virtual {p1, v6, v7, v6, v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    goto :goto_0
.end method

.method private copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 4
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 518
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    .line 520
    :cond_0
    return-void
.end method

.method private getExtractedSamplesCount()I
    .locals 6

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "extractedSamplesCount":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 587
    .local v1, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v5

    add-int/2addr v0, v5

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    return v0
.end method

.method private getLargestQueuedTimestampUs()J
    .locals 8

    .prologue
    .line 593
    const-wide/high16 v0, -0x8000000000000000L

    .line 594
    .local v0, "largestQueuedTimestampUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 596
    .local v2, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 595
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 594
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    .end local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    return-wide v0
.end method

.method private isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 606
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeFinishPrepare()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 484
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    if-nez v9, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v11, v10

    move v9, v7

    :goto_1
    if-ge v9, v11, :cond_2

    aget-object v3, v10, v9

    .line 488
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 487
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 492
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_2
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 493
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v5, v9

    .line 494
    .local v5, "trackCount":I
    new-array v4, v5, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 495
    .local v4, "trackArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    new-array v9, v5, [Z

    iput-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    .line 496
    new-array v9, v5, [Z

    iput-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    .line 497
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v9}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v5, :cond_5

    .line 499
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 500
    .local v6, "trackFormat":Lcom/google/android/exoplayer2/Format;
    new-instance v9, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v10, v8, [Lcom/google/android/exoplayer2/Format;

    aput-object v6, v10, v7

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v9, v4, v0

    .line 501
    iget-object v2, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 502
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move v1, v8

    .line 503
    .local v1, "isAudioVideo":Z
    :goto_3
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aput-boolean v1, v9, v0

    .line 504
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v9, v1

    iput-boolean v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "isAudioVideo":Z
    :cond_4
    move v1, v7

    .line 502
    goto :goto_3

    .line 506
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v6    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    :cond_5
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v7, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 507
    iget v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_6

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 508
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v10, v12

    if-nez v7, :cond_6

    .line 509
    const/4 v7, 0x6

    iput v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    .line 511
    :cond_6
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    .line 512
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v10}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 513
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v7, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_0
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$3;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    :cond_0
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 566
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v6

    .line 567
    .local v3, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 568
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v6, v0

    .line 569
    .local v1, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 570
    invoke-virtual {v1, p1, p2, v5, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move v2, v5

    .line 576
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v6, :cond_2

    .line 581
    .end local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v2    # "seekInsideQueue":Z
    :cond_0
    :goto_2
    return v4

    .restart local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_1
    move v2, v4

    .line 570
    goto :goto_1

    .line 579
    .restart local v2    # "seekInsideQueue":Z
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToRead()V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v2    # "seekInsideQueue":Z
    :cond_3
    move v4, v5

    .line 581
    goto :goto_2
.end method

.method private startLoading()V
    .locals 8

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 523
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 525
    .local v0, "loadable":Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 527
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 528
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 529
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 537
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getPosition(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    .line 533
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 536
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    goto :goto_0
.end method

.method private suppressRead()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

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


# virtual methods
.method public continueLoading(J)Z
    .locals 2
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 288
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v1, :cond_2

    .line 289
    :cond_0
    const/4 v0, 0x0

    .line 296
    :cond_1
    :goto_0
    return v0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    move-result v0

    .line 292
    .local v0, "continuedLoading":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public discardBuffer(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 280
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v2

    .line 281
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 282
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method public endTracks()V
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 8

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 315
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v6, :cond_1

    move-wide v2, v4

    .line 334
    :cond_0
    :goto_0
    return-wide v2

    .line 317
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    goto :goto_0

    .line 321
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v6, :cond_4

    .line 323
    const-wide v2, 0x7fffffffffffffffL

    .line 324
    .local v2, "largestQueuedTimestampUs":J
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v6

    .line 325
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 326
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_3

    .line 327
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v0

    .line 328
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 327
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 325
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "i":I
    .end local v1    # "trackCount":I
    .end local v2    # "largestQueuedTimestampUs":J
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    .line 334
    .restart local v2    # "largestQueuedTimestampUs":J
    :cond_5
    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    goto :goto_0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method isReady(I)Z
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

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

.method maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 369
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    .line 202
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 4
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 416
    if-eqz p6, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 420
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 421
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-lez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadCanceled(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 6
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 403
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 404
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    .line 406
    .local v0, "largestQueuedTimestampUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 408
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v3

    invoke-interface {v2, v4, v5, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 410
    .end local v0    # "largestQueuedTimestampUs":J
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 411
    return-void

    .line 406
    .restart local v0    # "largestQueuedTimestampUs":J
    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadCompleted(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .locals 5
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 431
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 432
    invoke-direct {p0, p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V

    .line 433
    invoke-direct {p0, p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    const/4 v2, 0x3

    .line 440
    :cond_0
    :goto_0
    return v2

    .line 436
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    .line 437
    .local v0, "extractedSamplesCount":I
    iget v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v4, :cond_2

    move v1, v2

    .line 438
    .local v1, "madeProgress":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->configureRetry(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 439
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 440
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .end local v1    # "madeProgress":Z
    :cond_2
    move v1, v3

    .line 437
    goto :goto_1
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadError(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoaderReleased()V
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->release()V

    .line 187
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 188
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 196
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    .line 197
    return-void
.end method

.method readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "track"    # I
    .param p2, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p3, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p4, "formatRequired"    # Z

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, -0x3

    .line 376
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v0, p1

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 308
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 310
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 172
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)Z

    move-result v0

    .line 173
    .local v0, "releasedSynchronously":Z
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 176
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 177
    .local v1, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    .line 182
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 2
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 343
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 345
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    :cond_0
    :goto_1
    return-wide p1

    .line 341
    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 349
    :cond_2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 350
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 351
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 355
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 9
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 212
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 213
    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 215
    .local v1, "oldEnabledTrackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    .line 216
    aget-object v6, p3, v0

    if-eqz v6, :cond_1

    aget-object v6, p1, v0

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v0

    if-nez v6, :cond_1

    .line 217
    :cond_0
    aget-object v6, p3, v0

    check-cast v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->access$300(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v5

    .line 218
    .local v5, "track":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v6, v6, v5

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 219
    iget v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 220
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 221
    const/4 v6, 0x0

    aput-object v6, p3, v0

    .line 215
    .end local v5    # "track":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_4

    const/4 v3, 0x1

    .line 228
    .local v3, "seekRequired":Z
    :goto_1
    const/4 v0, 0x0

    :goto_2
    array-length v6, p1

    if-ge v0, v6, :cond_b

    .line 229
    aget-object v6, p3, v0

    if-nez v6, :cond_3

    aget-object v6, p1, v0

    if-eqz v6, :cond_3

    .line 230
    aget-object v4, p1, v0

    .line 231
    .local v4, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 232
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_4
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 233
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v5

    .line 234
    .restart local v5    # "track":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_9

    const/4 v6, 0x1

    :goto_5
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 235
    iget v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 236
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 237
    new-instance v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v6, p0, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;I)V

    aput-object v6, p3, v0

    .line 238
    const/4 v6, 0x1

    aput-boolean v6, p4, v0

    .line 240
    if-nez v3, :cond_3

    .line 241
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v6, v5

    .line 242
    .local v2, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 247
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v2, p5, p6, v6, v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    .line 248
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v3, 0x1

    .line 228
    .end local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v4    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v5    # "track":I
    :cond_3
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 226
    .end local v3    # "seekRequired":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-eqz v6, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 231
    .restart local v3    # "seekRequired":Z
    .restart local v4    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 232
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 234
    .restart local v5    # "track":I
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 248
    .restart local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    .line 252
    .end local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v4    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v5    # "track":I
    :cond_b
    iget v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v6, :cond_f

    .line 253
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 254
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 256
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v8, :cond_c

    aget-object v2, v7, v6

    .line 257
    .restart local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 256
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 259
    .end local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_c
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 274
    :cond_d
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    .line 275
    return-wide p5

    .line 261
    :cond_e
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v8, :cond_d

    aget-object v2, v7, v6

    .line 262
    .restart local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 265
    .end local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_f
    if-eqz v3, :cond_d

    .line 266
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 268
    const/4 v0, 0x0

    :goto_9
    array-length v6, p3

    if-ge v0, v6, :cond_d

    .line 269
    aget-object v6, p3, v0

    if-eqz v6, :cond_10

    .line 270
    const/4 v6, 0x1

    aput-boolean v6, p4, v0

    .line 268
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method skipData(IJ)I
    .locals 8
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    :goto_0
    return v2

    .line 384
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v3, p1

    .line 385
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    cmp-long v3, p2, v4

    if-lez v3, :cond_1

    .line 386
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v2

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {v0, p2, p3, v6, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v1

    .line 389
    .local v1, "skipCount":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    move v1, v2

    .end local v1    # "skipCount":I
    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    .line 447
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v3

    .line 448
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 449
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    .line 450
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v3, v0

    .line 459
    :goto_1
    return-object v2

    .line 448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 454
    .local v2, "trackOutput":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 455
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 456
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aput p1, v3, v1

    .line 457
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 458
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v2, v3, v1

    goto :goto_1
.end method
