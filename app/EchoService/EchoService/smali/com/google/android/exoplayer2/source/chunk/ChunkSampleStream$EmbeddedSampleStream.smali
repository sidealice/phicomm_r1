.class public final Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field private final index:I

.field public final parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .param p3, "sampleQueue"    # Lcom/google/android/exoplayer2/source/SampleQueue;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/source/SampleQueue;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    .local p2, "parent":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 505
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 506
    iput p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    .line 507
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 511
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .prologue
    .line 532
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, -0x3

    .line 535
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 540
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 542
    return-void
.end method

.method public skipData(J)I
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    const/4 v4, 0x1

    .line 516
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v0

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1, p1, p2, v4, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v0

    .line 520
    .local v0, "skipCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
