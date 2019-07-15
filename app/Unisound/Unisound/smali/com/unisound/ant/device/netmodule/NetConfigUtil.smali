.class public Lcom/unisound/ant/device/netmodule/NetConfigUtil;
.super Ljava/lang/Object;
.source "NetConfigUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetConfigUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeConnectWifi(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/listener/WifiChangeListener;)V
    .locals 1
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unisound/ant/device/listener/WifiChangeListener;

    .prologue
    .line 57
    new-instance v0, Lcom/unisound/ant/device/netmodule/NetConfigUtil$1;

    invoke-direct {v0}, Lcom/unisound/ant/device/netmodule/NetConfigUtil$1;-><init>()V

    .line 60
    invoke-virtual {v0}, Lcom/unisound/ant/device/netmodule/NetConfigUtil$1;->start()V

    .line 61
    return-void
.end method

.method public static closeWifi(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 34
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 35
    return-void
.end method

.method public static closeWifiAndRemoveWifiCOnfig(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 42
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 45
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_2

    .line 54
    :cond_1
    return-void

    .line 49
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 50
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 52
    .local v2, "networkId":I
    invoke-static {v3, v2}, Lcom/unisound/ant/device/netmodule/NetConfigUtil;->forgetWifi(Landroid/net/wifi/WifiManager;I)V

    goto :goto_0
.end method

.method private static forgetWifi(Landroid/net/wifi/WifiManager;I)V
    .locals 10
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "networkId"    # I

    .prologue
    .line 64
    const/4 v4, 0x0

    .line 66
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 67
    .local v1, "classl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 68
    .local v0, "ActionListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 69
    .local v3, "i":I
    :goto_0
    if-eqz v1, :cond_0

    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 70
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActionListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    aget-object v0, v1, v3

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "forget"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 77
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v5, "NetConfigUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forgetWifi networkId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "ActionListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "classl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 74
    .restart local v0    # "ActionListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "classl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "ActionListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "classl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string v5, "NetConfigUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forgetWifi e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static removeAllNetConfig(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 20
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 21
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_1

    .line 30
    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 25
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 26
    .local v2, "networkId":I
    const-string v5, "NetConfigUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--->>removeAllNetConfig networkId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {v3, v2}, Lcom/unisound/ant/device/netmodule/NetConfigUtil;->forgetWifi(Landroid/net/wifi/WifiManager;I)V

    goto :goto_0
.end method
