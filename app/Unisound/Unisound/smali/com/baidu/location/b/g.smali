.class public Lcom/baidu/location/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/g$1;,
        Lcom/baidu/location/b/g$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static b:Lcom/baidu/location/b/g;


# instance fields
.field private c:Landroid/net/wifi/WifiManager;

.field private d:Lcom/baidu/location/b/g$a;

.field private e:Lcom/baidu/location/b/f;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Landroid/os/Handler;

.field private j:J

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b/g;->b:Lcom/baidu/location/b/g;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/b/g;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/b/g;->d:Lcom/baidu/location/b/g$a;

    iput-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    iput-wide v2, p0, Lcom/baidu/location/b/g;->f:J

    iput-wide v2, p0, Lcom/baidu/location/b/g;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/g;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/g;->i:Landroid/os/Handler;

    iput-wide v2, p0, Lcom/baidu/location/b/g;->j:J

    iput-wide v2, p0, Lcom/baidu/location/b/g;->k:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/location/b/g;
    .locals 2

    const-class v1, Lcom/baidu/location/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/b/g;->b:Lcom/baidu/location/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/g;

    invoke-direct {v0}, Lcom/baidu/location/b/g;-><init>()V

    sput-object v0, Lcom/baidu/location/b/g;->b:Lcom/baidu/location/b/g;

    :cond_0
    sget-object v0, Lcom/baidu/location/b/g;->b:Lcom/baidu/location/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2e

    const-wide/16 v4, 0xff

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-long v2, p1, v4

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x8

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x18

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/b/g;->r()V

    return-void
.end method

.method public static a(Lcom/baidu/location/b/f;Lcom/baidu/location/b/f;)Z
    .locals 1

    const v0, 0x3f333333    # 0.7f

    invoke-static {p0, p1, v0}, Lcom/baidu/location/b/g;->a(Lcom/baidu/location/b/f;Lcom/baidu/location/b/f;F)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/baidu/location/b/f;Lcom/baidu/location/b/f;F)Z
    .locals 17

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-ne v9, v10, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    if-nez v10, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-nez v12, :cond_5

    if-nez v13, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v12, :cond_6

    if-nez v13, :cond_7

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v12, :cond_a

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v6, :cond_8

    move-wide v15, v4

    move v4, v3

    move-wide v2, v15

    :goto_2
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move-wide v15, v2

    move v3, v4

    move-wide v4, v15

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v13, :cond_d

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    sub-int/2addr v3, v2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v14, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    sub-int v2, v14, v2

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v4, v2

    :goto_4
    if-ne v7, v13, :cond_c

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    add-int/lit8 v3, v2, 0x64

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    add-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v4

    move v4, v6

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_3

    :cond_a
    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    int-to-double v6, v12

    div-double/2addr v4, v6

    int-to-float v2, v3

    int-to-float v3, v12

    mul-float v3, v3, p2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    move-wide v2, v4

    move v4, v6

    goto :goto_2

    :cond_d
    move v6, v3

    goto :goto_4
.end method

.method public static i()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/baidu/location/b/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/location/b/f;-><init>(Ljava/util/List;J)V

    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/f;->a(Lcom/baidu/location/b/f;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/g;->j:J

    return-void
.end method

.method public declared-synchronized c()V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/b/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/baidu/location/f;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/baidu/location/b/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/b/g$a;-><init>(Lcom/baidu/location/b/g;Lcom/baidu/location/b/g$1;)V

    iput-object v0, p0, Lcom/baidu/location/b/g;->d:Lcom/baidu/location/b/g$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b/g;->d:Lcom/baidu/location/b/g$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/baidu/location/b/g;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/b/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b/g;->d:Lcom/baidu/location/b/g$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/b/g;->a:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/baidu/location/b/g;->d:Lcom/baidu/location/b/g$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/g;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public e()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/g;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/baidu/location/b/g;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-wide v0, p0, Lcom/baidu/location/b/g;->g:J

    invoke-virtual {p0}, Lcom/baidu/location/b/g;->b()V

    invoke-virtual {p0}, Lcom/baidu/location/b/g;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 10

    const-wide/16 v8, 0x1388

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/b/g;->f:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    iget-wide v4, p0, Lcom/baidu/location/b/g;->f:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/baidu/location/b/g;->j:J

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    sget-wide v4, Lcom/baidu/location/b/g;->a:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/baidu/location/b/g;->j:J

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/baidu/location/b/g;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    iget-wide v6, p0, Lcom/baidu/location/b/g;->j:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/location/b/g;->h()Z

    move-result v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "&wifio=1"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public h()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/b/g;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/b/g;->k:J

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/b/g;->f:J
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public j()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Lcom/baidu/location/b/f;

    iget-object v2, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/baidu/location/b/f;-><init>(Ljava/util/List;J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/location/b/f;->e()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public k()Landroid/net/wifi/WifiInfo;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x64

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/b/g;->m()Ljava/lang/String;

    move-result-object v5

    if-gez v1, :cond_0

    neg-int v1, v1

    :cond_0
    if-eqz v4, :cond_4

    const/16 v6, 0x64

    if-ge v1, v6, :cond_4

    const-string v0, "&wf="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "&"

    const-string v3, "_"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&wf_n=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_3

    const-string v0, "&wf_gw="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Landroid/net/DhcpInfo;->gateway:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/b/g;->a(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public n()Lcom/baidu/location/b/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    invoke-virtual {v0}, Lcom/baidu/location/b/f;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/b/g;->p()Lcom/baidu/location/b/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    goto :goto_0
.end method

.method public o()Lcom/baidu/location/b/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    invoke-virtual {v0}, Lcom/baidu/location/b/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/b/g;->p()Lcom/baidu/location/b/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/g;->e:Lcom/baidu/location/b/f;

    goto :goto_0
.end method

.method public p()Lcom/baidu/location/b/f;
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/baidu/location/b/f;

    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/location/b/g;->f:J

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/b/f;-><init>(Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lcom/baidu/location/b/f;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/b/f;-><init>(Ljava/util/List;J)V

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/g;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
