.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtil"
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private lastRawPlaybackHeadPosition:J

.field private needsPassthroughWorkaround:Z

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackHeadPosition()J
    .locals 12

    .prologue
    .line 1382
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    sub-long v0, v8, v10

    .line 1385
    .local v0, "elapsedTimeSinceStopUs":J
    iget v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    int-to-long v8, v7

    mul-long/2addr v8, v0

    const-wide/32 v10, 0xf4240

    div-long v2, v8, v10

    .line 1386
    .local v2, "framesSinceStop":J
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopPlaybackHeadPosition:J

    add-long/2addr v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1428
    .end local v0    # "elapsedTimeSinceStopUs":J
    .end local v2    # "framesSinceStop":J
    :goto_0
    return-wide v8

    .line 1389
    :cond_0
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    .line 1390
    .local v6, "state":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1392
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1395
    :cond_1
    const-wide v8, 0xffffffffL

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v7

    int-to-long v10, v7

    and-long v4, v8, v10

    .line 1396
    .local v4, "rawPlaybackHeadPosition":J
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsPassthroughWorkaround:Z

    if-eqz v7, :cond_3

    .line 1400
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 1401
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1403
    :cond_2
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v4, v8

    .line 1406
    :cond_3
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x1a

    if-gt v7, v8, :cond_6

    .line 1407
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 1414
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 1415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    .line 1417
    :cond_4
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    goto :goto_0

    .line 1419
    :cond_5
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    .line 1423
    :cond_6
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v7, v8, v4

    if-lez v7, :cond_7

    .line 1425
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1427
    :cond_7
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1428
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v7, 0x20

    shl-long/2addr v8, v7

    add-long/2addr v8, v4

    goto :goto_0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimestampFramePosition()J
    .locals 1

    .prologue
    .line 1475
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .locals 1

    .prologue
    .line 1459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleEndOfStream(J)V
    .locals 5
    .param p1, "writtenFrames"    # J

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopPlaybackHeadPosition:J

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    .line 1346
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->endPlaybackHeadPosition:J

    .line 1347
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1348
    return-void
.end method

.method public needsReset(J)Z
    .locals 5
    .param p1, "writtenFrames"    # J

    .prologue
    .line 1368
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1355
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 4
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "needsPassthroughWorkaround"    # Z

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v0, 0x0

    .line 1324
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    .line 1325
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsPassthroughWorkaround:Z

    .line 1326
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    .line 1327
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    .line 1328
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1329
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1330
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1331
    if-eqz p1, :cond_0

    .line 1332
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    .line 1334
    :cond_0
    return-void
.end method

.method public updateTimestamp()Z
    .locals 1

    .prologue
    .line 1445
    const/4 v0, 0x0

    return v0
.end method
