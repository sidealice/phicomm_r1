.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

.field private downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private enabledTrackCount:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTrackGroups:Z

.field private lastSeekPositionUs:J

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

.field private pendingResetPositionUs:J

.field private pendingResetUpstreamFormats:Z

.field private prepared:Z

.field private primaryTrackGroupIndex:I

.field private released:Z

.field private sampleOffsetUs:J

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seenFirstTrackSelection:Z

.field private trackGroupEnabledStates:[Z

.field private trackGroupIsAudioVideoFlags:[Z

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final trackType:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
    .locals 3
    .param p1, "trackType"    # I
    .param p2, "callback"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    .param p3, "chunkSource"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
    .param p4, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p5, "positionUs"    # J
    .param p7, "muxedAudioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p8, "minLoadableRetryCount"    # I
    .param p9, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 128
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 129
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 130
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 131
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 132
    iput p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    .line 133
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:HlsSampleStreamWrapper"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 136
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 137
    new-array v0, v2, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 146
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 147
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method private buildTracks()V
    .locals 21

    .prologue
    .line 684
    const/4 v11, 0x0

    .line 685
    .local v11, "primaryExtractorTrackType":I
    const/4 v10, -0x1

    .line 686
    .local v10, "primaryExtractorTrackIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 687
    .local v4, "extractorTrackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_5

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 690
    .local v13, "sampleMimeType":Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 691
    const/16 v16, 0x3

    .line 699
    .local v16, "trackType":I
    :goto_1
    move/from16 v0, v16

    if-le v0, v11, :cond_4

    .line 700
    move/from16 v11, v16

    .line 701
    move v10, v6

    .line 687
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 692
    .end local v16    # "trackType":I
    :cond_1
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 693
    const/16 v16, 0x2

    .restart local v16    # "trackType":I
    goto :goto_1

    .line 694
    .end local v16    # "trackType":I
    :cond_2
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 695
    const/16 v16, 0x1

    .restart local v16    # "trackType":I
    goto :goto_1

    .line 697
    .end local v16    # "trackType":I
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "trackType":I
    goto :goto_1

    .line 702
    :cond_4
    move/from16 v0, v16

    if-ne v0, v11, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    .line 706
    const/4 v10, -0x1

    goto :goto_2

    .line 710
    .end local v13    # "sampleMimeType":Ljava/lang/String;
    .end local v16    # "trackType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 711
    .local v3, "chunkSourceTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget v2, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 714
    .local v2, "chunkSourceTrackCount":I
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 715
    new-array v0, v4, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupEnabledStates:[Z

    .line 716
    new-array v0, v4, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupIsAudioVideoFlags:[Z

    .line 719
    new-array v15, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 720
    .local v15, "trackGroups":[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_b

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 722
    .local v12, "sampleFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v9, v12, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 723
    .local v9, "mimeType":Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_6
    const/4 v7, 0x1

    .line 724
    .local v7, "isAudioVideo":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupIsAudioVideoFlags:[Z

    move-object/from16 v17, v0

    aput-boolean v7, v17, v6

    .line 725
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoTrackGroups:Z

    move/from16 v17, v0

    or-int v17, v17, v7

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoTrackGroups:Z

    .line 726
    if-ne v6, v10, :cond_9

    .line 727
    new-array v5, v2, [Lcom/google/android/exoplayer2/Format;

    .line 728
    .local v5, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    if-ge v8, v2, :cond_8

    .line 729
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v17

    aput-object v17, v5, v8

    .line 728
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 723
    .end local v5    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v7    # "isAudioVideo":Z
    .end local v8    # "j":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 731
    .restart local v5    # "formats":[Lcom/google/android/exoplayer2/Format;
    .restart local v7    # "isAudioVideo":Z
    .restart local v8    # "j":I
    :cond_8
    new-instance v17, Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v17, v15, v6

    .line 732
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 720
    .end local v5    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v8    # "j":I
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 734
    :cond_9
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v11, v0, :cond_a

    iget-object v0, v12, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 735
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 736
    .local v14, "trackFormat":Lcom/google/android/exoplayer2/Format;
    :goto_7
    new-instance v17, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14, v12}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-direct/range {v17 .. v18}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v17, v15, v6

    goto :goto_6

    .line 735
    .end local v14    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    :cond_a
    const/4 v14, 0x0

    goto :goto_7

    .line 739
    .end local v7    # "isAudioVideo":Z
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v12    # "sampleFormat":Lcom/google/android/exoplayer2/Format;
    :cond_b
    new-instance v17, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 740
    return-void
.end method

.method private static deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 9
    .param p0, "containerFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "sampleFormat"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 763
    if-nez p0, :cond_0

    .line 773
    .end local p1    # "sampleFormat":Lcom/google/android/exoplayer2/Format;
    :goto_0
    return-object p1

    .line 766
    .restart local p1    # "sampleFormat":Lcom/google/android/exoplayer2/Format;
    :cond_0
    const/4 v2, 0x0

    .line 767
    .local v2, "codecs":Ljava/lang/String;
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v8

    .line 768
    .local v8, "sampleTrackType":I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getAudioCodecs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 773
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v6, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    goto :goto_0

    .line 770
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getVideoCodecs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private discardToRead()V
    .locals 8

    .prologue
    .line 417
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 422
    .local v0, "currentChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 423
    .local v3, "trackFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 428
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 430
    .end local v0    # "currentChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .end local v3    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    :cond_2
    return-void
.end method

.method private finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z
    .locals 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .prologue
    .line 433
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 434
    .local v0, "chunkUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupEnabledStates:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->peekSourceId()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 436
    const/4 v2, 0x0

    .line 439
    :goto_1
    return v2

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static getAudioCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    .line 812
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .prologue
    const/4 v3, 0x0

    .line 820
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-object v3

    .line 823
    :cond_1
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "codecArray":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v2, v4

    .line 826
    .local v1, "codec":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 827
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 828
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 833
    .end local v1    # "codec":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 779
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 783
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

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
    .locals 5

    .prologue
    .line 639
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 643
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 647
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->buildTracks()V

    .line 648
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 649
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    goto :goto_0
.end method

.method private resetSampleQueues()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 444
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 447
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 793
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v6

    .line 794
    .local v3, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 795
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v6, v0

    .line 796
    .local v1, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 797
    invoke-virtual {v1, p1, p2, v5, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move v2, v5

    .line 803
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoTrackGroups:Z

    if-nez v6, :cond_2

    .line 808
    .end local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v2    # "seekInsideQueue":Z
    :cond_0
    :goto_2
    return v4

    .restart local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_1
    move v2, v4

    .line 797
    goto :goto_1

    .line 806
    .restart local v2    # "seekInsideQueue":Z
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToRead()V

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v2    # "seekInsideQueue":Z
    :cond_3
    move v4, v5

    .line 808
    goto :goto_2
.end method

.method private setTrackGroupEnabledState(IZ)V
    .locals 2
    .param p1, "trackGroupIndex"    # I
    .param p2, "enabledState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupEnabledStates:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 750
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupEnabledStates:[Z

    aput-boolean p2, v0, p1

    .line 751
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    if-eqz p2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    .line 752
    return-void

    .line 749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 751
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 27
    .param p1, "positionUs"    # J

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    :cond_0
    const/4 v2, 0x0

    .line 495
    :goto_0
    return v2

    .line 459
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, "previousChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 466
    .local v6, "loadPositionUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;JJLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v0, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    move/from16 v22, v0

    .line 468
    .local v22, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object/from16 v23, v0

    .line 469
    .local v23, "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v25, v0

    .line 470
    .local v25, "playlistToLoad":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    .line 472
    if-eqz v22, :cond_3

    .line 473
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 474
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 475
    const/4 v2, 0x1

    goto :goto_0

    .line 463
    .end local v3    # "previousChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .end local v6    # "loadPositionUs":J
    .end local v22    # "endOfStream":Z
    .end local v23    # "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .end local v25    # "playlistToLoad":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 464
    .restart local v3    # "previousChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    .restart local v6    # "loadPositionUs":J
    goto :goto_1

    .line 478
    .restart local v22    # "endOfStream":Z
    .restart local v23    # "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .restart local v25    # "playlistToLoad":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_3
    if-nez v23, :cond_5

    .line 479
    if-eqz v25, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 482
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 485
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 486
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    move-object/from16 v24, v23

    .line 487
    check-cast v24, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 488
    .local v24, "mediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v24    # "mediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v20

    .line 492
    .local v20, "elapsedRealtimeMs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v23

    iget v11, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v23

    iget v14, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v9 .. v21}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 495
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public continuePreparing()V
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_0

    .line 152
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 154
    :cond_0
    return-void
.end method

.method public discardBuffer(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 292
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v2

    .line 293
    .local v1, "sampleQueueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 294
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupEnabledStates:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public endTracks()V
    .locals 2

    .prologue
    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 10

    .prologue
    .line 326
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v5, :cond_1

    .line 327
    const-wide/high16 v0, -0x8000000000000000L

    .line 342
    :cond_0
    :goto_0
    return-wide v0

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 329
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_0

    .line 331
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 332
    .local v0, "bufferedPositionUs":J
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 333
    .local v3, "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v3

    .line 335
    .local v2, "lastCompletedMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :goto_1
    if-eqz v2, :cond_3

    .line 336
    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 338
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 340
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v8

    .line 339
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 333
    .end local v2    # "lastCompletedMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    .line 334
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object v2, v5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 503
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public init(IZ)V
    .locals 5
    .param p1, "chunkUid"    # I
    .param p2, "shouldSpliceIn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 580
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceId(I)V

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    if-eqz p2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 584
    .restart local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->splice()V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 587
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_1
    return-void
.end method

.method public isReady(I)Z
    .locals 1
    .param p1, "trackGroupIndex"    # I

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

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

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeThrowError()V

    .line 381
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
    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 168
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 20
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 525
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 528
    if-nez p6, :cond_0

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    if-lez v2, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 534
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 20
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 514
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 512
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 515
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 26
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v22

    .line 540
    .local v22, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v24

    .line 541
    .local v24, "isMediaChunk":Z
    if-eqz v24, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-nez v3, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 542
    .local v2, "cancelable":Z
    :goto_0
    const/16 v21, 0x0

    .line 543
    .local v21, "canceled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 544
    if-eqz v24, :cond_1

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 546
    .local v25, "removed":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 551
    .end local v25    # "removed":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_1
    const/16 v21, 0x1

    .line 553
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 553
    invoke-virtual/range {v3 .. v21}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 557
    if-eqz v21, :cond_6

    .line 558
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v3, :cond_5

    .line 559
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 563
    :goto_2
    const/4 v3, 0x2

    .line 565
    :goto_3
    return v3

    .line 541
    .end local v2    # "cancelable":Z
    .end local v21    # "canceled":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 546
    .restart local v2    # "cancelable":Z
    .restart local v21    # "canceled":Z
    .restart local v25    # "removed":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 561
    .end local v25    # "removed":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_2

    .line 565
    :cond_6
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoaderReleased()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 362
    return-void
.end method

.method public onPlaylistBlacklisted(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 2
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "blacklistMs"    # J

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onPlaylistBlacklisted(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    .line 370
    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    return-void
.end method

.method public prepareSingleTrack(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 161
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->track(II)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 163
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    .line 164
    return-void
.end method

.method public readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "trackGroupIndex"    # I
    .param p2, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p3, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p4, "requireFormat"    # Z

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    const/4 v0, -0x3

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, p1

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    .line 390
    .local v0, "result":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardToRead()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 347
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)Z

    move-result v0

    .line 348
    .local v0, "releasedSynchronously":Z
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 351
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 352
    .local v1, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 356
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    .line 357
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .prologue
    .line 618
    return-void
.end method

.method public seekToUs(JZ)Z
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "forceReset"    # Z

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 309
    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :goto_0
    return v0

    .line 313
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 314
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 321
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    goto :goto_1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z
    .locals 21
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J
    .param p7, "forceReset"    # Z

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 194
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    .line 196
    .local v14, "oldEnabledTrackCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v13, v6, :cond_2

    .line 197
    aget-object v6, p3, v13

    if-eqz v6, :cond_1

    aget-object v6, p1, v13

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v13

    if-nez v6, :cond_1

    .line 198
    :cond_0
    aget-object v6, p3, v13

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    iget v12, v6, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->group:I

    .line 199
    .local v12, "group":I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setTrackGroupEnabledState(IZ)V

    .line 200
    const/4 v6, 0x0

    aput-object v6, p3, v13

    .line 196
    .end local v12    # "group":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 206
    :cond_2
    if-nez p7, :cond_3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v6, :cond_6

    if-nez v14, :cond_7

    :cond_3
    const/16 v18, 0x1

    .line 210
    .local v18, "seekRequired":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v15

    .line 211
    .local v15, "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    move-object v5, v15

    .line 213
    .local v5, "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v13, v6, :cond_9

    .line 214
    aget-object v6, p3, v13

    if-nez v6, :cond_5

    aget-object v6, p1, v13

    if-eqz v6, :cond_5

    .line 215
    aget-object v19, p1, v13

    .line 216
    .local v19, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface/range {v19 .. v19}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v20

    .line 217
    .local v20, "trackGroupIndex":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setTrackGroupEnabledState(IZ)V

    .line 218
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    move/from16 v0, v20

    if-ne v0, v6, :cond_4

    .line 219
    move-object/from16 v5, v19

    .line 220
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->selectTracks(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    .line 222
    :cond_4
    new-instance v6, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v6, p3, v13

    .line 223
    const/4 v6, 0x1

    aput-boolean v6, p4, v13

    .line 225
    if-nez v18, :cond_5

    .line 226
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v17, v6, v20

    .line 227
    .local v17, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 232
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    .line 233
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v18, 0x1

    .line 213
    .end local v17    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v19    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v20    # "trackGroupIndex":I
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 206
    .end local v5    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v15    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v18    # "seekRequired":Z
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v6, p5, v6

    if-nez v6, :cond_3

    :cond_7
    const/16 v18, 0x0

    goto :goto_1

    .line 233
    .restart local v5    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .restart local v15    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .restart local v17    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .restart local v18    # "seekRequired":Z
    .restart local v19    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .restart local v20    # "trackGroupIndex":I
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 238
    .end local v17    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v19    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v20    # "trackGroupIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    if-nez v6, :cond_d

    .line 239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->reset()V

    .line 240
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 241
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 242
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 244
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v10, v7

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v10, :cond_a

    aget-object v17, v7, v6

    .line 245
    .restart local v17    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 247
    .end local v17    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 287
    :cond_b
    :goto_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    .line 288
    return v18

    .line 249
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    goto :goto_5

    .line 252
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 253
    invoke-static {v5, v15}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 256
    const/16 v16, 0x0

    .line 257
    .local v16, "primarySampleQueueDirty":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez v6, :cond_12

    .line 258
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-gez v6, :cond_11

    move-wide/from16 v0, p5

    neg-long v8, v0

    .line 259
    .local v8, "bufferedDurationUs":J
    :goto_6
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v6, p5

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    .line 260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    .line 261
    .local v4, "chunkIndex":I
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v6

    if-eq v6, v4, :cond_e

    .line 264
    const/16 v16, 0x1

    .line 270
    .end local v4    # "chunkIndex":I
    .end local v8    # "bufferedDurationUs":J
    :cond_e
    :goto_7
    if-eqz v16, :cond_f

    .line 271
    const/16 p7, 0x1

    .line 272
    const/16 v18, 0x1

    .line 273
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 276
    .end local v16    # "primarySampleQueueDirty":Z
    :cond_f
    if-eqz v18, :cond_b

    .line 277
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 279
    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v13, v6, :cond_b

    .line 280
    aget-object v6, p3, v13

    if-eqz v6, :cond_10

    .line 281
    const/4 v6, 0x1

    aput-boolean v6, p4, v13

    .line 279
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 258
    .restart local v16    # "primarySampleQueueDirty":Z
    :cond_11
    const-wide/16 v8, 0x0

    goto :goto_6

    .line 268
    :cond_12
    const/16 v16, 0x1

    goto :goto_7
.end method

.method public setIsTimestampMaster(Z)V
    .locals 1
    .param p1, "isTimestampMaster"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    .line 366
    return-void
.end method

.method public setSampleOffsetUs(J)V
    .locals 5
    .param p1, "sampleOffsetUs"    # J

    .prologue
    .line 630
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 631
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 632
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    return-void
.end method

.method public skipData(IJ)I
    .locals 6
    .param p1, "trackGroupIndex"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v4, 0x1

    .line 397
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    const/4 v1, 0x0

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v2, p1

    .line 402
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    .line 403
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v1

    .line 410
    .local v1, "skipCount":I
    :cond_2
    :goto_1
    if-lez v1, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardToRead()V

    goto :goto_0

    .line 405
    .end local v1    # "skipCount":I
    :cond_3
    invoke-virtual {v0, p2, p3, v4, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v1

    .line 406
    .restart local v1    # "skipCount":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 407
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->track(II)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v0

    return-object v0
.end method

.method public track(II)Lcom/google/android/exoplayer2/source/SampleQueue;
    .locals 6
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    .line 593
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v3

    .line 594
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 595
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    .line 596
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v3, v0

    .line 606
    :goto_1
    return-object v2

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 600
    .local v2, "trackOutput":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 601
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 602
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 603
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v3, v1

    .line 604
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 605
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v2, v3, v1

    goto :goto_1
.end method
