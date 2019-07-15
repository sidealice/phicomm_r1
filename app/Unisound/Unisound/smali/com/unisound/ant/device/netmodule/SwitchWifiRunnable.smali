.class public Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;
.super Ljava/lang/Object;
.source "SwitchWifiRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final NET_CONNECT_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SwitchWifiRunnable"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/unisound/ant/device/listener/WifiChangeListener;

.field private password:Ljava/lang/String;

.field private receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

.field private ssid:Ljava/lang/String;

.field private timeoutHandler:Landroid/os/Handler;

.field private wifiConnect:Lcom/unisound/ant/device/netmodule/WifiConnect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/ant/device/listener/WifiChangeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiChangeListener"    # Lcom/unisound/ant/device/listener/WifiChangeListener;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->listener:Lcom/unisound/ant/device/listener/WifiChangeListener;

    .line 31
    new-instance v0, Lcom/unisound/ant/device/netmodule/WifiConnect;

    invoke-direct {v0, p1}, Lcom/unisound/ant/device/netmodule/WifiConnect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->wifiConnect:Lcom/unisound/ant/device/netmodule/WifiConnect;

    .line 32
    new-instance v0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-direct {v0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    .line 33
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->setAliveConnectListener(Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;)V

    .line 34
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->registerNetStateReceiver(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->timeoutHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method private dealWitchConnectWifiSuccess()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->listener:Lcom/unisound/ant/device/listener/WifiChangeListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->listener:Lcom/unisound/ant/device/listener/WifiChangeListener;

    invoke-interface {v0}, Lcom/unisound/ant/device/listener/WifiChangeListener;->onChangeWifiSuccess()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->unregisterNetStateReceiver(Landroid/content/Context;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->timeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private dealWithConnectWifiFail()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->receiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->unregisterNetStateReceiver(Landroid/content/Context;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->timeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 61
    :pswitch_0
    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->dealWithConnectWifiFail()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onNetAliveConnected()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "SwitchWifiRunnable"

    const-string v1, "onNetAliveConnected"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->dealWitchConnectWifiSuccess()V

    .line 90
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 44
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->ssid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "SwitchWifiRunnable"

    const-string v2, "ssid is not set and plese check setWifiInfo"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->wifiConnect:Lcom/unisound/ant/device/netmodule/WifiConnect;

    iget-object v2, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->password:Ljava/lang/String;

    sget-object v4, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_WPA:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/unisound/ant/device/netmodule/WifiConnect;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;)I

    move-result v0

    .line 49
    .local v0, "code":I
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->listener:Lcom/unisound/ant/device/listener/WifiChangeListener;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->listener:Lcom/unisound/ant/device/listener/WifiChangeListener;

    invoke-interface {v1, v0}, Lcom/unisound/ant/device/listener/WifiChangeListener;->onChangeWifiFail(I)V

    .line 51
    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->dealWithConnectWifiFail()V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->timeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->timeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setWifiInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->ssid:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/unisound/ant/device/netmodule/SwitchWifiRunnable;->password:Ljava/lang/String;

    .line 41
    return-void
.end method
