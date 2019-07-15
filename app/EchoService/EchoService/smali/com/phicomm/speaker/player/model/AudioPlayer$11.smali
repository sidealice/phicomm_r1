.class Lcom/phicomm/speaker/player/model/AudioPlayer$11;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 923
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 930
    :try_start_0
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "startCrossFadeRunnable"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 932
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 933
    .local v0, "currentTrackDuration":I
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2600(Lcom/phicomm/speaker/player/model/AudioPlayer;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    sub-int v1, v0, v3

    .line 934
    .local v1, "currentTrackFadePosition":I
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 936
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/player/model/AudioPlayer;->crossFadeRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 946
    .end local v0    # "currentTrackDuration":I
    .end local v1    # "currentTrackFadePosition":I
    :goto_0
    return-void

    .line 938
    .restart local v0    # "currentTrackDuration":I
    .restart local v1    # "currentTrackFadePosition":I
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 943
    .end local v0    # "currentTrackDuration":I
    .end local v1    # "currentTrackFadePosition":I
    :catch_0
    move-exception v2

    .line 944
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 941
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
