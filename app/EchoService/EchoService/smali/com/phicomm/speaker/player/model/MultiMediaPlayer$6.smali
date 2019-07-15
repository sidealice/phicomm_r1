.class Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;
.super Ljava/lang/Object;
.source "MultiMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 992
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 996
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    monitor-enter v2

    .line 997
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " onInfoListener mMediaPlayer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, "result":Z
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1001
    const/16 v1, 0x2bd

    if-ne p2, v1, :cond_2

    .line 1002
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2300(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;J)V

    .line 1003
    const/4 v0, 0x1

    .line 1008
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    move-result-object v1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-interface {v1, v3, p2, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;->onInfo(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;II)Z

    .line 1013
    :cond_1
    monitor-exit v2

    return v0

    .line 1004
    :cond_2
    const/16 v1, 0x2be

    if-ne p2, v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2400(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Z)V

    .line 1006
    const/4 v0, 0x1

    goto :goto_0

    .line 1014
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
