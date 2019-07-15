.class public Lcom/alibaba/mtl/log/e/l;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/e/l$a;,
        Lcom/alibaba/mtl/log/e/l$b;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/mtl/log/e/l$a;

.field private static a:Lcom/alibaba/mtl/log/e/l$b;

.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Unknown"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/mtl/log/e/l;->a:[Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/alibaba/mtl/log/e/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/log/e/l$b;-><init>(Lcom/alibaba/mtl/log/e/l$1;)V

    sput-object v0, Lcom/alibaba/mtl/log/e/l;->a:Lcom/alibaba/mtl/log/e/l$b;

    .line 139
    new-instance v0, Lcom/alibaba/mtl/log/e/l$a;

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/log/e/l$a;-><init>(Lcom/alibaba/mtl/log/e/l$1;)V

    sput-object v0, Lcom/alibaba/mtl/log/e/l;->a:Lcom/alibaba/mtl/log/e/l$a;

    return-void
.end method

.method static synthetic a()Lcom/alibaba/mtl/log/e/l$a;
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/mtl/log/e/l;->a:Lcom/alibaba/mtl/log/e/l$a;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "4G"

    return-object p0

    :pswitch_1
    const-string p0, "3G"

    return-object p0

    :pswitch_2
    const-string p0, "2G"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/alibaba/mtl/log/e/l;->a:Lcom/alibaba/mtl/log/e/l$b;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/mtl/log/e/l;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/e/l;->a:Lcom/alibaba/mtl/log/e/l$b;

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/log/e/l;->a:Lcom/alibaba/mtl/log/e/l$b;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 100
    sget-object p0, Lcom/alibaba/mtl/log/e/l;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public static getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const-string v0, "wifi"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 106
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "00:00:00:00:00:00"

    :cond_0
    return-object p0

    :cond_1
    const-string p0, "00:00:00:00:00:00"

    return-object p0

    :cond_2
    const-string p0, "00:00:00:00:00:00"

    return-object p0
.end method

.method public static isConnected()Z
    .locals 2

    .line 55
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "connectivity"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static u()Ljava/lang/String;
    .locals 4

    .line 27
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    return-object v0

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Unknown"

    return-object v0

    :cond_1
    const-string v1, "connectivity"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Unknown"

    return-object v0

    .line 41
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v0, "wifi"

    return-object v0

    .line 44
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 45
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/e/l;->a(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_4
    const-string v0, "Unknown"

    return-object v0
.end method
