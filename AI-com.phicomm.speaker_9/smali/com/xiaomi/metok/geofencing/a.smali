.class public Lcom/xiaomi/metok/geofencing/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaomi/metok/geofencing/c;

.field private c:Z

.field private final d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/metok/geofencing/a;->c:Z

    new-instance v1, Lcom/xiaomi/metok/geofencing/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/metok/geofencing/b;-><init>(Lcom/xiaomi/metok/geofencing/a;)V

    iput-object v1, p0, Lcom/xiaomi/metok/geofencing/a;->d:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/xiaomi/metok/geofencing/a;->a:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/xiaomi/metok/geofencing/a;->c:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/metok/geofencing/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/metok/geofencing/a;Lcom/xiaomi/metok/geofencing/c;)Lcom/xiaomi/metok/geofencing/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/metok/geofencing/a;->b:Lcom/xiaomi/metok/geofencing/c;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/metok/geofencing/a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/metok/geofencing/a;->b:Lcom/xiaomi/metok/geofencing/c;

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.metok.GeoFencingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.metok"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/metok/geofencing/a;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "GeoFencingServiceWrapper"

    const-string v0, "Can\'t bind GeoFencingService"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/metok/geofencing/a;->c:Z

    return-void

    :cond_2
    const-string p1, "GeoFencingServiceWrapper"

    const-string v0, "GeoFencingService started"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/xiaomi/metok/geofencing/a;->c:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "GeoFencingServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p1, "GeoFencingServiceWrapper"

    const-string v0, "GeoFencingService already started"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v1, p0

    invoke-virtual {v1, p1}, Lcom/xiaomi/metok/geofencing/a;->a(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/xiaomi/metok/geofencing/a;->b:Lcom/xiaomi/metok/geofencing/c;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v1, Lcom/xiaomi/metok/geofencing/a;->b:Lcom/xiaomi/metok/geofencing/c;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v3 .. v13}, Lcom/xiaomi/metok/geofencing/c;->a(DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "GeoFencingServiceWrapper"

    const-string v3, "calling registerFenceListener success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "GeoFencingService has died"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/metok/geofencing/a;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/xiaomi/metok/geofencing/a;->b:Lcom/xiaomi/metok/geofencing/c;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/metok/geofencing/a;->b:Lcom/xiaomi/metok/geofencing/c;

    invoke-interface {p1, p2, p3}, Lcom/xiaomi/metok/geofencing/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "GeoFencingServiceWrapper"

    const-string p2, "calling unregisterFenceListener success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "GeoFencingService has died"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method
