.class Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;
.super Ljava/lang/Object;
.source "MultiMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 1021
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    monitor-enter v1

    .line 1026
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " onBufferingUpdateListener mMediaPlayer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", percent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2200(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2602(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;I)I

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2702(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;I)I

    .line 1035
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-interface {v0, v2, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;I)V

    .line 1040
    :cond_1
    monitor-exit v1

    .line 1041
    return-void

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
