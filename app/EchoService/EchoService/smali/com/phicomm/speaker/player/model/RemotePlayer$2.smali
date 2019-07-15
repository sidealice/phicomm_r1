.class Lcom/phicomm/speaker/player/model/RemotePlayer$2;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 82
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Service has connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-class v2, Lcom/phicomm/speaker/player/model/RemotePlayer;

    monitor-enter v2

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {p2}, Lcom/phicomm/speaker/player/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$202(Lcom/phicomm/speaker/player/model/RemotePlayer;Lcom/phicomm/speaker/player/IPlayer;)Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$200(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$100(Lcom/phicomm/speaker/player/model/RemotePlayer;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 89
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$200(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/IPlayer;

    move-result-object v1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$400(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/IPlayerCallback$Stub;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/phicomm/speaker/player/IPlayer;->registerCallback(Lcom/phicomm/speaker/player/IPlayerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$500(Lcom/phicomm/speaker/player/model/RemotePlayer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 94
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/model/RemotePlayer$2$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/player/model/RemotePlayer$2$1;-><init>(Lcom/phicomm/speaker/player/model/RemotePlayer$2;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Service has unexpectedly disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method
