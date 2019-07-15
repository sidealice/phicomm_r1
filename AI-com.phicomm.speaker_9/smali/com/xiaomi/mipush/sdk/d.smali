.class public Lcom/xiaomi/mipush/sdk/d;
.super Lcom/xiaomi/channel/commonutils/c/f$a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/f$a;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/xiaomi/mipush/sdk/d;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/d;->b:I

    const/16 v0, 0xe10

    iput v0, p0, Lcom/xiaomi/mipush/sdk/d;->c:I

    const-string v0, "mipush_extra"

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->d:Ljava/lang/String;

    const-string v0, "GeoFenceNetInfoUpdateJob"

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->e:Ljava/lang/String;

    const-string v0, "last_upload_lbs_data_timestamp"

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    new-instance p1, Lcom/xiaomi/mipush/sdk/j;

    invoke-direct {p1, p0}, Lcom/xiaomi/mipush/sdk/j;-><init>(Lcom/xiaomi/mipush/sdk/d;)V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/d;->h:Ljava/util/Comparator;

    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 5

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    return-object p1

    :cond_2
    move-object p1, p2

    return-object p1
.end method

.method private a(J)Z
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_upload_lbs_data_timestamp"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sub-long v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    div-long/2addr v0, v5

    cmp-long v3, v0, p1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private c()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/e;->P:Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/e;->a()I

    move-result v2

    const/16 v3, 0xe10

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/push/service/j;->a(II)I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/d;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/d;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private d()Lcom/xiaomi/xmpush/thrift/m;
    .locals 2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/m;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/m;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/m;->a(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/m;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/m;->b(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/m;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->g()Lcom/xiaomi/xmpush/thrift/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/m;->a(Lcom/xiaomi/xmpush/thrift/i;)Lcom/xiaomi/xmpush/thrift/m;

    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/xmpush/thrift/v;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/c/b;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/d;->h:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    if-eqz v4, :cond_1

    new-instance v5, Lcom/xiaomi/xmpush/thrift/v;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/v;-><init>()V

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    goto :goto_1

    :cond_0
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/v;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/v;

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/v;->a(I)Lcom/xiaomi/xmpush/thrift/v;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/xiaomi/xmpush/thrift/v;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/v;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method private f()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/xmpush/thrift/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    new-instance v5, Lcom/xiaomi/xmpush/thrift/b;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/b;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/b;->a(I)Lcom/xiaomi/xmpush/thrift/b;

    const/16 v6, -0x71

    const/4 v7, 0x2

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v3

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/b;->b(I)Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    return-object v3

    :catch_0
    return-object v0
.end method

.method private g()Lcom/xiaomi/xmpush/thrift/i;
    .locals 7

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->h()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/xiaomi/xmpush/thrift/l;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/l;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/l;->b(D)Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/l;->a(D)Lcom/xiaomi/xmpush/thrift/l;

    new-instance v2, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/i;->a(D)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/i;->a(Lcom/xiaomi/xmpush/thrift/l;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    sub-long v5, v3, v0

    invoke-virtual {v2, v5, v6}, Lcom/xiaomi/xmpush/thrift/i;->a(J)Lcom/xiaomi/xmpush/thrift/i;

    return-object v2

    :cond_1
    return-object v1
.end method

.method private h()Landroid/location/Location;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v3, v1

    :goto_1
    :try_start_2
    const-string v4, "passive"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-object v0, v1

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/d;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/d;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upload_lbs_data_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method protected b()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GeoFenceNetInfoUpdateJobNetwork.is not Connected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GeoFenceNetInfoUpdateJobverifyUploadData"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->d()Lcom/xiaomi/xmpush/thrift/m;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ae;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ae;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->C:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/ae;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ae;->a([B)Lcom/xiaomi/xmpush/thrift/ae;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/r;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->i()V

    const-string v0, "GeoFenceNetInfoUpdateJob: update_loc_data"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-void
.end method
