.class Lcom/phicomm/speaker/player/model/AudioPlayer$12;
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
    .line 953
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 958
    :try_start_0
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crossFadeRunnable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getPlayMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 963
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2700(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2800(Lcom/phicomm/speaker/player/model/AudioPlayer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_1

    .line 966
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 968
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1600(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1600(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 969
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1700(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1700(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 972
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1000(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 976
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$700(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 977
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 978
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$302(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 979
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crossFadeRunnable MediaPlayerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NextMediaPlayerState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1600(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2600(Lcom/phicomm/speaker/player/model/AudioPlayer;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float v3, v5, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1602(Lcom/phicomm/speaker/player/model/AudioPlayer;F)F

    .line 1008
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1700(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$2600(Lcom/phicomm/speaker/player/model/AudioPlayer;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float v3, v5, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1702(Lcom/phicomm/speaker/player/model/AudioPlayer;F)F

    .line 1009
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->crossFadeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1015
    :cond_1
    :goto_1
    return-void

    .line 989
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1600(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1600(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 990
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1700(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1700(Lcom/phicomm/speaker/player/model/AudioPlayer;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 993
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$000(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 997
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$700(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 998
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 999
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$102(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 1000
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crossFadeRunnable MediaPlayerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NextMediaPlayerState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
