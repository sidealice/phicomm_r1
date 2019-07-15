.class Lcom/phicomm/speaker/player/model/EasyPlayer$1;
.super Ljava/lang/Object;
.source "EasyPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/EasyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/EasyPlayer;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteConnected(Lcom/phicomm/speaker/player/interfaces/Player;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;

    .prologue
    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onRemoteConnected, player: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$200(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/interfaces/Player;

    move-result-object v0

    if-nez v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$300(Lcom/phicomm/speaker/player/model/EasyPlayer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$400(Lcom/phicomm/speaker/player/model/EasyPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/util/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$500(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/model/RemotePlayer;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$600(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/model/RemotePlayer;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 783
    :cond_0
    invoke-interface {p1}, Lcom/phicomm/speaker/player/interfaces/Player;->startServer()V

    .line 786
    :cond_1
    return-void
.end method

.method public onRemoteDisconnected(Lcom/phicomm/speaker/player/interfaces/Player;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onRemoteDisconnected, player: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$700(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 792
    return-void
.end method
