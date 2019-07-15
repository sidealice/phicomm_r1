.class final Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfinitelyLoopingTimeline"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 171
    return-void
.end method


# virtual methods
.method public getNextWindowIndex(IIZ)I
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    .line 178
    .local v0, "childNextWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getFirstWindowIndex(Z)I

    move-result v0

    .end local v0    # "childNextWindowIndex":I
    :cond_0
    return v0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    .line 187
    .local v0, "childPreviousWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getLastWindowIndex(Z)I

    move-result v0

    .end local v0    # "childPreviousWindowIndex":I
    :cond_0
    return v0
.end method
