.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final childIndexByUid:Landroid/util/SparseIntArray;

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;

.field private final uids:[I

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 7
    .param p2, "windowCount"    # I
    .param p3, "periodCount"    # I
    .param p4, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
            ">;II",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "mediaSourceHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;>;"
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 620
    iput p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    .line 621
    iput p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    .line 622
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 623
    .local v0, "childCount":I
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 624
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 625
    new-array v4, v0, [Lcom/google/android/exoplayer2/Timeline;

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 626
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    .line 627
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    .line 628
    const/4 v1, 0x0

    .line 629
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 630
    .local v3, "mediaSourceHolder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    aput-object v6, v4, v1

    .line 631
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    iget v6, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    aput v6, v4, v1

    .line 632
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    iget v6, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    aput v6, v4, v1

    .line 633
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v6, v1

    .line 634
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    aget v6, v6, v1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v4, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v1, v2

    .line 635
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 636
    .end local v3    # "mediaSourceHolder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 4
    .param p1, "childUid"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 650
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 654
    .end local p1    # "childUid":Ljava/lang/Object;
    :goto_0
    return v1

    .line 653
    .restart local p1    # "childUid":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "childUid":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 654
    .local v0, "index":I
    if-ne v0, v1, :cond_1

    move v0, v1

    .end local v0    # "index":I
    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 3
    .param p1, "periodIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 3
    .param p1, "windowIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPeriodCount()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWindowCount()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    return v0
.end method
