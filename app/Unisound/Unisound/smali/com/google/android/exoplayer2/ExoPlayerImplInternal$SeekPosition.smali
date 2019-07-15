.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekPosition"
.end annotation


# instance fields
.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 1
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J

    .prologue
    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1566
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1567
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    .line 1568
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 1569
    return-void
.end method
