.class Lcom/phicomm/speaker/player/model/RemotePlayer$2$1;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/RemotePlayer$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/RemotePlayer$2;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$300(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$300(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$2$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$2;

    iget-object v1, v1, Lcom/phicomm/speaker/player/model/RemotePlayer$2;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;->onRemoteConnected(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 101
    :cond_0
    return-void
.end method
