.class public Lcom/google/android/exoplayer2/DefaultControlDispatcher;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ControlDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z
    .locals 1
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .prologue
    .line 34
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 1
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 28
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z
    .locals 1
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "repeatMode"    # I

    .prologue
    .line 40
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchSetShuffleModeEnabled(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 1
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "shuffleModeEnabled"    # Z

    .prologue
    .line 46
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
