.class Lcom/phicomm/speaker/player/model/AudioPlayer$7;
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
    .line 853
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 857
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->getCurrentVolume()I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->getTargetVolume()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->getCurrentVolume()I

    move-result v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->getStepDownIncrement()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 862
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setCurrentVolume(I)V

    .line 863
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 865
    :cond_0
    return-void
.end method
