.class public interface abstract Lcom/google/android/exoplayer2/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Player$DiscontinuityReason;,
        Lcom/google/android/exoplayer2/Player$RepeatMode;,
        Lcom/google/android/exoplayer2/Player$DefaultEventListener;,
        Lcom/google/android/exoplayer2/Player$EventListener;
    }
.end annotation


# static fields
.field public static final DISCONTINUITY_REASON_INTERNAL:I = 0x3

.field public static final DISCONTINUITY_REASON_PERIOD_TRANSITION:I = 0x0

.field public static final DISCONTINUITY_REASON_SEEK:I = 0x1

.field public static final DISCONTINUITY_REASON_SEEK_ADJUSTMENT:I = 0x2

.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_OFF:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3


# virtual methods
.method public abstract addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentManifest()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
.end method

.method public abstract getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
.end method

.method public abstract getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
.end method

.method public abstract getCurrentWindowIndex()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getNextWindowIndex()I
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getPreviousWindowIndex()I
.end method

.method public abstract getRendererCount()I
.end method

.method public abstract getRendererType(I)I
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleModeEnabled()Z
.end method

.method public abstract isCurrentWindowDynamic()Z
.end method

.method public abstract isCurrentWindowSeekable()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract isPlayingAd()Z
.end method

.method public abstract release()V
.end method

.method public abstract removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract seekToDefaultPosition()V
.end method

.method public abstract seekToDefaultPosition(I)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .param p1    # Lcom/google/android/exoplayer2/PlaybackParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleModeEnabled(Z)V
.end method

.method public abstract stop()V
.end method
