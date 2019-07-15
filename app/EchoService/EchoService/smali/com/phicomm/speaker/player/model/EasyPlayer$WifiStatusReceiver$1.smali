.class Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$1;
.super Ljava/lang/Object;
.source "EasyPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$1;->this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WifiStatusReceiver, CONNECTED."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$1;->this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$300(Lcom/phicomm/speaker/player/model/EasyPlayer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 834
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$1;->this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$500(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/model/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->startServer()V

    .line 835
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$1;->this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$600(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/model/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->startServer()V

    .line 837
    :cond_0
    return-void
.end method
