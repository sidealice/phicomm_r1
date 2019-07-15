.class final Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "SinglePeriodAdTimeline.java"


# instance fields
.field private final adCounts:[I

.field private final adDurationsUs:[[J

.field private final adGroupTimesUs:[J

.field private final adResumePositionUs:J

.field private final adsLoadedCounts:[I

.field private final adsPlayedCounts:[I

.field private final contentDurationUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;[J[I[I[I[[JJJ)V
    .locals 3
    .param p1, "contentTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "adGroupTimesUs"    # [J
    .param p3, "adCounts"    # [I
    .param p4, "adsLoadedCounts"    # [I
    .param p5, "adsPlayedCounts"    # [I
    .param p6, "adDurationsUs"    # [[J
    .param p7, "adResumePositionUs"    # J
    .param p9, "contentDurationUs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 59
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 60
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 61
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adGroupTimesUs:[J

    .line 62
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adCounts:[I

    .line 63
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adsLoadedCounts:[I

    .line 64
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adsPlayedCounts:[I

    .line 65
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adDurationsUs:[[J

    .line 66
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adResumePositionUs:J

    .line 67
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->contentDurationUs:J

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0

    :cond_1
    move v1, v2

    .line 60
    goto :goto_1
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 19
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 73
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    move-object/from16 v0, p2

    iget v7, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adGroupTimesUs:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adCounts:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adsLoadedCounts:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adsPlayedCounts:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adDurationsUs:[[J

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adResumePositionUs:J

    move-wide/from16 v17, v0

    move-object/from16 v4, p2

    .line 73
    invoke-virtual/range {v4 .. v18}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ[J[I[I[I[[JJ)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 76
    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 4
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    .line 83
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->contentDurationUs:J

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 86
    :cond_0
    return-object p2
.end method
