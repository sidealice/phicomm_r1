.class final Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSeekTo(Lcom/google/android/exoplayer2/ExoPlayer;IJ)Z
    .locals 1
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .prologue
    .line 208
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z
    .locals 1
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 202
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 203
    const/4 v0, 0x1

    return v0
.end method
