.class Lcom/phicomm/speaker/player/model/AudioPlayer$2;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 639
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x1

    .line 644
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1002(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z

    .line 645
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARED:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$302(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 646
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextMediaPlayerPrepared MediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NextMediaPlayerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 652
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$700(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextMediaPlayerPrepared paused when preparing unable to init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1302(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z

    .line 658
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PAUSED:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$102(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 661
    :cond_1
    return-void
.end method
