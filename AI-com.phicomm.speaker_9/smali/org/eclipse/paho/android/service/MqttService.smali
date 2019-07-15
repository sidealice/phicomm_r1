.class public Lorg/eclipse/paho/android/service/MqttService;
.super Landroid/app/Service;
.source "MqttService.java"

# interfaces
.implements Lorg/eclipse/paho/android/service/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/MqttService$a;,
        Lorg/eclipse/paho/android/service/MqttService$b;
    }
.end annotation


# instance fields
.field a:Lorg/eclipse/paho/android/service/c;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lorg/eclipse/paho/android/service/MqttService$b;

.field private e:Lorg/eclipse/paho/android/service/MqttService$a;

.field private volatile f:Z

.field private g:Lorg/eclipse/paho/android/service/f;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/paho/android/service/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->e()V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;Z)Z
    .locals 0

    .line 226
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 734
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    if-eqz v0, :cond_0

    .line 735
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 736
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    .line 737
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.traceTag"

    .line 738
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.errorMessage"

    .line 740
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/i;->b:Lorg/eclipse/paho/android/service/i;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/MqttService;)Z
    .locals 0

    .line 226
    iget-boolean p0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    return p0
.end method

.method private c()V
    .locals 4

    .line 771
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lorg/eclipse/paho/android/service/MqttService$b;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttService$b;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    .line 773
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 777
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const-string v0, "connectivity"

    .line 779
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 780
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    .line 781
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    if-nez v0, :cond_1

    .line 782
    new-instance v0, Lorg/eclipse/paho/android/service/MqttService$a;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttService$a;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    .line 783
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/d;

    if-nez p1, :cond_0

    .line 588
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ClientHandle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-object p1
.end method

.method private d()V
    .locals 2

    .line 792
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 794
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    .line 797
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 798
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .line 857
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/d;

    .line 858
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/d;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;)Ljava/lang/String;
    .locals 8

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 303
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lorg/eclipse/paho/android/service/d;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/android/service/d;-><init>(Lorg/eclipse/paho/android/service/MqttService;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/i;
    .locals 1

    .line 602
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/paho/android/service/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 603
    sget-object p1, Lorg/eclipse/paho/android/service/i;->a:Lorg/eclipse/paho/android/service/i;

    return-object p1

    .line 606
    :cond_0
    sget-object p1, Lorg/eclipse/paho/android/service/i;->b:Lorg/eclipse/paho/android/service/i;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 443
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/android/service/d;->a(Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/e;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 5

    const-string v0, "MqttService"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconnect to server, client size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/d;

    const-string v2, "Reconnect Client:"

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/d;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/d;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 488
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 757
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    const-string v2, "exception"

    .line 760
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.errorMessage"

    .line 761
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.exception"

    .line 762
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "MqttService.traceTag"

    .line 763
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/i;->b:Lorg/eclipse/paho/android/service/i;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 370
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p2, p3}, Lorg/eclipse/paho/android/service/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->stopSelf()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 546
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V
    .locals 2

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MqttService.callbackToActivity.v0"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "MqttService.clientHandle"

    .line 279
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "MqttService.callbackStatus"

    .line 282
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 284
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    const/4 p3, 0x0

    .line 329
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/client/mqttv3/f;)V
    .locals 6

    .line 527
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 528
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/android/service/d;->a([Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/client/mqttv3/f;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 695
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug"

    .line 717
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 2

    const-string v0, "connectivity"

    .line 840
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 841
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/d;->d()Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    .line 730
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "MqttService.activityToken"

    .line 662
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 663
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/android/service/f;->a(Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 617
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 621
    new-instance v0, Lorg/eclipse/paho/android/service/f;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/android/service/f;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    .line 625
    new-instance v0, Lorg/eclipse/paho/android/service/b;

    invoke-direct {v0, p0, p0}, Lorg/eclipse/paho/android/service/b;-><init>(Lorg/eclipse/paho/android/service/MqttService;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 636
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/d;

    .line 637
    invoke-virtual {v1, v2, v2}, Lorg/eclipse/paho/android/service/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    if-eqz v0, :cond_1

    .line 642
    iput-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    .line 645
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->d()V

    .line 647
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    invoke-interface {v0}, Lorg/eclipse/paho/android/service/c;->a()V

    .line 650
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 674
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->c()V

    const/4 p1, 0x1

    return p1
.end method
