.class Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;
.super Ljava/lang/Object;
.source "MultiMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 956
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 960
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    monitor-enter v2

    .line 961
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " onErrorListener mMediaPlayer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", what: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", extra:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, "result":Z
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 973
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_ERROR:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v1, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/PlayState;)V

    .line 975
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2000(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    .line 976
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-interface {v1, v3, p2, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;->onError(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;II)Z

    .line 979
    :cond_0
    const/4 v0, 0x1

    .line 983
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " onError MediaPlayerState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", NextMediaPlayerState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$300(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    monitor-exit v2

    return v0

    .line 980
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2200(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopParparingPlayer()Z

    goto :goto_0

    .line 985
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
