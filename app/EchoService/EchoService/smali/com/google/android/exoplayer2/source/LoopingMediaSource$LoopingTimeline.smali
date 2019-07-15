.class final Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 2
    .param p1, "childTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "loopCount"    # I

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 108
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 109
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 110
    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    if-lez v0, :cond_0

    .line 112
    const v0, 0x7fffffff

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int/2addr v0, v1

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "LoopingMediaSource contains too many periods"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 115
    :cond_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1
    .param p1, "childUid"    # Ljava/lang/Object;

    .prologue
    .line 139
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, -0x1

    .line 142
    .end local p1    # "childUid":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "childUid":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "childUid":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 1
    .param p1, "periodIndex"    # I

    .prologue
    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int v0, p1, v0

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 1
    .param p1, "windowIndex"    # I

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int v0, p1, v0

    return v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int/2addr v0, p1

    return v0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getWindowCount()I
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method
