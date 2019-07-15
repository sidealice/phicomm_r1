.class final Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 955
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 956
    return-void

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 944
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 945
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 948
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 949
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    goto :goto_0

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    goto :goto_0
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 926
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 914
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    .line 936
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 902
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 903
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 909
    return-void
.end method

.method public onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 4
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    :cond_0
    return-void
.end method

.method public onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;)V
    .locals 2
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 880
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$302(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 881
    return-void
.end method

.method public onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
    .locals 2
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J
    .param p4, "canceled"    # Z

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$302(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 893
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 897
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 919
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 921
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "selections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 931
    return-void
.end method
