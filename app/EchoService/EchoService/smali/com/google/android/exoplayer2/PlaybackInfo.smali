.class final Lcom/google/android/exoplayer2/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# instance fields
.field public volatile bufferedPositionUs:J

.field public final contentPositionUs:J

.field public final manifest:Ljava/lang/Object;

.field public final periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public volatile positionUs:J

.field public final startPositionUs:J

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IJ)V
    .locals 8
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
    .param p3, "periodIndex"    # I
    .param p4, "startPositionUs"    # J

    .prologue
    .line 35
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v3, p3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
    .param p3, "periodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p4, "startPositionUs"    # J
    .param p6, "contentPositionUs"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 43
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    .line 44
    iput-wide p6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    .line 45
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 46
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 47
    return-void
.end method

.method private static copyMutablePositions(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 2
    .param p0, "from"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "to"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 75
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 76
    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 8
    .param p1, "periodIndex"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 61
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    .line 62
    .local v0, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyMutablePositions(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 63
    return-object v0
.end method

.method public copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 8
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    .line 69
    .local v0, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyMutablePositions(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 70
    return-object v0
.end method

.method public fromNewPosition(IJJ)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 6
    .param p1, "periodIndex"    # I
    .param p2, "startPositionUs"    # J
    .param p4, "contentPositionUs"    # J

    .prologue
    .line 51
    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackInfo;->fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public fromNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 8
    .param p1, "periodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "startPositionUs"    # J
    .param p4, "contentPositionUs"    # J

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    return-object v0
.end method
