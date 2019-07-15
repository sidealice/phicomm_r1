.class final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
.implements Lcom/google/android/exoplayer2/text/TextRenderer$Output;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    .line 772
    :cond_0
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 802
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 822
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0
    .param p1, "e"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    .line 812
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$500(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V

    .line 807
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 790
    :cond_0
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 827
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "selections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$400(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    .line 795
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 779
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 780
    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 781
    .local v0, "aspectRatio":F
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 783
    .end local v0    # "aspectRatio":F
    :cond_0
    return-void

    .line 780
    :cond_1
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v2, p2

    div-float v0, v1, v2

    goto :goto_0
.end method
