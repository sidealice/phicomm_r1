.class public Lcom/unisound/vui/handler/session/setting/DefaultSettingOperator;
.super Ljava/lang/Object;
.source "DefaultSettingOperator.java"


# instance fields
.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingOperator;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    return-void
.end method


# virtual methods
.method public setBluetoothEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 23
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 24
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public setWifiEnable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 19
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingOperator;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 20
    return-void
.end method
