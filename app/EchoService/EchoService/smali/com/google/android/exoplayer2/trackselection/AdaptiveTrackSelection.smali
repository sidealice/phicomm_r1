.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_INITIAL_BITRATE:I = 0xc3500

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private reason:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 14
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .prologue
    .line 153
    const v5, 0xc3500

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x61a8

    const-wide/16 v10, 0x61a8

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f400000    # 0.75f

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJFF)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJFF)V
    .locals 3
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p4, "maxInitialBitrate"    # I
    .param p5, "minDurationForQualityIncreaseMs"    # J
    .param p7, "maxDurationForQualityDecreaseMs"    # J
    .param p9, "minDurationToRetainAfterDiscardMs"    # J
    .param p11, "bandwidthFraction"    # F
    .param p12, "bufferedFractionToLiveEdgeForQualityIncrease"    # F

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 191
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 192
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxInitialBitrate:I

    .line 193
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p5

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    .line 194
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p7

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    .line 195
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p9

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 196
    iput p11, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    .line 197
    iput p12, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 199
    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 201
    return-void
.end method

.method private determineIdealSelectedIndex(J)I
    .locals 11
    .param p1, "nowMs"    # J

    .prologue
    .line 288
    iget-object v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    .line 289
    .local v0, "bitrateEstimate":J
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    iget v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxInitialBitrate:I

    int-to-long v2, v7

    .line 291
    .local v2, "effectiveBitrate":J
    :goto_0
    const/4 v6, 0x0

    .line 292
    .local v6, "lowestBitrateNonBlacklistedIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v5, v7, :cond_4

    .line 293
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v7, p1, v8

    if-eqz v7, :cond_0

    invoke-virtual {p0, v5, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v7

    if-nez v7, :cond_3

    .line 294
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 295
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget v7, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v8, v7

    cmp-long v7, v8, v2

    if-gtz v7, :cond_2

    .line 302
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v5    # "i":I
    :goto_2
    return v5

    .line 289
    .end local v2    # "effectiveBitrate":J
    .end local v6    # "lowestBitrateNonBlacklistedIndex":I
    :cond_1
    long-to-float v7, v0

    iget v8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float/2addr v7, v8

    float-to-long v2, v7

    goto :goto_0

    .line 298
    .restart local v2    # "effectiveBitrate":J
    .restart local v4    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v5    # "i":I
    .restart local v6    # "lowestBitrateNonBlacklistedIndex":I
    :cond_2
    move v6, v5

    .line 292
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    .line 302
    goto :goto_2
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .locals 5
    .param p1, "availableDurationUs"    # J

    .prologue
    .line 306
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 308
    .local v0, "isAvailableDurationTooShort":Z
    :goto_0
    if-eqz v0, :cond_1

    long-to-float v1, p1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    :goto_1
    return-wide v2

    .line 306
    .end local v0    # "isAvailableDurationTooShort":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    .restart local v0    # "isAvailableDurationTooShort":Z
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    goto :goto_1
.end method


# virtual methods
.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 15
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 253
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 254
    const/4 v11, 0x0

    .line 278
    :cond_0
    :goto_0
    return v11

    .line 256
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    .line 257
    .local v11, "queueSize":I
    add-int/lit8 v12, v11, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget-wide v12, v12, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long v2, v12, p1

    .line 258
    .local v2, "bufferedDurationUs":J
    iget-wide v12, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v12, v2, v12

    if-ltz v12, :cond_0

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-direct {p0, v12, v13}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v10

    .line 262
    .local v10, "idealSelectedIndex":I
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 266
    .local v9, "idealFormat":Lcom/google/android/exoplayer2/Format;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v11, :cond_0

    .line 267
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 268
    .local v4, "chunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 269
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    iget-wide v12, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v12, p1

    .line 270
    .local v6, "durationBeforeThisChunkUs":J
    iget-wide v12, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v12, v6, v12

    if-ltz v12, :cond_2

    iget v12, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v13, v9, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v12, v13, :cond_2

    iget v12, v5, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    iget v12, v5, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v13, 0x2d0

    if-ge v12, v13, :cond_2

    iget v12, v5, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    iget v12, v5, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v13, 0x500

    if-ge v12, v13, :cond_2

    iget v12, v5, Lcom/google/android/exoplayer2/Format;->height:I

    iget v13, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v12, v13, :cond_2

    move v11, v8

    .line 275
    goto :goto_0

    .line 266
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(JJJ)V
    .locals 9
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J

    .prologue
    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 208
    .local v2, "nowMs":J
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 209
    .local v1, "currentSelectedIndex":I
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 210
    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-ne v5, v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v5

    if-nez v5, :cond_2

    .line 216
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 217
    .local v0, "currentFormat":Lcom/google/android/exoplayer2/Format;
    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 218
    .local v4, "selectedFormat":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le v5, v6, :cond_3

    .line 219
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-gez v5, :cond_3

    .line 222
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 231
    .end local v0    # "currentFormat":Lcom/google/android/exoplayer2/Format;
    .end local v4    # "selectedFormat":Lcom/google/android/exoplayer2/Format;
    :cond_2
    :goto_1
    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-eq v5, v1, :cond_0

    .line 232
    const/4 v5, 0x3

    iput v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    goto :goto_0

    .line 223
    .restart local v0    # "currentFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v4    # "selectedFormat":Lcom/google/android/exoplayer2/Format;
    :cond_3
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v5, v6, :cond_2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v5, p3, v6

    if-ltz v5, :cond_2

    .line 227
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_1
.end method
