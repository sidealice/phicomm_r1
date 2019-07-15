.class public Lcom/unisound/lib/msgcenter/netmodule/NetworkConnectChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectChangedReceiver.java"


# static fields
.field public static final NET_CONNECTED:Ljava/lang/String; = "com.device.wifi.connected"

.field public static final NET_CONNECTING:Ljava/lang/String; = "com.device.wifi.connecting"

.field public static final NET_DISCONNECTED:Ljava/lang/String; = "com.device.wifi.disconnected"

.field private static final TAG:Ljava/lang/String; = "NetworkConnectChangedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi_state"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "NetworkConnectChangedReceiver"

    const-string v1, "wifi state disable"

    .line 37
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "NetworkConnectChangedReceiver"

    const-string v1, "wifi state disabling"

    .line 40
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "connectivity"

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 47
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 50
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.device.wifi.connected"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "NetworkConnectChangedReceiver"

    const-string p2, "mobile net state connected"

    .line 51
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.device.wifi.disconnected"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "NetworkConnectChangedReceiver"

    const-string p2, "mobile net state disconnected"

    .line 55
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
