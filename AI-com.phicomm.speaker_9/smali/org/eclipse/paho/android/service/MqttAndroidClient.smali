.class public Lorg/eclipse/paho/android/service/MqttAndroidClient;
.super Landroid/content/BroadcastReceiver;
.source "MqttAndroidClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/MqttAndroidClient$a;,
        Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Lorg/eclipse/paho/android/service/MqttAndroidClient$a;

.field private c:Lorg/eclipse/paho/android/service/MqttService;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/eclipse/paho/client/mqttv3/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Lorg/eclipse/paho/client/mqttv3/m;

.field private k:Lorg/eclipse/paho/client/mqttv3/n;

.field private l:Lorg/eclipse/paho/client/mqttv3/g;

.field private m:Lorg/eclipse/paho/client/mqttv3/k;

.field private n:Lorg/eclipse/paho/android/service/h;

.field private final o:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

.field private p:Z

.field private volatile q:Z

.field private volatile r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;)V
    .locals 6

    .line 212
    sget-object v5, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;)V
    .locals 2

    .line 235
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 125
    new-instance v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttAndroidClient$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->b:Lorg/eclipse/paho/android/service/MqttAndroidClient$a;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->g:I

    .line 144
    iput-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->j:Lorg/eclipse/paho/client/mqttv3/m;

    .line 154
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->p:Z

    .line 156
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->q:Z

    .line 157
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->r:Z

    .line 236
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->h:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->i:Ljava/lang/String;

    .line 239
    iput-object p4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->j:Lorg/eclipse/paho/client/mqttv3/m;

    .line 240
    iput-object p5, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->o:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    return-void
.end method

.method private declared-synchronized a(Lorg/eclipse/paho/client/mqttv3/g;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1619
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->f:Landroid/util/SparseArray;

    iget v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->g:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1620
    iget p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->g:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1618
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    return-object p1
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MqttService.callbackToActivity.v0"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 451
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->q:Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .line 1436
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->l:Lorg/eclipse/paho/client/mqttv3/g;

    .line 1437
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->k(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;

    .line 1439
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e()V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttAndroidClient;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private a(Lorg/eclipse/paho/client/mqttv3/g;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "MqttService.callbackStatus"

    .line 1495
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/android/service/i;

    .line 1496
    sget-object v1, Lorg/eclipse/paho/android/service/i;->a:Lorg/eclipse/paho/android/service/i;

    if-ne v0, v1, :cond_0

    .line 1497
    check-cast p1, Lorg/eclipse/paho/android/service/g;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/g;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "MqttService.exception"

    .line 1500
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    .line 1501
    check-cast p1, Lorg/eclipse/paho/android/service/g;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1504
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "simpleAction : token is null"

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttAndroidClient;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->r:Z

    return p1
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 1450
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    .line 1451
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->k(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1453
    check-cast p1, Lorg/eclipse/paho/android/service/g;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/g;->c()V

    .line 1455
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    if-eqz p1, :cond_1

    .line 1456
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    invoke-interface {p1, v0}, Lorg/eclipse/paho/client/mqttv3/k;->connectionLost(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/MqttAndroidClient;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->q:Z

    return p0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 1

    .line 1466
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    if-eqz v0, :cond_0

    const-string v0, "MqttService.exception"

    .line 1468
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    .line 1469
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/k;->connectionLost(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2

    .line 1476
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    instance-of v0, v0, Lorg/eclipse/paho/client/mqttv3/l;

    if-eqz v0, :cond_0

    const-string v0, "MqttService.reconnect"

    const/4 v1, 0x0

    .line 1477
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "MqttService.serverURI"

    .line 1478
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1479
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/l;

    invoke-interface {v1, v0, p1}, Lorg/eclipse/paho/client/mqttv3/l;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 482
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->h:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->i:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->j:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    .line 486
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-boolean v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->p:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Z)V

    .line 487
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->l:Lorg/eclipse/paho/client/mqttv3/g;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;)Ljava/lang/String;

    move-result-object v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->k:Lorg/eclipse/paho/client/mqttv3/n;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 495
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->l:Lorg/eclipse/paho/client/mqttv3/g;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/g;->e()Lorg/eclipse/paho/client/mqttv3/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 497
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->l:Lorg/eclipse/paho/client/mqttv3/g;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 1

    .line 1514
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->l(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object v0

    .line 1516
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;Landroid/os/Bundle;)V

    return-void
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 1

    .line 1525
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->k(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object v0

    .line 1526
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;Landroid/os/Bundle;)V

    return-void
.end method

.method private g(Landroid/os/Bundle;)V
    .locals 1

    .line 1535
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->k(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object v0

    .line 1536
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;Landroid/os/Bundle;)V

    return-void
.end method

.method private h(Landroid/os/Bundle;)V
    .locals 2

    .line 1545
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->k(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    if-eqz v1, :cond_0

    const-string v1, "MqttService.callbackStatus"

    .line 1549
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/i;

    .line 1550
    sget-object v1, Lorg/eclipse/paho/android/service/i;->a:Lorg/eclipse/paho/android/service/i;

    if-ne p1, v1, :cond_0

    instance-of p1, v0, Lorg/eclipse/paho/client/mqttv3/e;

    if-eqz p1, :cond_0

    .line 1551
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/e;

    invoke-interface {p1, v0}, Lorg/eclipse/paho/client/mqttv3/k;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/e;)V

    :cond_0
    return-void
.end method

.method private i(Landroid/os/Bundle;)V
    .locals 4

    .line 1563
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    if-eqz v0, :cond_1

    const-string v0, "MqttService.messageId"

    .line 1565
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.destinationName"

    .line 1567
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.PARCEL"

    .line 1570
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    .line 1572
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->o:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    sget-object v3, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    if-ne v2, v3, :cond_0

    .line 1573
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    invoke-interface {v2, v1, p1}, Lorg/eclipse/paho/client/mqttv3/k;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V

    .line 1574
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/i;

    goto :goto_0

    .line 1577
    :cond_0
    iput-object v0, p1, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;->a:Ljava/lang/String;

    .line 1578
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/k;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private j(Landroid/os/Bundle;)V
    .locals 4

    .line 1596
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->n:Lorg/eclipse/paho/android/service/h;

    if-eqz v0, :cond_2

    const-string v0, "MqttService.traceSeverity"

    .line 1597
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 1598
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.traceTag"

    .line 1599
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    .line 1600
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1601
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->n:Lorg/eclipse/paho/android/service/h;

    invoke-interface {p1, v2, v1}, Lorg/eclipse/paho/android/service/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "error"

    .line 1602
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->n:Lorg/eclipse/paho/android/service/h;

    invoke-interface {p1, v2, v1}, Lorg/eclipse/paho/android/service/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MqttService.exception"

    .line 1606
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    .line 1607
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->n:Lorg/eclipse/paho/android/service/h;

    invoke-interface {v0, v2, v1, p1}, Lorg/eclipse/paho/android/service/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized k(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    .line 1631
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1633
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1634
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/g;

    .line 1635
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 1638
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1630
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized l(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    .line 1649
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1650
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->f:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1647
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    move-object v0, p0

    .line 714
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/p;

    move-object v5, p2

    invoke-direct {v1, v5}, Lorg/eclipse/paho/client/mqttv3/p;-><init>([B)V

    move v6, p3

    .line 715
    invoke-virtual {v1, v6}, Lorg/eclipse/paho/client/mqttv3/p;->b(I)V

    move v7, p4

    .line 716
    invoke-virtual {v1, v7}, Lorg/eclipse/paho/client/mqttv3/p;->b(Z)V

    .line 717
    new-instance v10, Lorg/eclipse/paho/android/service/e;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v10, v0, v2, v3, v1}, Lorg/eclipse/paho/android/service/e;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;Lorg/eclipse/paho/client/mqttv3/p;)V

    .line 719
    invoke-direct {v0, v10}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;)Ljava/lang/String;

    move-result-object v9

    .line 720
    iget-object v2, v0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, v0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/e;

    move-result-object v1

    .line 722
    invoke-virtual {v10, v1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/client/mqttv3/g;)V

    return-object v10
.end method

.method public a(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 556
    new-instance v0, Lorg/eclipse/paho/android/service/g;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 558
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;)Ljava/lang/String;

    move-result-object p1

    .line 559
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 906
    new-instance v0, Lorg/eclipse/paho/android/service/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, p3, p4, v1}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Ljava/lang/String;)V

    .line 908
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;)Ljava/lang/String;

    move-result-object v8

    .line 909
    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;Lorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1074
    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    new-array v3, v0, [I

    aput p2, v3, v1

    new-array v6, v0, [Lorg/eclipse/paho/client/mqttv3/f;

    aput-object p5, v6, v1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Lorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 1094
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;Lorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1211
    new-instance v0, Lorg/eclipse/paho/android/service/g;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 1213
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;)Ljava/lang/String;

    move-result-object p2

    .line 1214
    iget-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p1, v2, p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 399
    new-instance v0, Lorg/eclipse/paho/android/service/g;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 402
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->k:Lorg/eclipse/paho/client/mqttv3/n;

    .line 403
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->l:Lorg/eclipse/paho/client/mqttv3/g;

    .line 411
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    if-nez p1, :cond_1

    .line 412
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 413
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e:Landroid/content/Context;

    const-string p3, "org.eclipse.paho.android.service.MqttService"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    .line 416
    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/g;->e()Lorg/eclipse/paho/client/mqttv3/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 418
    new-instance p3, Ljava/lang/RuntimeException;

    const-string v1, "cannot start service org.eclipse.paho.android.service.MqttService"

    invoke-direct {p3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V

    .line 425
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e:Landroid/content/Context;

    iget-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->b:Lorg/eclipse/paho/android/service/MqttAndroidClient$a;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 428
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->q:Z

    if-nez p1, :cond_2

    invoke-direct {p0, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 431
    :cond_1
    sget-object p1, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lorg/eclipse/paho/android/service/MqttAndroidClient$1;

    invoke-direct {p2, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient$1;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Lorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1145
    new-instance v0, Lorg/eclipse/paho/android/service/g;

    invoke-direct {v0, p0, p3, p4, p1}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/g;)Ljava/lang/String;

    move-result-object v6

    .line 1147
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/client/mqttv3/f;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/k;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->m:Lorg/eclipse/paho/client/mqttv3/k;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 290
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->h:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->i:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->j:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1355
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "MqttService.clientHandle"

    .line 1358
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1360
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d:Ljava/lang/String;

    .line 1361
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "MqttService.callbackAction"

    .line 1365
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "connect"

    .line 1367
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1368
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "connectExtended"

    .line 1370
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "messageArrived"

    .line 1373
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->i(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v0, "subscribe"

    .line 1376
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1377
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->f(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v0, "unsubscribe"

    .line 1379
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1380
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->g(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string v0, "send"

    .line 1382
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1383
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->e(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string v0, "messageDelivered"

    .line 1385
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1386
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->h(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    const-string v0, "onConnectionLost"

    .line 1389
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1390
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    const-string v0, "disconnect"

    .line 1392
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1393
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    const-string v0, "trace"

    .line 1395
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1396
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->j(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1398
    :cond_a
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->c:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "Callback action doesn\'t exist."

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_b
    :goto_1
    return-void
.end method
