.class Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;
.super Landroid/content/BroadcastReceiver;
.source "ReenableAllApsWhenNetworkStateChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->a:Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "networkInfo"

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    .line 66
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    .line 67
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_0

    .line 70
    iget-object p2, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->a:Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    invoke-static {p2}, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->a(Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->a:Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->a(Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;Z)Z

    .line 72
    invoke-static {p1}, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged;->a(Landroid/content/Context;)V

    .line 73
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->a:Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->stopSelf()V

    :cond_0
    return-void
.end method
