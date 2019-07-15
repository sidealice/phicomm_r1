.class public Lcom/umeng/commonsdk/proguard/d;
.super Ljava/lang/Object;
.source "UMSysLocation.java"


# static fields
.field private static final a:Ljava/lang/String; = "UMSysLocation"

.field private static final c:I = 0x2710


# instance fields
.field private b:Landroid/location/LocationManager;

.field private d:Landroid/content/Context;

.field private e:Lcom/umeng/commonsdk/proguard/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    .line 43
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/d;->d:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "destroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    :try_start_2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/d;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 130
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/commonsdk/proguard/f;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    .line 63
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getSystemLocation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_c

    .line 65
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/d;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/d;->e:Lcom/umeng/commonsdk/proguard/f;

    .line 70
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/d;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 71
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/d;->d:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-eqz v2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/d;->e:Lcom/umeng/commonsdk/proguard/f;

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/d;->e:Lcom/umeng/commonsdk/proguard/f;

    invoke-virtual {p1, v3}, Lcom/umeng/commonsdk/proguard/f;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_2
    monitor-exit p0

    return-void

    .line 82
    :cond_3
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    if-eqz v5, :cond_b

    .line 85
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_4

    .line 86
    iget-object v5, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 87
    iget-object v6, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 92
    iget-object v5, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    if-eqz v0, :cond_6

    .line 95
    iget-object v6, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    if-nez v5, :cond_7

    if-eqz v6, :cond_9

    :cond_7
    const-string v5, "UMSysLocation"

    .line 101
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "getLastKnownLocation(LocationManager.PASSIVE_PROVIDER)"

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_8

    .line 104
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    const-string v2, "passive"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/d;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, v3

    .line 111
    :goto_3
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/d;->e:Lcom/umeng/commonsdk/proguard/f;

    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "UMSysLocation"

    .line 115
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_a

    .line 118
    :try_start_3
    invoke-virtual {p1, v3}, Lcom/umeng/commonsdk/proguard/f;->a(Landroid/location/Location;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p1

    .line 121
    :try_start_4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/d;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 124
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/d;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :cond_b
    :goto_5
    monitor-exit p0

    return-void

    .line 66
    :cond_c
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method
