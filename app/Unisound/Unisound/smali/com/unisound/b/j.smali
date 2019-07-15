.class public Lcom/unisound/b/j;
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

    sput v0, Lcom/unisound/b/j;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT+8"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "getServerTime exception"

    invoke-static {v2}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    goto :goto_0
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
    .locals 2

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

    invoke-static {v0}, Lcom/unisound/b/j;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Activate getIp error"

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget v0, Lcom/unisound/b/j;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/unisound/b/j;->j:I

    invoke-static {p0}, Lcom/unisound/b/j;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput v0, Lcom/unisound/b/j;->j:I

    :goto_0
    sget v3, Lcom/unisound/b/j;->j:I

    if-eq v2, v3, :cond_0

    if-eqz p0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.yunzhisheng.intent.action.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    sget v2, Lcom/unisound/b/j;->j:I

    if-lez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    sput v1, Lcom/unisound/b/j;->j:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

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

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "activate isNetworkConnected error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

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

    const-string v0, "Activate Network judgeCurrentNetTpe error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
