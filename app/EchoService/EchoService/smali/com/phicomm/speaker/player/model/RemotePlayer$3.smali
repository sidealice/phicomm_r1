.class Lcom/phicomm/speaker/player/model/RemotePlayer$3;
.super Lcom/phicomm/speaker/player/IPlayerCallback$Stub;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/RemotePlayer;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-direct {p0}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaState(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Callback: onMediaPlaying state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;-><init>(Lcom/phicomm/speaker/player/model/RemotePlayer$3;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public onReqNewPage(I)V
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Callback: onReqNewPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;-><init>(Lcom/phicomm/speaker/player/model/RemotePlayer$3;I)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method
