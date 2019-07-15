.class Lcom/phicomm/speaker/player/model/RemotePlayer$1;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 62
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$1;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Binder\u5931\u6548"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const-class v1, Lcom/phicomm/speaker/player/model/RemotePlayer;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$1;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$200(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/phicomm/speaker/player/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$1;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$100(Lcom/phicomm/speaker/player/model/RemotePlayer;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$1;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$202(Lcom/phicomm/speaker/player/model/RemotePlayer;Lcom/phicomm/speaker/player/IPlayer;)Lcom/phicomm/speaker/player/IPlayer;

    .line 69
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$1;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->connectRemoteService()V

    .line 71
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/model/RemotePlayer$1$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/RemotePlayer$1$1;-><init>(Lcom/phicomm/speaker/player/model/RemotePlayer$1;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
