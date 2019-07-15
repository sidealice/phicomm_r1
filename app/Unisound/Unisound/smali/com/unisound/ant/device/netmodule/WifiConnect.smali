.class public Lcom/unisound/ant/device/netmodule/WifiConnect;
.super Ljava/lang/Object;
.source "WifiConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;
    }
.end annotation


# static fields
.field public static final SWITCH_WIFI_CREATE_CONFIG_FAIL:I = 0x1

.field public static final SWITCH_WIFI_OPEN_FAIL:I = 0x0

.field public static final SWITCH_WIFI_SAVE_CONFIG_SUCCESS:I = 0x3

.field public static final SWITCH_WIFI_SSID_NOT_EXIST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiConnect"


# instance fields
.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 31
    return-void
.end method

.method private createWifiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 114
    .local v0, "wc":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 115
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 116
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 117
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 118
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 120
    const/16 v1, 0x28

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 121
    sget-object v1, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    if-ne p3, v1, :cond_0

    .line 122
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    .line 123
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 124
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 161
    .end local v0    # "wc":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 125
    .restart local v0    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    sget-object v1, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_WEP:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    if-ne p3, v1, :cond_1

    .line 126
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 127
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 128
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 129
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 130
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 131
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 132
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 133
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 134
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 135
    :cond_1
    sget-object v1, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_WPA:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    if-ne p3, v1, :cond_2

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 137
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 142
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 144
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 145
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 148
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 151
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 152
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 155
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 156
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 159
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v3, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_0

    move-object v0, v2

    .line 109
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 105
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move-object v0, v2

    .line 109
    goto :goto_0
.end method

.method private openWifi()Z
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    .line 36
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    .line 39
    :cond_0
    return v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;)I
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/WifiConnect;->openWifi()Z

    move-result v6

    if-nez v6, :cond_0

    .line 45
    const-string v6, "WifiConnect"

    const-string v7, "open wifi failed"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v6, 0x0

    .line 95
    :goto_0
    return v6

    .line 48
    :cond_0
    const-string v6, "WifiConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect SSID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Password="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "count":I
    :cond_1
    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 55
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    const-string v6, "WifiConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiState() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/16 v6, 0x1e

    if-le v1, v6, :cond_1

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v6, 0x0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    goto :goto_0

    .line 67
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/ant/device/netmodule/WifiConnect;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 68
    .local v5, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_3

    .line 69
    const-string v6, "WifiConnect"

    const-string v7, "wifiConfig is null"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v6, 0x1

    goto :goto_0

    .line 73
    :cond_3
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/netmodule/WifiConnect;->isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 74
    .local v4, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_4

    .line 75
    const-string v6, "WifiConnect"

    const-string v7, "remove the save net"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v7, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 78
    :cond_4
    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 79
    .local v3, "netID":I
    const-string v6, "WifiConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNetwork netID == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/unisound/ant/device/netmodule/WifiConnect;->getScanResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 81
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 83
    :cond_5
    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_6

    .line 84
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 86
    :cond_6
    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 87
    .local v0, "c0":Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, v3, :cond_7

    .line 88
    iget-object v7, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 90
    :cond_7
    iget-object v7, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 93
    .end local v0    # "c0":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const-string v6, "WifiConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableNetwork netID :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 95
    const/4 v6, 0x3

    goto/16 :goto_0
.end method

.method public getScanResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v5, 0x0

    .line 171
    .local v5, "ss":Ljava/lang/String;
    const/4 v0, 0x1

    .line 173
    .local v0, "count":I
    iget-object v7, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 176
    :goto_0
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    iget-object v7, p0, Lcom/unisound/ant/device/netmodule/WifiConnect;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 181
    .local v3, "listResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 191
    if-eqz v3, :cond_3

    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 193
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 194
    .local v4, "mScanResult":Landroid/net/wifi/ScanResult;
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 192
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    .end local v2    # "i":I
    .end local v3    # "listResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "mScanResult":Landroid/net/wifi/ScanResult;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    .restart local v3    # "listResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    const-string v7, "WifiConnect"

    const-string v8, "listResult size is zero"

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    move-object v6, v5

    .line 199
    .end local v5    # "ss":Ljava/lang/String;
    .local v6, "ss":Ljava/lang/String;
    :goto_3
    return-object v6

    .line 188
    .end local v6    # "ss":Ljava/lang/String;
    .restart local v5    # "ss":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 199
    .end local v5    # "ss":Ljava/lang/String;
    .restart local v6    # "ss":Ljava/lang/String;
    goto :goto_3
.end method
