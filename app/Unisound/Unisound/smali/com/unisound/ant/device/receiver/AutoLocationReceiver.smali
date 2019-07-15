.class public Lcom/unisound/ant/device/receiver/AutoLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoLocationReceiver.java"


# static fields
.field private static final NET_CHANGE_FILTER:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field private locationClient:Lcom/unisound/vui/common/location/client/LocationClient;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->initLocationManager(Landroid/content/Context;Lcom/unisound/vui/common/location/listener/LocationListener;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->registerBroadcast(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initLocationManager(Landroid/content/Context;Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    .line 32
    new-instance v0, Lcom/unisound/vui/common/location/client/LocationClientImpl;

    new-instance v1, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;

    invoke-direct {v1, p1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/unisound/vui/common/location/client/LocationClientImpl;-><init>(Lcom/unisound/vui/common/location/strategy/LocationStrategy;)V

    iput-object v0, p0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->locationClient:Lcom/unisound/vui/common/location/client/LocationClient;

    .line 33
    iget-object v0, p0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->locationClient:Lcom/unisound/vui/common/location/client/LocationClient;

    invoke-interface {v0, p2}, Lcom/unisound/vui/common/location/client/LocationClient;->registerLocationLinstener(Lcom/unisound/vui/common/location/listener/LocationListener;)V

    .line 34
    return-void
.end method

.method private registerBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method private stopLocation()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->locationClient:Lcom/unisound/vui/common/location/client/LocationClient;

    invoke-interface {v0}, Lcom/unisound/vui/common/location/client/LocationClient;->stopLocation()V

    .line 48
    return-void
.end method

.method private triggeredLocation(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->startLocation()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->stopLocation()V

    goto :goto_0
.end method


# virtual methods
.method public onDestory()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->locationClient:Lcom/unisound/vui/common/location/client/LocationClient;

    invoke-interface {v0}, Lcom/unisound/vui/common/location/client/LocationClient;->onDestory()V

    .line 66
    iget-object v0, p0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->triggeredLocation(Landroid/content/Context;)V

    .line 54
    :cond_0
    return-void
.end method

.method public startLocation()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->locationClient:Lcom/unisound/vui/common/location/client/LocationClient;

    invoke-interface {v0}, Lcom/unisound/vui/common/location/client/LocationClient;->startLocation()V

    .line 44
    return-void
.end method
