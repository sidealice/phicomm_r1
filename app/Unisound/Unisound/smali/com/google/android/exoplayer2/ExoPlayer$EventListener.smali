.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onLoadingChanged(Z)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
.end method

.method public abstract onPositionDiscontinuity()V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
.end method

.method public abstract onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
.end method
