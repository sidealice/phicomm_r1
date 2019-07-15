.class public Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectionReceiver.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "NetworkConnectionReceiver"

    const-string v1, "netWorkConnecting"

    .line 88
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "NetworkConnectionReceiver"

    const-string v1, "netWorkConnected"

    .line 92
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "NetworkConnectionReceiver"

    const-string v1, "netWorkDisConnected"

    .line 97
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_7

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "connectivity"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "wifi_state"

    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "NetworkConnectionReceiver"

    const-string p2, "wifi state disable"

    .line 40
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "NetworkConnectionReceiver"

    const-string p2, "wifi state disabling"

    .line 37
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v3, "android.net.wifi.STATE_CHANGE"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "networkInfo"

    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 51
    check-cast p1, Landroid/net/NetworkInfo;

    .line 52
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 53
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_2

    const-string p1, "NetworkConnectionReceiver"

    const-string p2, "wifi net state contented"

    .line 54
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->b()V

    .line 56
    sput-boolean v2, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->a:Z

    goto :goto_0

    .line 57
    :cond_2
    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_3

    if-eqz v1, :cond_6

    .line 58
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "NetworkConnectionReceiver"

    const-string p2, "wifi net state disconnected"

    .line 59
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->c()V

    .line 61
    sput-boolean v0, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->a:Z

    goto :goto_0

    .line 63
    :cond_3
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_6

    const-string p1, "NetworkConnectionReceiver"

    const-string p2, "wifi net state connecting"

    .line 64
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->a()V

    goto :goto_0

    :cond_4
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    .line 72
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_5

    .line 73
    sget-boolean p1, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->a:Z

    if-eqz p1, :cond_6

    const-string p1, "NetworkConnectionReceiver"

    const-string p2, "mobile net state disconnected"

    .line 74
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->c()V

    .line 76
    sput-boolean v0, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->a:Z

    goto :goto_0

    .line 78
    :cond_5
    sget-boolean p1, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->a:Z

    if-nez p1, :cond_6

    const-string p1, "NetworkConnectionReceiver"

    const-string p2, "mobile net state contented"

    .line 79
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->b()V

    .line 81
    sput-boolean v2, Lcom/phicomm/speaker/receiver/NetworkConnectionReceiver;->a:Z

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
