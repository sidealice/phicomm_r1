.class Lcom/phicomm/speaker/player/model/AudioPlayer$3;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 672
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYBACK_COMPLETED:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$102(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 673
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaPlayerCompleted MediaPlayerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NextMediaPlayerState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->crossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/util/Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/util/Common;->isCrossfadeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1602(Lcom/phicomm/speaker/player/model/AudioPlayer;F)F

    .line 686
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1, v4}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1702(Lcom/phicomm/speaker/player/model/AudioPlayer;F)F

    .line 689
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 690
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->isAtEndOfQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getPlayMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 695
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->stop()Z

    .line 706
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1000(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1800(Lcom/phicomm/speaker/player/model/AudioPlayer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1900(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 700
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1900(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
