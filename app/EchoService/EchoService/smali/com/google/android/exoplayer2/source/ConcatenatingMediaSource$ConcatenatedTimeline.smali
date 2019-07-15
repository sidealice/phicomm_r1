.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final isAtomic:Z

.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Timeline;ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 10
    .param p1, "timelines"    # [Lcom/google/android/exoplayer2/Timeline;
    .param p2, "isAtomic"    # Z
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .prologue
    .line 193
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 194
    array-length v7, p1

    new-array v1, v7, [I

    .line 195
    .local v1, "sourcePeriodOffsets":[I
    array-length v7, p1

    new-array v4, v7, [I

    .line 196
    .local v4, "sourceWindowOffsets":[I
    const-wide/16 v2, 0x0

    .line 197
    .local v2, "periodCount":J
    const/4 v6, 0x0

    .line 198
    .local v6, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_1

    .line 199
    aget-object v5, p1, v0

    .line 200
    .local v5, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v7

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 201
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v2, v8

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    const-string v8, "ConcatenatingMediaSource children contain too many periods"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 203
    long-to-int v7, v2

    aput v7, v1, v0

    .line 204
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 205
    aput v6, v4, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 207
    .end local v5    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 208
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    .line 209
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    .line 210
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isAtomic:Z

    .line 211
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1
    .param p1, "childUid"    # Ljava/lang/Object;

    .prologue
    .line 263
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, -0x1

    .line 266
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
    .locals 3
    .param p1, "periodIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 3
    .param p1, "windowIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 2
    .param p1, "childIndex"    # I

    .prologue
    .line 276
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getFirstWindowIndex(Z)I
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isAtomic:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 2
    .param p1, "childIndex"    # I

    .prologue
    .line 281
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getLastWindowIndex(Z)I
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isAtomic:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 226
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isAtomic:Z

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 227
    const/4 p2, 0x2

    .line 229
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isAtomic:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextWindowIndex(IIZ)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 235
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isAtomic:Z

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 236
    const/4 p2, 0x2

    .line 238
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isAtomic:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWindowCount()I
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
