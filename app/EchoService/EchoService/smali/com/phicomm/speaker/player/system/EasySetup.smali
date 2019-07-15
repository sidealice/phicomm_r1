.class public Lcom/phicomm/speaker/player/system/EasySetup;
.super Ljava/lang/Object;
.source "EasySetup.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v1, "EasySetup"

    iput-object v1, p0, Lcom/phicomm/speaker/player/system/EasySetup;->TAG:Ljava/lang/String;

    .line 86
    new-instance v1, Lcom/phicomm/speaker/player/system/EasySetup$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/system/EasySetup$1;-><init>(Lcom/phicomm/speaker/player/system/EasySetup;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "bluetoothIntentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/system/EasySetup;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/system/EasySetup;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 82
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 83
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public turnOffBluetooth()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 55
    const-string v2, "EasySetup"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "turn off bluetooth"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 57
    const-string v2, "EasySetup"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "system do not support bluetooth"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 62
    .local v0, "enable":Z
    const/4 v1, 0x1

    .line 63
    .local v1, "success":Z
    if-eqz v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    goto :goto_0
.end method

.method public turnOnBluetooth()Z
    .locals 7

    .prologue
    const/16 v6, 0x17

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 33
    const-string v2, "EasySetup"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "turn on bluetooth"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 35
    const-string v2, "EasySetup"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "system do not support bluetooth"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 42
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 45
    :cond_2
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 46
    .local v0, "enable":Z
    const/4 v1, 0x0

    .line 47
    .local v1, "success":Z
    if-nez v0, :cond_0

    .line 48
    iget-object v2, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    goto :goto_0
.end method

.method public turnOnWifi()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/phicomm/speaker/player/system/EasySetup;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 72
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 75
    :cond_0
    return-void
.end method
