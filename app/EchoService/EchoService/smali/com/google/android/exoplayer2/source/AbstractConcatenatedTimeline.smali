.class abstract Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field private final childCount:I

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 39
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    .line 40
    return-void
.end method

.method private getNextChildIndex(IZ)I
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .prologue
    .line 233
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getNextIndex(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPreviousChildIndex(IZ)I
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .prologue
    .line 238
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method public getFirstWindowIndex(Z)I
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v1, -0x1

    .line 121
    iget v2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    if-nez v2, :cond_0

    .line 134
    :goto_0
    return v1

    .line 125
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getFirstIndex()I

    move-result v0

    .line 126
    .local v0, "firstChildIndex":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v0

    .line 128
    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 125
    .end local v0    # "firstChildIndex":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 133
    .restart local v0    # "firstChildIndex":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 7
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v5, -0x1

    .line 166
    instance-of v6, p1, Landroid/util/Pair;

    if-nez v6, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v2, p1

    .line 169
    check-cast v2, Landroid/util/Pair;

    .line 170
    .local v2, "childUidAndPeriodUid":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 171
    .local v1, "childUid":Ljava/lang/Object;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 172
    .local v4, "periodUid":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v0

    .line 173
    .local v0, "childIndex":I
    if-eq v0, v5, :cond_0

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 177
    .local v3, "periodIndexInChild":I
    if-eq v3, v5, :cond_0

    .line 178
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0
.end method

.method public getLastWindowIndex(Z)I
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v1, -0x1

    .line 103
    iget v2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return v1

    .line 107
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    .line 108
    .local v0, "lastChildIndex":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    .line 110
    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 107
    .end local v0    # "lastChildIndex":I
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 115
    .restart local v0    # "lastChildIndex":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 9
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, -0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 47
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 48
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    sub-int v7, p1, v1

    if-ne p2, v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v7, v4, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v3

    .line 52
    .local v3, "nextWindowIndexInChild":I
    if-eq v3, v5, :cond_1

    .line 53
    add-int v4, v1, v3

    .line 68
    :goto_1
    return v4

    .end local v3    # "nextWindowIndexInChild":I
    :cond_0
    move v4, p2

    .line 48
    goto :goto_0

    .line 56
    .restart local v3    # "nextWindowIndexInChild":I
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v2

    .line 57
    .local v2, "nextChildIndex":I
    :goto_2
    if-eq v2, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    invoke-direct {p0, v2, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v2

    goto :goto_2

    .line 60
    :cond_2
    if-eq v2, v5, :cond_3

    .line 61
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v4

    .line 62
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 65
    :cond_3
    if-ne p2, v8, :cond_4

    .line 66
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v5

    .line 68
    goto :goto_1
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 5
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 153
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 154
    .local v2, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    .line 155
    .local v1, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int v4, p1, v1

    invoke-virtual {v3, v4, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 157
    iget v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v3, v2

    iput v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 158
    if-eqz p3, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 161
    :cond_0
    return-object p2
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 9
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, -0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 76
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 77
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    sub-int v7, p1, v1

    if-ne p2, v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v7, v4, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v3

    .line 81
    .local v3, "previousWindowIndexInChild":I
    if-eq v3, v5, :cond_1

    .line 82
    add-int v4, v1, v3

    .line 98
    :goto_1
    return v4

    .end local v3    # "previousWindowIndexInChild":I
    :cond_0
    move v4, p2

    .line 77
    goto :goto_0

    .line 85
    .restart local v3    # "previousWindowIndexInChild":I
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v2

    .line 86
    .local v2, "previousChildIndex":I
    :goto_2
    if-eq v2, v5, :cond_2

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    invoke-direct {p0, v2, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v2

    goto :goto_2

    .line 90
    :cond_2
    if-eq v2, v5, :cond_3

    .line 91
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v4

    .line 92
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 95
    :cond_3
    if-ne p2, v8, :cond_4

    .line 96
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v5

    .line 98
    goto :goto_1
.end method

.method protected abstract getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 10
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v6

    .line 141
    .local v6, "childIndex":I
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v8

    .line 142
    .local v8, "firstWindowIndexInChild":I
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v7

    .line 143
    .local v7, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    sub-int v1, p1, v8

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 145
    iget v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v0, v7

    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 146
    iget v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v7

    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 147
    return-object p2
.end method
