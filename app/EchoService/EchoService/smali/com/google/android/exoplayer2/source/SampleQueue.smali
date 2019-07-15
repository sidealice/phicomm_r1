.class public final Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;,
        Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field public static final ADVANCE_FAILED:I = -0x1

.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

.field private firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

.field private final metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

.field private pendingFormatAdjustment:Z

.field private pendingSplice:Z

.field private readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private sampleOffsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

.field private writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 4
    .param p1, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 83
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 90
    return-void
.end method

.method private advanceReadTo(J)V
    .locals 3
    .param p1, "absolutePosition"    # J

    .prologue
    .line 455
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method private clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V
    .locals 10
    .param p1, "fromNode"    # Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .prologue
    .line 571
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v4, :cond_0

    .line 586
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long/2addr v6, v8

    long-to-int v5, v6

    iget v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    div-int/2addr v5, v6

    add-int v0, v4, v5

    .line 579
    .local v0, "allocationCount":I
    new-array v1, v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 580
    .local v1, "allocationsToRelease":[Lcom/google/android/exoplayer2/upstream/Allocation;
    move-object v2, p1

    .line 581
    .local v2, "currentNode":Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 582
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    aput-object v4, v1, v3

    .line 583
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object v2

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 577
    .end local v0    # "allocationCount":I
    .end local v1    # "allocationsToRelease":[Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v2    # "currentNode":Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .end local v3    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 585
    .restart local v0    # "allocationCount":I
    .restart local v1    # "allocationsToRelease":[Lcom/google/android/exoplayer2/upstream/Allocation;
    .restart local v2    # "currentNode":Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .restart local v3    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V

    goto :goto_0
.end method

.method private discardDownstreamTo(J)V
    .locals 5
    .param p1, "absolutePosition"    # J

    .prologue
    .line 470
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_1

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0
.end method

.method private static getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .locals 5
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "sampleOffsetUs"    # J

    .prologue
    .line 624
    if-nez p0, :cond_1

    .line 625
    const/4 p0, 0x0

    .line 630
    .end local p0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_0
    :goto_0
    return-object p0

    .line 627
    .restart local p0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 628
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    goto :goto_0
.end method

.method private postAppend(I)V
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 610
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 611
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 614
    :cond_0
    return-void
.end method

.method private preAppend(I)I
    .locals 6
    .param p1, "length"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 7
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # Ljava/nio/ByteBuffer;
    .param p4, "length"    # I

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    .line 413
    move v1, p4

    .line 414
    .local v1, "remaining":I
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 415
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v4, p1

    long-to-int v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 416
    .local v2, "toCopy":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 417
    .local v0, "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v4

    invoke-virtual {p3, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 418
    sub-int/2addr v1, v2

    .line 419
    int-to-long v4, v2

    add-long/2addr p1, v4

    .line 420
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 424
    .end local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v2    # "toCopy":I
    :cond_1
    return-void
.end method

.method private readData(J[BI)V
    .locals 7
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # [B
    .param p4, "length"    # I

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    .line 435
    move v1, p4

    .line 436
    .local v1, "remaining":I
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 437
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v4, p1

    long-to-int v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 438
    .local v2, "toCopy":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 439
    .local v0, "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v4

    sub-int v5, p4, v1

    invoke-static {v3, v4, p3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    sub-int/2addr v1, v2

    .line 442
    int-to-long v4, v2

    add-long/2addr p1, v4

    .line 443
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 444
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 447
    .end local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v2    # "toCopy":I
    :cond_1
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V
    .locals 22
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p2, "extrasHolder"    # Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    .prologue
    .line 340
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    move-wide/from16 v18, v0

    .line 343
    .local v18, "offset":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    .line 345
    const-wide/16 v8, 0x1

    add-long v18, v18, v8

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    aget-byte v17, v4, v8

    .line 347
    .local v17, "signalByte":B
    move/from16 v0, v17

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_5

    const/16 v21, 0x1

    .line 348
    .local v21, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v16, v17, 0x7f

    .line 351
    .local v16, "ivSize":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v4, :cond_0

    .line 352
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/16 v8, 0x10

    new-array v8, v8, [B

    iput-object v8, v4, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 354
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    .line 355
    move/from16 v0, v16

    int-to-long v8, v0

    add-long v18, v18, v8

    .line 359
    if-eqz v21, :cond_6

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    .line 362
    const-wide/16 v8, 0x2

    add-long v18, v18, v8

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 369
    .local v5, "subsampleCount":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v6, v4, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 370
    .local v6, "clearDataSizes":[I
    if-eqz v6, :cond_1

    array-length v4, v6

    if-ge v4, v5, :cond_2

    .line 371
    :cond_1
    new-array v6, v5, [I

    .line 373
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v7, v4, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 374
    .local v7, "encryptedDataSizes":[I
    if-eqz v7, :cond_3

    array-length v4, v7

    if-ge v4, v5, :cond_4

    .line 375
    :cond_3
    new-array v7, v5, [I

    .line 377
    :cond_4
    if-eqz v21, :cond_7

    .line 378
    mul-int/lit8 v20, v5, 0x6

    .line 379
    .local v20, "subsampleDataLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    .line 381
    move/from16 v0, v20

    int-to-long v8, v0

    add-long v18, v18, v8

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 383
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v5, :cond_8

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    aput v4, v6, v15

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    aput v4, v7, v15

    .line 383
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 347
    .end local v5    # "subsampleCount":I
    .end local v6    # "clearDataSizes":[I
    .end local v7    # "encryptedDataSizes":[I
    .end local v15    # "i":I
    .end local v16    # "ivSize":I
    .end local v20    # "subsampleDataLength":I
    .end local v21    # "subsampleEncryption":Z
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 365
    .restart local v16    # "ivSize":I
    .restart local v21    # "subsampleEncryption":Z
    :cond_6
    const/4 v5, 0x1

    .restart local v5    # "subsampleCount":I
    goto :goto_1

    .line 388
    .restart local v6    # "clearDataSizes":[I
    .restart local v7    # "encryptedDataSizes":[I
    :cond_7
    const/4 v4, 0x0

    const/4 v8, 0x0

    aput v8, v6, v4

    .line 389
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v8, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v10, v18, v10

    long-to-int v9, v10

    sub-int/2addr v8, v9

    aput v8, v7, v4

    .line 393
    :cond_8
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 394
    .local v14, "cryptoData":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v8, v14, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v9, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v10, v14, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v11, v14, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v12, v14, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    invoke-virtual/range {v4 .. v12}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    .line 399
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v8, v18, v8

    long-to-int v13, v8

    .line 400
    .local v13, "bytesRead":I
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    int-to-long v10, v13

    add-long/2addr v8, v10

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 401
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v4, v13

    move-object/from16 v0, p2

    iput v4, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    .line 402
    return-void
.end method


# virtual methods
.method public advanceTo(JZZ)I
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "allowTimeBeyondBuffer"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceTo(JZZ)I

    move-result v0

    return v0
.end method

.method public advanceToEnd()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceToEnd()I

    move-result v0

    return v0
.end method

.method public discardTo(JZZ)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardTo(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    .line 242
    return-void
.end method

.method public discardToEnd()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToEnd()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    .line 256
    return-void
.end method

.method public discardToRead()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToRead()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    .line 249
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 6
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardUpstreamSamples(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 150
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 152
    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 153
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 154
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 158
    .local v1, "lastNodeToKeep":Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 159
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_1

    .line 162
    :cond_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 163
    .local v0, "firstNodeToDiscard":Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 165
    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 167
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :goto_2
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 169
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    if-ne v2, v0, :cond_1

    .line 170
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 167
    goto :goto_2
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 510
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 511
    .local v0, "adjustedFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->format(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 512
    .local v1, "formatChanged":Z
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    .line 513
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    .line 514
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 515
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 517
    :cond_0
    return-void
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasNextSample()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    return v0
.end method

.method public peekSourceId()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->peekSourceId()I

    move-result v0

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I
    .locals 9
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z
    .param p4, "loadingFinished"    # Z
    .param p5, "decodeOnlyUntilUs"    # J

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)I

    move-result v7

    .line 304
    .local v7, "result":I
    packed-switch v7, :pswitch_data_0

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 306
    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 307
    const/4 v0, -0x5

    .line 323
    :goto_0
    return v0

    .line 309
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long v0, v0, p5

    if-gez v0, :cond_0

    .line 311
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 314
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    iget-object v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(JLjava/nio/ByteBuffer;I)V

    .line 321
    :cond_2
    const/4 v0, -0x4

    goto :goto_0

    .line 323
    :pswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    .line 99
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "resetUpstreamFormat"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->reset(Z)V

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 115
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    .line 117
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->rewind()V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 228
    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 522
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preAppend(I)I

    move-result p2

    .line 523
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 524
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v3

    .line 523
    invoke-interface {p1, v2, v3, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 525
    .local v0, "bytesAppended":I
    if-ne v0, v1, :cond_1

    .line 526
    if-eqz p3, :cond_0

    move v0, v1

    .line 532
    .end local v0    # "bytesAppended":I
    :goto_0
    return v0

    .line 529
    .restart local v0    # "bytesAppended":I
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 531
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->postAppend(I)V

    goto :goto_0
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 6
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 537
    :goto_0
    if-lez p2, :cond_0

    .line 538
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preAppend(I)I

    move-result v0

    .line 539
    .local v0, "bytesAppended":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 540
    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    .line 539
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 541
    sub-int/2addr p2, v0

    .line 542
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->postAppend(I)V

    goto :goto_0

    .line 544
    .end local v0    # "bytesAppended":I
    :cond_0
    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 552
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    if-eqz v0, :cond_3

    .line 553
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->attemptSplice(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    .line 558
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr p1, v0

    .line 559
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    int-to-long v2, p5

    sub-long v4, v0, v2

    .line 560
    .local v4, "absoluteOffset":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_0
.end method

.method public setSampleOffsetUs(J)V
    .locals 3
    .param p1, "sampleOffsetUs"    # J

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 503
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    .line 506
    :cond_0
    return-void
.end method

.method public setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    .line 493
    return-void
.end method

.method public sourceId(I)V
    .locals 1
    .param p1, "sourceId"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceId(I)V

    .line 126
    return-void
.end method

.method public splice()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    .line 133
    return-void
.end method
