.class Lcom/phicomm/speaker/player/model/AudioPlayer$6;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 806
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6
    .param p1, "focusChange"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 810
    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 814
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 818
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x3

    if-ne p1, v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setAudioDucked(Z)V

    .line 821
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setTargetVolume(I)V

    .line 822
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setStepDownIncrement(I)V

    .line 823
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setCurrentVolume(I)V

    .line 824
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setOriginalVolume(I)V

    .line 825
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 826
    :cond_2
    if-ne p1, v3, :cond_4

    .line 828
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->isAudioDucked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->getOriginalVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setTargetVolume(I)V

    .line 831
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setStepUpIncrement(I)V

    .line 832
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setCurrentVolume(I)V

    .line 834
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 835
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setAudioDucked(Z)V

    goto/16 :goto_0

    .line 838
    :cond_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V

    goto/16 :goto_0

    .line 841
    :cond_4
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 844
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V

    goto/16 :goto_0
.end method
