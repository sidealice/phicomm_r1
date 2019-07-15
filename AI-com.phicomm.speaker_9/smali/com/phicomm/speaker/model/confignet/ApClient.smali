.class public abstract Lcom/phicomm/speaker/model/confignet/ApClient;
.super Landroid/content/BroadcastReceiver;
.source "ApClient.java"


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/util/TimerTask;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/model/confignet/ApClient;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/model/confignet/ApClient;Ljava/util/TimerTask;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/util/TimerTask;)V

    return-void
.end method

.method private a(Ljava/util/TimerTask;)V
    .locals 2

    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->f:Ljava/util/TimerTask;

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->f:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->f:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "cancel timer task."

    const/4 v1, 0x0

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_2
    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->f:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/model/confignet/ApClient;)I
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->f()I

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private f()I
    .locals 5

    .line 153
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "wifi is connected to %s."

    .line 155
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 160
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    if-lez v0, :cond_2

    const-string v0, "try enabling network: %s."

    .line 161
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    iget v3, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    invoke-virtual {v0, v3, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "enable network %s fail."

    .line 163
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x3

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 75
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/model/confignet/ApClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/phicomm/speaker/model/confignet/ApClient$2;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/phicomm/speaker/model/confignet/ApClient$2;-><init>(Lcom/phicomm/speaker/model/confignet/ApClient;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "post: %s (%s)"

    .line 233
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/b/b;->c()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v4

    invoke-static {p1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "UTF-8"

    .line 234
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/model/common/b/b;->a([B)V

    .line 235
    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/b/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTF-8"

    .line 236
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/model/common/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "post response: %s"

    .line 237
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p1, "http fail on status: %s"

    .line 240
    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/b/b;->c()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/phicomm/speaker/model/common/b/a;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/phicomm/speaker/model/common/b/a;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    const-string p1, "get: %s"

    .line 214
    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/b/a;->c()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/b/a;->a()V

    .line 216
    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTF-8"

    .line 217
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/model/common/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "get response: %s"

    .line 218
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p1, "http fail on status: %s"

    .line 221
    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/b/a;->c()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "init."

    const/4 v1, 0x0

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    const-string v0, "connectivity"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->b:Landroid/net/ConnectivityManager;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->d:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/net/wifi/SupplicantState;)V
.end method

.method public a(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->b(Z)V

    :goto_0
    return-void
.end method

.method public a(Landroid/net/wifi/ScanResult;Ljava/lang/String;)Z
    .locals 2

    .line 104
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {p1}, Lcom/phicomm/speaker/f/a/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    const-string v1, "connecting to %s..."

    const/4 v2, 0x1

    .line 136
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 139
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/phicomm/speaker/model/confignet/ApClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "existing network: %s."

    .line 140
    new-array v1, v2, [Ljava/lang/Object;

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget p1, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->f()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->c()V

    :cond_2
    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;)Z
    .locals 7

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    const-string v1, "connecting to %s..."

    const/4 v2, 0x1

    .line 109
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 112
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/phicomm/speaker/model/confignet/ApClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "existing network: %s."

    .line 113
    new-array v5, v2, [Ljava/lang/Object;

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v1, v5}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {v3, p3, p4}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;)V

    .line 115
    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    const-string v1, "update network: %s %s."

    .line 116
    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    if-gtz v1, :cond_1

    .line 118
    iget v1, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    .line 123
    :cond_1
    iget v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    if-gtz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-static {p1, p2, p3, p4, v2}, Lcom/phicomm/speaker/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    const-string p1, "add network: %s"

    .line 125
    new-array p2, v2, [Ljava/lang/Object;

    iget p3, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->e:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->f()I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->c()V

    :cond_3
    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method protected abstract a(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation
.end method

.method public b()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "start scanning..."

    const/4 v1, 0x0

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_0
    return-void
.end method

.method protected abstract b(Z)V
.end method

.method protected abstract b(Ljava/lang/String;)Z
.end method

.method public c()V
    .locals 7

    const-string v0, "listening connection..."

    const/4 v1, 0x0

    .line 172
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/util/TimerTask;)V

    .line 174
    new-instance v0, Lcom/phicomm/speaker/model/confignet/ApClient$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/model/confignet/ApClient$1;-><init>(Lcom/phicomm/speaker/model/confignet/ApClient;)V

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->f:Ljava/util/TimerTask;

    .line 182
    const-class v0, Ljava/util/Timer;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Timer;

    iget-object v2, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->f:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->d:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iput-object v1, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->d:Landroid/content/Context;

    .line 203
    :cond_0
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/util/TimerTask;)V

    return-void
.end method

.method public e()V
    .locals 5

    const-string v0, "http://%s:%s"

    const/4 v1, 0x2

    .line 208
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    iget v2, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x231d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->c:Ljava/lang/String;

    const-string v0, "init http: %s"

    .line 209
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6fcd6bbb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0xdeb41c0

    if-eq v0, v1, :cond_1

    const v1, 0x6ff575fd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 259
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->g:J

    const-string p1, "newState"

    .line 260
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 261
    sget-object p2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, p2, :cond_4

    .line 262
    iget-wide v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->g:J

    const-wide/16 v4, 0x1388

    sub-long v6, v0, v4

    iput-wide v6, p0, Lcom/phicomm/speaker/model/confignet/ApClient;->g:J

    :cond_4
    const-string p2, "supplicant state change: %s."

    .line 264
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Landroid/net/wifi/SupplicantState;)V

    goto :goto_3

    .line 255
    :pswitch_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->b()V

    goto :goto_3

    :pswitch_2
    const-string p1, "wifi_state"

    const/4 v0, 0x4

    .line 249
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    const-string p2, "wifi state change: enabled=%s."

    .line 250
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->b(Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
