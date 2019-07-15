.class final Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;
.super Ljava/lang/Object;
.source "MediaPeriodInfoSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    }
.end annotation


# instance fields
.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 113
    return-void
.end method

.method private getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 8
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "contentPositionUs"    # J
    .param p4, "startPositionUs"    # J

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 290
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 294
    :cond_0
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p4, p5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v6

    .line 298
    .local v6, "nextAdGroupIndex":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    .line 300
    .local v4, "endUs":J
    :goto_1
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForContent(IJJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    goto :goto_0

    .line 298
    .end local v4    # "endUs":J
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 299
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v4

    goto :goto_1
.end method

.method private getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 18
    .param p1, "periodIndex"    # I
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "contentPositionUs"    # J

    .prologue
    .line 306
    new-instance v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(III)V

    .line 307
    .local v5, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    const-wide/high16 v8, -0x8000000000000000L

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v14

    .line 308
    .local v14, "isLastInPeriod":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v15

    .line 309
    .local v15, "isLastInTimeline":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v8, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v8, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v9, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 310
    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v12

    .line 311
    .local v12, "durationUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPlayedAdCount(I)I

    move-result v4

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 312
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v6

    .line 313
    .local v6, "startPositionUs":J
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    const-wide/high16 v8, -0x8000000000000000L

    const/16 v16, 0x0

    move-wide/from16 v10, p4

    invoke-direct/range {v4 .. v16}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZLcom/google/android/exoplayer2/MediaPeriodInfoSequence$1;)V

    return-object v4

    .line 312
    .end local v6    # "startPositionUs":J
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private getMediaPeriodInfoForContent(IJJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 18
    .param p1, "periodIndex"    # I
    .param p2, "startPositionUs"    # J
    .param p4, "endUs"    # J

    .prologue
    .line 319
    new-instance v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 320
    .local v5, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v14

    .line 321
    .local v14, "isLastInPeriod":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v15

    .line 322
    .local v15, "isLastInTimeline":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v6, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 323
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, p4, v6

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    .line 324
    .local v12, "durationUs":J
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v16}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZLcom/google/android/exoplayer2/MediaPeriodInfoSequence$1;)V

    return-object v4

    .end local v12    # "durationUs":J
    :cond_0
    move-wide/from16 v12, p4

    .line 323
    goto :goto_0
.end method

.method private getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 13
    .param p1, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .param p2, "newId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .prologue
    .line 275
    iget-wide v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    .line 276
    .local v2, "startPositionUs":J
    iget-wide v4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    .line 277
    .local v4, "endPositionUs":J
    invoke-direct {p0, p2, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v10

    .line 278
    .local v10, "isLastInPeriod":Z
    invoke-direct {p0, p2, v10}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v11

    .line 279
    .local v11, "isLastInTimeline":Z
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 280
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 281
    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    .line 283
    .local v8, "durationUs":J
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v6, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    const/4 v12, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZLcom/google/android/exoplayer2/MediaPeriodInfoSequence$1;)V

    return-object v0

    .line 281
    .end local v8    # "durationUs":J
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 282
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v8

    goto :goto_0

    :cond_1
    move-wide v8, v4

    goto :goto_0
.end method

.method private isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z
    .locals 12
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "endPositionUs"    # J

    .prologue
    const-wide/high16 v10, -0x8000000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 329
    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v8, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v9, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    .line 330
    .local v0, "adGroupCount":I
    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v5

    .line 334
    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 335
    .local v3, "lastAdGroupIndex":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    .line 336
    .local v1, "isAd":Z
    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 338
    if-nez v1, :cond_2

    cmp-long v7, p2, v10

    if-eqz v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    .line 341
    :cond_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v4

    .line 342
    .local v4, "postrollAdCount":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_4

    move v5, v6

    .line 344
    goto :goto_0

    .line 347
    :cond_4
    if-eqz v1, :cond_7

    iget v7, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v7, v3, :cond_7

    iget v7, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/lit8 v8, v4, -0x1

    if-ne v7, v8, :cond_7

    move v2, v5

    .line 349
    .local v2, "isLastAd":Z
    :goto_1
    if-nez v2, :cond_5

    if-nez v1, :cond_6

    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getPlayedAdCount(I)I

    move-result v7

    if-ne v7, v4, :cond_6

    :cond_5
    move v6, v5

    :cond_6
    move v5, v6

    goto :goto_0

    .end local v2    # "isLastAd":Z
    :cond_7
    move v2, v6

    .line 347
    goto :goto_1
.end method

.method private isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .locals 7
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "isLastMediaPeriodInPeriod"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 354
    .local v6, "windowIndex":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v6, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->repeatMode:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->shuffleModeEnabled:Z

    .line 355
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 6
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .prologue
    .line 143
    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 38
    .param p1, "currentMediaPeriodInfo"    # Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .param p2, "rendererOffsetUs"    # J
    .param p4, "rendererPositionUs"    # J

    .prologue
    .line 162
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v2, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->repeatMode:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->shuffleModeEnabled:Z

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v36

    .line 165
    .local v36, "nextPeriodIndex":I
    const/4 v2, -0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 234
    .end local v36    # "nextPeriodIndex":I
    :goto_0
    return-object v2

    .line 171
    .restart local v36    # "nextPeriodIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v0, v36

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 172
    .local v5, "nextWindowIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v0, v36

    if-ne v2, v0, :cond_2

    .line 178
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    add-long v2, v2, p2

    sub-long v34, v2, p4

    .line 180
    .local v34, "defaultPositionProjectionUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    .line 181
    move-wide/from16 v0, v34

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 180
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v33

    .line 182
    .local v33, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v33, :cond_1

    .line 183
    const/4 v2, 0x0

    goto :goto_0

    .line 185
    :cond_1
    move-object/from16 v0, v33

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 186
    move-object/from16 v0, v33

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 190
    .end local v33    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v34    # "defaultPositionProjectionUs":J
    .local v8, "startPositionUs":J
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v7

    .local v7, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-object/from16 v6, p0

    move-wide v10, v8

    .line 191
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v2

    goto :goto_0

    .line 188
    .end local v7    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v8    # "startPositionUs":J
    :cond_2
    const-wide/16 v8, 0x0

    .restart local v8    # "startPositionUs":J
    goto :goto_1

    .line 194
    .end local v5    # "nextWindowIndex":I
    .end local v8    # "startPositionUs":J
    .end local v36    # "nextPeriodIndex":I
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v32, v0

    .line 195
    .local v32, "currentPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 196
    move-object/from16 v0, v32

    iget v12, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 197
    .local v12, "currentAdGroupIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, v32

    iget v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v30

    .line 199
    .local v30, "adCountInCurrentAdGroup":I
    const/4 v2, -0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_4

    .line 200
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 202
    :cond_4
    move-object/from16 v0, v32

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/lit8 v13, v2, 0x1

    .line 203
    .local v13, "nextAdIndexInAdGroup":I
    move/from16 v0, v30

    if-ge v13, v0, :cond_6

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, v32

    iget v11, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    move-object/from16 v10, p0

    .line 206
    invoke-direct/range {v10 .. v15}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v2

    goto/16 :goto_0

    .line 210
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    .line 211
    invoke-virtual {v2, v10, v11}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v22

    .line 212
    .local v22, "nextAdGroupIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    const-wide/high16 v18, -0x8000000000000000L

    .line 214
    .local v18, "endUs":J
    :goto_2
    move-object/from16 v0, v32

    iget v15, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    move-wide/from16 v16, v0

    move-object/from16 v14, p0

    invoke-direct/range {v14 .. v19}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForContent(IJJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v2

    goto/16 :goto_0

    .line 212
    .end local v18    # "endUs":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 213
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v18

    goto :goto_2

    .line 217
    .end local v12    # "currentAdGroupIndex":I
    .end local v13    # "nextAdIndexInAdGroup":I
    .end local v22    # "nextAdGroupIndex":I
    .end local v30    # "adCountInCurrentAdGroup":I
    :cond_8
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v2, v2, v10

    if-eqz v2, :cond_a

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    .line 220
    invoke-virtual {v2, v10, v11}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v22

    .line 221
    .restart local v22    # "nextAdGroupIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, v32

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    move-wide/from16 v24, v0

    move-object/from16 v20, p0

    .line 222
    invoke-direct/range {v20 .. v25}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v2

    goto/16 :goto_0

    .line 226
    .end local v22    # "nextAdGroupIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v31

    .line 227
    .local v31, "adGroupCount":I
    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    add-int/lit8 v3, v31, -0x1

    .line 228
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v2

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v2, v2, v10

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    add-int/lit8 v3, v31, -0x1

    .line 229
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    add-int/lit8 v3, v31, -0x1

    const/4 v4, 0x0

    .line 230
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v2

    if-nez v2, :cond_c

    .line 231
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 233
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v28

    .line 234
    .local v28, "contentDurationUs":J
    move-object/from16 v0, v32

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move/from16 v25, v0

    add-int/lit8 v26, v31, -0x1

    const/16 v27, 0x0

    move-object/from16 v24, p0

    invoke-direct/range {v24 .. v29}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 1
    .param p1, "mediaPeriodInfo"    # Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .prologue
    .line 259
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 1
    .param p1, "mediaPeriodInfo"    # Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .param p2, "newPeriodIndex"    # I

    .prologue
    .line 268
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 269
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 4
    .param p1, "periodIndex"    # I
    .param p2, "positionUs"    # J

    .prologue
    .line 245
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 246
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v0

    .line 247
    .local v0, "adGroupIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 248
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 251
    :goto_0
    return-object v2

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPlayedAdCount(I)I

    move-result v1

    .line 251
    .local v1, "adIndexInAdGroup":I
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(III)V

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->repeatMode:I

    .line 129
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->shuffleModeEnabled:Z

    .line 137
    return-void
.end method

.method public setTimeline(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 121
    return-void
.end method
