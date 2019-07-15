.class Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;
.super Ljava/lang/Object;
.source "MultiMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 824
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$002(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Z)Z

    .line 825
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARED:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$102(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaPlayerPrepared MediaPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NextMediaPlayerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$300(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$400(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 830
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$600(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 832
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$700(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CurrentMediaPlayer is not Parpared Player, unable to start."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1200(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 851
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 852
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 854
    :cond_0
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    .line 838
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;->onPrepared(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Z

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1000(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 842
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaPlayerPrepared paused when preparing unable to start."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 844
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mediaPlayerPrepared start play"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->start()Z

    goto/16 :goto_0
.end method
