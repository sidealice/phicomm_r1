.class public final Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation


# static fields
.field public static final MAX_EXPOSED_PERIODS:I = 0x9660180

.field private static final TAG:Ljava/lang/String; = "LoopingMediaSource"


# instance fields
.field private childPeriodCount:I

.field private final childSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "childSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 52
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V
    .locals 1
    .param p1, "childSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "loopCount"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 66
    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/source/LoopingMediaSource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/LoopingMediaSource;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/LoopingMediaSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    return v0
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 3
    .param p1, "index"    # I
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    rem-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 83
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;

    invoke-direct {v2, p0, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/LoopingMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 78
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 93
    return-void
.end method

.method public releaseSource()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 98
    return-void
.end method
