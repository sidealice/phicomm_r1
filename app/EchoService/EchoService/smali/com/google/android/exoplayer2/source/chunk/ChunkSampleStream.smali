.class public Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/SampleStream;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChunkSampleStream"


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final embeddedTrackTypes:[I

.field private final embeddedTracksSelected:[Z

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field lastSeekPositionUs:J

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field loadingFinished:Z

.field private final mediaChunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

.field private pendingResetPositionUs:J

.field private primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private final primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final primaryTrackType:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[ILcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
    .locals 8
    .param p1, "primaryTrackType"    # I
    .param p2, "embeddedTrackTypes"    # [I
    .param p5, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p6, "positionUs"    # J
    .param p8, "minLoadableRetryCount"    # I
    .param p9, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[ITT;",
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "JI",
            "Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    .local p3, "chunkSource":Lcom/google/android/exoplayer2/source/chunk/ChunkSource;, "TT;"
    .local p4, "callback":Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;, "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 81
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 82
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 83
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    .line 84
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 85
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    .line 86
    new-instance v6, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v7, "Loader:ChunkSampleStream"

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 87
    new-instance v6, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 88
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 89
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 91
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 92
    .local v1, "embeddedTrackCount":I
    :goto_0
    new-array v6, v1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 93
    new-array v6, v1, [Z

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    .line 94
    add-int/lit8 v6, v1, 0x1

    new-array v5, v6, [I

    .line 95
    .local v5, "trackTypes":[I
    add-int/lit8 v6, v1, 0x1

    new-array v4, v6, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 97
    .local v4, "sampleQueues":[Lcom/google/android/exoplayer2/source/SampleQueue;
    new-instance v6, Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-direct {v6, p5}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 98
    const/4 v6, 0x0

    aput p1, v5, v6

    .line 99
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v7, v4, v6

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 102
    new-instance v3, Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-direct {v3, p5}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 103
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v3, v6, v2

    .line 104
    add-int/lit8 v6, v2, 0x1

    aput-object v3, v4, v6

    .line 105
    add-int/lit8 v6, v2, 0x1

    aget v7, p2, v2

    aput v7, v5, v6

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v1    # "embeddedTrackCount":I
    .end local v2    # "i":I
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v4    # "sampleQueues":[Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v5    # "trackTypes":[I
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 108
    .restart local v1    # "embeddedTrackCount":I
    .restart local v2    # "i":I
    .restart local v4    # "sampleQueues":[Lcom/google/android/exoplayer2/source/SampleQueue;
    .restart local v5    # "trackTypes":[I
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-direct {v6, v5, v4}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;-><init>([I[Lcom/google/android/exoplayer2/source/SampleQueue;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 109
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 110
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object v0
.end method

.method private discardDownstreamMediaChunks(I)V
    .locals 8
    .param p1, "primaryStreamReadIndex"    # I

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v4, 0x1

    .line 451
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 453
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 457
    .local v0, "currentChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 458
    .local v3, "trackFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 463
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 465
    .end local v0    # "currentChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .end local v3    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    :cond_2
    return-void
.end method

.method private discardUpstreamMediaChunks(I)Z
    .locals 9
    .param p1, "queueLength"    # I

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    move v0, v1

    .line 490
    :goto_0
    return v0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 481
    .local v4, "endTimeUs":J
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 482
    .local v7, "removed":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-wide v2, v7, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    .line 483
    .local v2, "startTimeUs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 485
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, v6

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 485
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 488
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    .line 490
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private haveReadFromLastMediaChunk()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 434
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 435
    .local v1, "lastChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v4

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v2

    .line 438
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 439
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 443
    goto :goto_0
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 427
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return v0
.end method

.method private maybeDiscardUpstream(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 422
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v0

    .line 423
    .local v0, "queueSize":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunks(I)Z

    .line 424
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 25
    .param p1, "positionUs"    # J

    .prologue
    .line 362
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    const/4 v2, 0x0

    .line 400
    :goto_0
    return v2

    .line 368
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    const/4 v3, 0x0

    .line 370
    .local v3, "previousChunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 375
    .local v6, "loadPositionUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-boolean v0, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    move/from16 v22, v0

    .line 377
    .local v22, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object/from16 v23, v0

    .line 378
    .local v23, "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->clear()V

    .line 380
    if-eqz v22, :cond_3

    .line 381
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 382
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 383
    const/4 v2, 0x1

    goto :goto_0

    .line 372
    .end local v3    # "previousChunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .end local v6    # "loadPositionUs":J
    .end local v22    # "endOfStream":Z
    .end local v23    # "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 373
    .restart local v3    # "previousChunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    .restart local v6    # "loadPositionUs":J
    goto :goto_1

    .line 386
    .restart local v22    # "endOfStream":Z
    .restart local v23    # "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    :cond_3
    if-nez v23, :cond_4

    .line 387
    const/4 v2, 0x0

    goto :goto_0

    .line 390
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 391
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    move-object/from16 v24, v23

    .line 392
    check-cast v24, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 393
    .local v24, "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->init(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v24    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v20

    .line 397
    .local v20, "elapsedRealtimeMs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v23

    iget v11, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

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

    .line 400
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public discardEmbeddedTracksTo(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 125
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    .line 169
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v4, :cond_0

    .line 170
    const-wide/high16 v4, -0x8000000000000000L

    .line 181
    :goto_0
    return-wide v4

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_0

    .line 174
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 175
    .local v0, "bufferedPositionUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 176
    .local v3, "lastMediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 178
    .local v2, "lastCompletedMediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :goto_1
    if-eqz v2, :cond_2

    .line 179
    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 176
    .end local v2    # "lastCompletedMediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 177
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-object v2, v4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 405
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 408
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method isPendingReset()Z
    .locals 4

    .prologue
    .line 447
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

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

.method public isReady()Z
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

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
    .line 252
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->maybeThrowError()V

    .line 256
    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 20
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 308
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

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

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 308
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 312
    if-nez p6, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 315
    .local v2, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v2    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 319
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 40
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 20
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 297
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

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

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 298
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 303
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 40
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 26
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    .line 324
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    .line 325
    .local v18, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v23

    .line 326
    .local v23, "isMediaChunk":Z
    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-eqz v3, :cond_0

    if-eqz v23, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromLastMediaChunk()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 327
    .local v2, "cancelable":Z
    :goto_0
    const/16 v21, 0x0

    .line 328
    .local v21, "canceled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    if-nez v2, :cond_3

    .line 330
    const-string v3, "ChunkSampleStream"

    const-string v4, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

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

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v3 .. v21}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 350
    if-eqz v21, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 352
    const/4 v3, 0x2

    .line 354
    :goto_2
    return v3

    .line 326
    .end local v2    # "cancelable":Z
    .end local v21    # "canceled":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 332
    .restart local v2    # "cancelable":Z
    .restart local v21    # "canceled":Z
    :cond_3
    const/16 v21, 0x1

    .line 333
    if-eqz v23, :cond_1

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 335
    .local v24, "removed":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 337
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v3, v3, v22

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 337
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 335
    .end local v22    # "i":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 340
    .restart local v22    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto/16 :goto_1

    .line 354
    .end local v22    # "i":I
    .end local v24    # "removed":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 40
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoaderReleased()V
    .locals 4

    .prologue
    .line 237
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 238
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 239
    .local v0, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .prologue
    .line 261
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const/4 v0, -0x3

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    .line 265
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    .line 267
    .local v0, "result":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToRead()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 225
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)Z

    move-result v1

    .line 226
    .local v1, "releasedSynchronously":Z
    if-nez v1, :cond_0

    .line 228
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 229
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 230
    .local v0, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_0
    return-void
.end method

.method public seekToUs(J)V
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 194
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-gez v2, :cond_0

    move v2, v3

    .line 193
    :goto_0
    invoke-virtual {v5, p1, p2, v3, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v1, v3

    .line 195
    .local v1, "seekInsideBuffer":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 197
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    .line 198
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToRead()V

    .line 199
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v6, v5

    move v2, v4

    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v0, v5, v2

    .line 200
    .local v0, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 201
    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v1    # "seekInsideBuffer":Z
    :cond_0
    move v2, v4

    .line 194
    goto :goto_0

    :cond_1
    move v1, v4

    .line 193
    goto :goto_1

    .line 205
    .restart local v1    # "seekInsideBuffer":Z
    :cond_2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 206
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 207
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 208
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 217
    :cond_3
    return-void

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 212
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v0, v2, v4

    .line 213
    .restart local v0    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v2, 0x1

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_1

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 144
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aput-boolean v2, v1, v0

    .line 145
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    .line 147
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V

    return-object v1

    .line 143
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public skipData(J)I
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v4, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    const/4 v0, 0x0

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-lez v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v0

    .line 287
    .local v0, "skipCount":I
    :cond_2
    :goto_1
    if-lez v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToRead()V

    goto :goto_0

    .line 282
    .end local v0    # "skipCount":I
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1, p1, p2, v4, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v0

    .line 283
    .restart local v0    # "skipCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 284
    const/4 v0, 0x0

    goto :goto_1
.end method
