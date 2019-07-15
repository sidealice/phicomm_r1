.class public final Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private final displayListener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private vsyncDurationNs:J

.field private vsyncOffsetNs:J

.field private final vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_1

    move-object v0, v1

    .line 76
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 78
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->maybeBuildDefaultDisplayListenerV17(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->displayListener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 79
    invoke-static {}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    .line 84
    :goto_1
    iput-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 85
    iput-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    .line 86
    return-void

    .line 75
    :cond_1
    const-string v0, "window"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_0

    .line 81
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->displayListener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 82
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->updateDefaultDisplayRefreshRateParams()V

    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 14
    .param p0, "releaseTime"    # J
    .param p2, "sampledVsyncTime"    # J
    .param p4, "vsyncDuration"    # J

    .prologue
    .line 210
    sub-long v12, p0, p2

    div-long v10, v12, p4

    .line 211
    .local v10, "vsyncCount":J
    mul-long v12, p4, v10

    add-long v8, p2, v12

    .line 214
    .local v8, "snappedTimeNs":J
    cmp-long v12, p0, v8

    if-gtz v12, :cond_0

    .line 215
    sub-long v6, v8, p4

    .line 216
    .local v6, "snappedBeforeNs":J
    move-wide v2, v8

    .line 221
    .local v2, "snappedAfterNs":J
    :goto_0
    sub-long v0, v2, p0

    .line 222
    .local v0, "snappedAfterDiff":J
    sub-long v4, p0, v6

    .line 223
    .local v4, "snappedBeforeDiff":J
    cmp-long v12, v0, v4

    if-gez v12, :cond_1

    .end local v2    # "snappedAfterNs":J
    :goto_1
    return-wide v2

    .line 218
    .end local v0    # "snappedAfterDiff":J
    .end local v4    # "snappedBeforeDiff":J
    .end local v6    # "snappedBeforeNs":J
    :cond_0
    move-wide v6, v8

    .line 219
    .restart local v6    # "snappedBeforeNs":J
    add-long v2, v8, p4

    .restart local v2    # "snappedAfterNs":J
    goto :goto_0

    .restart local v0    # "snappedAfterDiff":J
    .restart local v4    # "snappedBeforeDiff":J
    :cond_1
    move-wide v2, v6

    .line 223
    goto :goto_1
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 9
    .param p1, "frameTimeNs"    # J
    .param p3, "releaseTimeNs"    # J

    .prologue
    .line 204
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, p1, v4

    .line 205
    .local v0, "elapsedFrameTimeNs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long v2, p3, v4

    .line 206
    .local v2, "elapsedReleaseTimeNs":J
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1312d00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private maybeBuildDefaultDisplayListenerV17(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 189
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 190
    .local v0, "manager":Landroid/hardware/display/DisplayManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;-><init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;Landroid/hardware/display/DisplayManager;)V

    goto :goto_0
.end method

.method private updateDefaultDisplayRefreshRateParams()V
    .locals 8

    .prologue
    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 196
    .local v0, "defaultDisplay":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    float-to-double v2, v1

    .line 198
    .local v2, "defaultDisplayRefreshRate":D
    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v2

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 199
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v6, 0x50

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    .line 201
    .end local v2    # "defaultDisplayRefreshRate":D
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 25
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "unadjustedReleaseTimeNs"    # J

    .prologue
    .line 124
    const-wide/16 v10, 0x3e8

    mul-long v18, p1, v10

    .line 127
    .local v18, "framePresentationTimeNs":J
    move-wide/from16 v12, v18

    .line 128
    .local v12, "adjustedFrameTimeNs":J
    move-wide/from16 v6, p3

    .line 130
    .local v6, "adjustedReleaseTimeNs":J
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v10, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v10, p1, v10

    if-eqz v10, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v22, 0x1

    add-long v10, v10, v22

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 134
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v22, 0x6

    cmp-long v10, v10, v22

    if-ltz v10, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v10, v18, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    move-wide/from16 v22, v0

    div-long v14, v10, v22

    .line 144
    .local v14, "averageFrameDurationNs":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long v16, v10, v14

    .line 146
    .local v16, "candidateAdjustedFrameTimeNs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 147
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 163
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v10, :cond_2

    .line 164
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    .line 165
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    .line 166
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 167
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 170
    :cond_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    .line 171
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 173
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v10, v22

    if-nez v10, :cond_6

    .line 184
    .end local v6    # "adjustedReleaseTimeNs":J
    :cond_3
    :goto_1
    return-wide v6

    .line 149
    .restart local v6    # "adjustedReleaseTimeNs":J
    .restart local v14    # "averageFrameDurationNs":J
    .restart local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_4
    move-wide/from16 v12, v16

    .line 150
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    move-wide/from16 v22, v0

    sub-long v6, v10, v22

    goto :goto_0

    .line 156
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 157
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_0

    .line 176
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v8, v10, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 177
    .local v8, "sampledVsyncTimeNs":J
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v8, v10

    if-eqz v10, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v20

    .line 184
    .local v20, "snappedTimeNs":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long v6, v20, v10

    goto :goto_1
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->displayListener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->displayListener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->unregister()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    .line 112
    :cond_1
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->displayListener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->displayListener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->register()V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->updateDefaultDisplayRefreshRateParams()V

    .line 100
    :cond_1
    return-void
.end method
