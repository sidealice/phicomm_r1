.class Lcom/phicomm/speaker/player/model/NetPlayer4$13;
.super Ljava/lang/Object;
.source "NetPlayer4.java"

# interfaces
.implements Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/NetPlayer4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$13;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingPauseTimeOut(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 1122
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$13;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1200(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1123
    return-void
.end method

.method public onPreParingTimeOut(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 1117
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$13;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1200(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1118
    return-void
.end method

.method public onUrlValidTimeOut(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 1127
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$13;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1400(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1128
    return-void
.end method
