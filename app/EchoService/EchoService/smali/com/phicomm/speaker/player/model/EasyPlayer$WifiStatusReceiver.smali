.class Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EasyPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/EasyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/model/EasyPlayer;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/model/EasyPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/model/EasyPlayer$1;

    .prologue
    .line 824
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 827
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 828
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$1;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver$2;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
