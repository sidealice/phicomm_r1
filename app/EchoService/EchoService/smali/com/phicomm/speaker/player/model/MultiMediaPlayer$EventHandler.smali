.class Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MultiMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/phicomm/speaker/player/model/MultiMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Landroid/os/Looper;)V
    .locals 1
    .param p2, "mp"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .line 1134
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->mMediaPlayer:Ljava/lang/ref/WeakReference;

    .line 1136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1140
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->mMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .line 1141
    .local v0, "player":Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    if-nez v0, :cond_1

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mediaplayer went away with unhandled events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1147
    :sswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;->onPreParingTimeOut(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    goto :goto_0

    .line 1153
    :sswitch_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;->onBufferingPauseTimeOut(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    goto :goto_0

    .line 1159
    :sswitch_2
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;->onUrlValidTimeOut(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    goto :goto_0

    .line 1165
    :sswitch_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1166
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$2800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v1, v0, v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;I)V

    goto :goto_0

    .line 1145
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method
