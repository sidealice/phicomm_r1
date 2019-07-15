.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodSeekInfo"
.end annotation


# instance fields
.field public final availableEndTimeUs:J

.field public final availableStartTimeUs:J

.field public final isIndexExplicit:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0
    .param p1, "isIndexExplicit"    # Z
    .param p2, "availableStartTimeUs"    # J
    .param p4, "availableEndTimeUs"    # J

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    .line 619
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 620
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    .line 621
    return-void
.end method

.method public static createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .locals 27
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .param p1, "durationUs"    # J

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 582
    .local v14, "adaptationSetCount":I
    const-wide/16 v6, 0x0

    .line 583
    .local v6, "availableStartTimeUs":J
    const-wide v8, 0x7fffffffffffffffL

    .line 584
    .local v8, "availableEndTimeUs":J
    const/4 v5, 0x0

    .line 585
    .local v5, "isIndexExplicit":Z
    const/16 v19, 0x0

    .line 586
    .local v19, "seenEmptyIndex":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_3

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v17

    .line 588
    .local v17, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v17, :cond_0

    .line 589
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    .line 609
    .end local v5    # "isIndexExplicit":Z
    .end local v6    # "availableStartTimeUs":J
    .end local v8    # "availableEndTimeUs":J
    .end local v17    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :goto_1
    return-object v4

    .line 591
    .restart local v5    # "isIndexExplicit":Z
    .restart local v6    # "availableStartTimeUs":J
    .restart local v8    # "availableEndTimeUs":J
    .restart local v17    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :cond_0
    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v4

    or-int/2addr v5, v4

    .line 592
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v20

    .line 593
    .local v20, "segmentCount":I
    if-nez v20, :cond_2

    .line 594
    const/16 v19, 0x1

    .line 595
    const-wide/16 v6, 0x0

    .line 596
    const-wide/16 v8, 0x0

    .line 586
    :cond_1
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 597
    :cond_2
    if-nez v19, :cond_1

    .line 598
    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v15

    .line 599
    .local v15, "firstSegmentNum":I
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v12

    .line 600
    .local v12, "adaptationSetAvailableStartTimeUs":J
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 601
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    .line 602
    add-int v4, v15, v20

    add-int/lit8 v18, v4, -0x1

    .line 603
    .local v18, "lastSegmentNum":I
    invoke-interface/range {v17 .. v18}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v22

    .line 604
    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v24

    add-long v10, v22, v24

    .line 605
    .local v10, "adaptationSetAvailableEndTimeUs":J
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_2

    .line 609
    .end local v10    # "adaptationSetAvailableEndTimeUs":J
    .end local v12    # "adaptationSetAvailableStartTimeUs":J
    .end local v15    # "firstSegmentNum":I
    .end local v17    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v18    # "lastSegmentNum":I
    .end local v20    # "segmentCount":I
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    goto :goto_1
.end method
