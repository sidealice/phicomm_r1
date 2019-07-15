.class public Lcom/unisound/common/ae;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "Network"

.field public static final b:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final c:Ljava/lang/String; = "cn.yunzhisheng.intent.action.CONNECTIVITY_CHANGE"

.field public static final d:Ljava/lang/String; = "TYPE_NULL_POINT"

.field public static final e:Ljava/lang/String; = "TYPE_UNCONNECT"

.field public static final f:Ljava/lang/String; = "TYPE_WIFI"

.field public static final g:Ljava/lang/String; = "TYPE_GPRS"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/unisound/common/ae;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unisound/common/ae;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/unisound/common/ae;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Network getIp error"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget v0, Lcom/unisound/common/ae;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string v0, "0.0.0.0"

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Network:isNetworkConnected error"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/unisound/common/ae;->j:I

    invoke-static {p0}, Lcom/unisound/common/ae;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput v0, Lcom/unisound/common/ae;->j:I

    :goto_0
    sget v3, Lcom/unisound/common/ae;->j:I

    if-eq v2, v3, :cond_0

    if-eqz p0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.yunzhisheng.intent.action.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    sget v2, Lcom/unisound/common/ae;->j:I

    if-lez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    sput v1, Lcom/unisound/common/ae;->j:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Network:isNetworkConnected error"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v1, "TYPE_NULL_POINT"

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    move-object v1, v0

    :cond_0
    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "TYPE_WIFI"

    goto :goto_0

    :pswitch_1
    const-string v0, "TYPE_GPRS"

    goto :goto_0

    :cond_1
    const-string v1, "TYPE_UNCONNECT"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Network:judgeCurrentNetTpe error"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
