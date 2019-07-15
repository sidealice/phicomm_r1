.class public Lorg/eclipse/paho/client/mqttv3/h;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/h$a;
    }
.end annotation


# static fields
.field static b:Ljava/lang/Class; = null

.field private static final c:Ljava/lang/String;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/a/b;

.field private static m:I = 0x3e8

.field private static o:Ljava/lang/Object;


# instance fields
.field protected a:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Hashtable;

.field private h:Lorg/eclipse/paho/client/mqttv3/m;

.field private i:Lorg/eclipse/paho/client/mqttv3/k;

.field private j:Lorg/eclipse/paho/client/mqttv3/n;

.field private k:Ljava/lang/Object;

.field private l:Ljava/util/Timer;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/h;->b:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 89
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/h;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/u;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/u;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/client/mqttv3/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/r;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->n:Z

    .line 362
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-interface {v1, p2}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 365
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null clientId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    move v1, v0

    move v2, v1

    .line 369
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_3

    const v1, 0xffff

    if-le v2, v1, :cond_1

    .line 375
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientId longer than 65535 characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_1
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/n;->d(Ljava/lang/String;)I

    .line 380
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->f:Ljava/lang/String;

    .line 381
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    .line 383
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/h;->h:Lorg/eclipse/paho/client/mqttv3/m;

    .line 384
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->h:Lorg/eclipse/paho/client/mqttv3/m;

    if-nez v1, :cond_2

    .line 385
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/b/a;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/b/a;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->h:Lorg/eclipse/paho/client/mqttv3/m;

    .line 389
    :cond_2
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v3, "MqttAsyncClient"

    const-string v5, "101"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v0

    aput-object p1, v6, v4

    const/4 v0, 0x2

    aput-object p3, v6, v0

    invoke-interface {v1, v2, v3, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object p3, p0, Lorg/eclipse/paho/client/mqttv3/h;->h:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {p3, p2, p1}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/h;->h:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p1, p0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/internal/a;-><init>(Lorg/eclipse/paho/client/mqttv3/d;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/r;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 393
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->h:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/m;->a()V

    .line 394
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->g:Ljava/util/Hashtable;

    return-void

    .line 370
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/h;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method static a(I)V
    .locals 0

    .line 105
    sput p0, Lorg/eclipse/paho/client/mqttv3/h;->m:I

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/h;)V
    .locals 0

    .line 1172
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/h;->j()V

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/h;I)V
    .locals 0

    .line 1231
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/h;->b(I)V

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/h;Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->n:Z

    return-void
.end method

.method protected static a(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/n;)Lorg/eclipse/paho/client/mqttv3/internal/p;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 454
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v4, "createNetworkModule"

    const-string v5, "115"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v1, v2, v4, v5, v7}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->i()Ljavax/net/SocketFactory;

    move-result-object v1

    .line 459
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/n;->d(Ljava/lang/String;)I

    move-result v2

    .line 463
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    const/16 v7, 0x7d69

    const/4 v9, -0x1

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    .line 564
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v4, "createNetworkModule"

    const-string v5, "119"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-interface {v1, v2, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_0
    if-ne v4, v9, :cond_0

    const/16 v2, 0x1bb

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-nez v1, :cond_2

    .line 537
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/a/a;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;-><init>()V

    .line 538
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->l()Ljava/util/Properties;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 540
    invoke-virtual {v1, v2, v10}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 541
    :cond_1
    invoke-virtual {v1, v10}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;->o(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    move-object v7, v1

    move-object v1, v2

    goto :goto_1

    .line 544
    :cond_2
    instance-of v2, v1, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_3

    .line 545
    invoke-static {v7}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    :cond_3
    move-object v7, v10

    .line 549
    :goto_1
    new-instance v8, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    move-object v1, v8

    move-object v3, p1

    move-object v4, v5

    move v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    move-object v1, v8

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->a(I)V

    if-eqz v7, :cond_4

    .line 553
    invoke-virtual {v7, v10}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;->n(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 555
    move-object v2, v8

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/r;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/client/mqttv3/internal/r;->a([Ljava/lang/String;)V

    :cond_4
    move-object v10, v8

    goto/16 :goto_6

    :pswitch_1
    if-ne v4, v9, :cond_5

    const/16 v2, 0x50

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    if-nez v1, :cond_7

    .line 523
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    :cond_6
    move-object v2, v1

    goto :goto_3

    .line 525
    :cond_7
    instance-of v2, v1, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_6

    .line 526
    invoke-static {v7}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 528
    :goto_3
    new-instance v7, Lorg/eclipse/paho/client/mqttv3/internal/websocket/d;

    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    move-object v1, v7

    move-object v3, p1

    move-object v4, v5

    move v5, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/d;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 529
    move-object v1, v7

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/d;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/d;->b(I)V

    move-object v10, v7

    goto/16 :goto_6

    .line 560
    :pswitch_2
    new-instance v10, Lorg/eclipse/paho/client/mqttv3/internal/m;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/eclipse/paho/client/mqttv3/internal/m;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_3
    if-ne v4, v9, :cond_8

    const/16 v4, 0x22b3

    :cond_8
    if-nez v1, :cond_a

    .line 493
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/a/a;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;-><init>()V

    .line 494
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->l()Ljava/util/Properties;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 496
    invoke-virtual {v1, v2, v10}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 497
    :cond_9
    invoke-virtual {v1, v10}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;->o(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_4

    .line 503
    :cond_a
    instance-of v2, v1, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_b

    .line 504
    invoke-static {v7}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    :cond_b
    move-object v2, v10

    .line 508
    :goto_4
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/r;

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    invoke-direct {v3, v1, v5, v4, v6}, Lorg/eclipse/paho/client/mqttv3/internal/r;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 509
    move-object v1, v3

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/r;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->h()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/r;->a(I)V

    if-eqz v2, :cond_c

    .line 512
    invoke-virtual {v2, v10}, Lorg/eclipse/paho/client/mqttv3/internal/a/a;->n(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 514
    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/r;->a([Ljava/lang/String;)V

    :cond_c
    move-object v10, v3

    goto :goto_6

    :pswitch_4
    if-ne v4, v9, :cond_d

    const/16 v4, 0x75b

    :cond_d
    if-nez v1, :cond_e

    .line 478
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    goto :goto_5

    .line 480
    :cond_e
    instance-of v2, v1, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_f

    .line 481
    invoke-static {v7}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 483
    :cond_f
    :goto_5
    new-instance v10, Lorg/eclipse/paho/client/mqttv3/internal/s;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    invoke-direct {v10, v1, v5, v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/s;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    move-object v1, v10

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/s;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/s;->b(I)V

    :goto_6
    return-object v10

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 466
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Malformed URI: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)V
    .locals 8

    const-string v0, "rescheduleReconnectCycle"

    .line 1234
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v3, "505"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Long;

    sget v6, Lorg/eclipse/paho/client/mqttv3/h;->m:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->j:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/n;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1237
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1238
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->l:Ljava/util/Timer;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/h$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/eclipse/paho/client/mqttv3/h$a;-><init>(Lorg/eclipse/paho/client/mqttv3/h;Lorg/eclipse/paho/client/mqttv3/h$a;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 1241
    :cond_0
    sput p1, Lorg/eclipse/paho/client/mqttv3/h;->m:I

    .line 1242
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/h;->k()V

    .line 1235
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static b(Lorg/eclipse/paho/client/mqttv3/h;)V
    .locals 0

    .line 1207
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/h;->k()V

    return-void
.end method

.method static c(Lorg/eclipse/paho/client/mqttv3/h;)V
    .locals 0

    .line 1216
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/h;->l()V

    return-void
.end method

.method static g()Lorg/eclipse/paho/client/mqttv3/a/b;
    .locals 1

    .line 89
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-object v0
.end method

.method static h()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static i()I
    .locals 1

    .line 105
    sget v0, Lorg/eclipse/paho/client/mqttv3/h;->m:I

    return v0
.end method

.method private j()V
    .locals 7

    .line 1175
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "attemptReconnect"

    const-string v3, "500"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->j:Lorg/eclipse/paho/client/mqttv3/n;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->k:Ljava/lang/Object;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/j;

    invoke-direct {v2, p0}, Lorg/eclipse/paho/client/mqttv3/j;-><init>(Lorg/eclipse/paho/client/mqttv3/h;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/h;->a(Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1200
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v3, "attemptReconnect"

    const-string v4, "804"

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1197
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v3, "attemptReconnect"

    const-string v4, "804"

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 8

    const-string v0, "startReconnectCycle"

    .line 1210
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v3, "503"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Long;

    sget v6, Lorg/eclipse/paho/client/mqttv3/h;->m:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->l:Ljava/util/Timer;

    .line 1213
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->l:Ljava/util/Timer;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/paho/client/mqttv3/h$a;-><init>(Lorg/eclipse/paho/client/mqttv3/h;Lorg/eclipse/paho/client/mqttv3/h$a;)V

    sget v2, Lorg/eclipse/paho/client/mqttv3/h;->m:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private l()V
    .locals 7

    const-string v0, "stopReconnectCycle"

    .line 1219
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v3, "504"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->j:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/n;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1222
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 1224
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->l:Ljava/util/Timer;

    :cond_0
    const/16 v1, 0x3e8

    .line 1226
    sput v1, Lorg/eclipse/paho/client/mqttv3/h;->m:I

    .line 1220
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 1114
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "publish"

    const-string v3, "111"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v6, 0x1

    aput-object p3, v4, v6

    const/4 v7, 0x2

    aput-object p4, v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    invoke-static {p1, v5}, Lorg/eclipse/paho/client/mqttv3/t;->a(Ljava/lang/String;Z)V

    .line 1119
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/o;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/o;-><init>(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/o;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 1121
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/o;->a(Ljava/lang/Object;)V

    .line 1122
    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/o;->a(Lorg/eclipse/paho/client/mqttv3/p;)V

    .line 1123
    iget-object p3, v0, Lorg/eclipse/paho/client/mqttv3/o;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    new-array p4, v6, [Ljava/lang/String;

    aput-object p1, p4, v5

    invoke-virtual {p3, p4}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a([Ljava/lang/String;)V

    .line 1125
    new-instance p3, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V

    .line 1126
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p1, p3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 1129
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string p3, "publish"

    const-string p4, "112"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/client/mqttv3/e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1096
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/h;->a(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 1086
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/p;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/p;-><init>([B)V

    .line 1087
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/p;->b(I)V

    .line 1088
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/p;->b(Z)V

    .line 1089
    invoke-virtual {p0, p1, v0, p5, p6}, Lorg/eclipse/paho/client/mqttv3/h;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lorg/eclipse/paho/client/mqttv3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/client/mqttv3/h;->a(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 695
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "104"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/s;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 699
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/s;->a(Ljava/lang/Object;)V

    .line 701
    new-instance p3, Lorg/eclipse/paho/client/mqttv3/internal/b/e;

    invoke-direct {p3}, Lorg/eclipse/paho/client/mqttv3/internal/b/e;-><init>()V

    .line 703
    :try_start_0
    iget-object p4, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p4, p3, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/e;JLorg/eclipse/paho/client/mqttv3/s;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "108"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 706
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "105"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 707
    throw p1
.end method

.method public a(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 672
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/h;->a(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 868
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    invoke-virtual {p0, v1, p1, p3, p4}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 972
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/n;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/h;->a(Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7d64

    .line 599
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7d6e

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw p1

    .line 604
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7d66

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw p1

    .line 607
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7d6f

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw p1

    :cond_3
    if-nez p1, :cond_4

    .line 611
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/n;

    invoke-direct {p1}, Lorg/eclipse/paho/client/mqttv3/n;-><init>()V

    :cond_4
    move-object v4, p1

    .line 613
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/h;->j:Lorg/eclipse/paho/client/mqttv3/n;

    .line 614
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/h;->k:Ljava/lang/Object;

    .line 615
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/n;->o()Z

    move-result p1

    .line 618
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "connect"

    const-string v3, "103"

    const/16 v5, 0x8

    .line 619
    new-array v5, v5, [Ljava/lang/Object;

    .line 620
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/n;->m()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const/4 v6, 0x1

    .line 621
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/n;->h()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 622
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/n;->e()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 623
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/n;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 624
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/n;->c()[C

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, "[null]"

    goto :goto_0

    :cond_5
    const-string v7, "[notnull]"

    :goto_0
    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 625
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/n;->k()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v7, "[null]"

    goto :goto_1

    :cond_6
    const-string v7, "[notnull]"

    :goto_1
    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object p2, v5, v6

    const/4 v6, 0x7

    aput-object p3, v5, v6

    .line 618
    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/h;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/h;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/n;)[Lorg/eclipse/paho/client/mqttv3/internal/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a([Lorg/eclipse/paho/client/mqttv3/internal/p;)V

    .line 629
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/i;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/paho/client/mqttv3/i;-><init>(Lorg/eclipse/paho/client/mqttv3/h;Z)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/l;)V

    .line 652
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    .line 653
    new-instance v10, Lorg/eclipse/paho/client/mqttv3/internal/h;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/h;->h:Lorg/eclipse/paho/client/mqttv3/m;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/h;->n:Z

    move-object v0, v10

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/paho/client/mqttv3/internal/h;-><init>(Lorg/eclipse/paho/client/mqttv3/h;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/n;Lorg/eclipse/paho/client/mqttv3/s;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;Z)V

    .line 654
    invoke-virtual {p1, v10}, Lorg/eclipse/paho/client/mqttv3/s;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 655
    invoke-virtual {p1, p0}, Lorg/eclipse/paho/client/mqttv3/s;->a(Ljava/lang/Object;)V

    .line 658
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/h;->i:Lorg/eclipse/paho/client/mqttv3/k;

    instance-of p2, p2, Lorg/eclipse/paho/client/mqttv3/l;

    if-eqz p2, :cond_7

    .line 659
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/h;->i:Lorg/eclipse/paho/client/mqttv3/k;

    check-cast p2, Lorg/eclipse/paho/client/mqttv3/l;

    invoke-virtual {v10, p2}, Lorg/eclipse/paho/client/mqttv3/internal/h;->a(Lorg/eclipse/paho/client/mqttv3/l;)V

    .line 662
    :cond_7
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p2, v9}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(I)V

    .line 663
    invoke-virtual {v10}, Lorg/eclipse/paho/client/mqttv3/internal/h;->a()V

    return-object p1
.end method

.method public a([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 986
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 996
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, ""

    move-object v3, v0

    move v0, v1

    .line 998
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 1006
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v5, "unsubscribe"

    const-string v6, "107"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object p2, v7, v2

    const/4 v3, 0x2

    aput-object p3, v7, v3

    invoke-interface {v0, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    .line 1000
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1002
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v1

    .line 1009
    :goto_2
    array-length v3, p1

    if-lt v0, v3, :cond_4

    .line 1020
    :goto_3
    array-length v0, p1

    if-lt v1, v0, :cond_3

    .line 1024
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/s;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 1026
    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/s;->a(Ljava/lang/Object;)V

    .line 1027
    iget-object p2, v0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a([Ljava/lang/String;)V

    .line 1029
    new-instance p2, Lorg/eclipse/paho/client/mqttv3/internal/b/t;

    invoke-direct {p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/t;-><init>([Ljava/lang/String;)V

    .line 1031
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 1033
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string p3, "unsubscribe"

    const-string v1, "110"

    invoke-interface {p1, p2, p3, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1021
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1014
    :cond_4
    aget-object v3, p1, v0

    invoke-static {v3, v2}, Lorg/eclipse/paho/client/mqttv3/t;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 882
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 891
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 892
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 896
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_4

    .line 901
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v0

    :goto_1
    const/4 v3, 0x1

    .line 903
    array-length v4, p1

    if-lt v2, v4, :cond_1

    .line 913
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v5, "subscribe"

    const-string v6, "106"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    aput-object p3, v7, v3

    const/4 v0, 0x2

    aput-object p4, v7, v0

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-lez v2, :cond_2

    const-string v4, ", "

    .line 905
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v4, "topic="

    .line 907
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " qos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v4, p2, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 910
    aget-object v4, p1, v2

    invoke-static {v4, v3}, Lorg/eclipse/paho/client/mqttv3/t;->a(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 916
    :cond_3
    :goto_2
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/s;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 918
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/s;->a(Ljava/lang/Object;)V

    .line 919
    iget-object p3, v0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {p3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a([Ljava/lang/String;)V

    .line 921
    new-instance p3, Lorg/eclipse/paho/client/mqttv3/internal/b/r;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/b/r;-><init>([Ljava/lang/String;[I)V

    .line 923
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p1, p3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 925
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string p3, "subscribe"

    const-string p4, "109"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 897
    :cond_4
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Lorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 954
    array-length v0, p5

    array-length v1, p2

    if-ne v0, v1, :cond_2

    array-length v0, p2

    array-length v1, p1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 958
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p2

    const/4 p3, 0x0

    .line 961
    :goto_0
    array-length p4, p1

    if-lt p3, p4, :cond_1

    return-object p2

    .line 962
    :cond_1
    iget-object p4, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    aget-object v0, p1, p3

    aget-object v1, p5, p3

    invoke-virtual {p4, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/f;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 955
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a([Ljava/lang/String;[I[Lorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;
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

    move-object v2, p2

    move-object v5, p3

    .line 949
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Lorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/k;)V
    .locals 1

    .line 1042
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h;->i:Lorg/eclipse/paho/client/mqttv3/k;

    .line 1043
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/k;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/n;)[Lorg/eclipse/paho/client/mqttv3/internal/p;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 421
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "createNetworkModules"

    const-string v3, "116"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->n()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 427
    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v6

    goto :goto_0

    .line 428
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 429
    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v6

    .line 434
    :cond_1
    :goto_0
    array-length p1, v0

    new-array p1, p1, [Lorg/eclipse/paho/client/mqttv3/internal/p;

    .line 435
    :goto_1
    array-length v1, v0

    if-lt v6, v1, :cond_2

    .line 439
    sget-object p2, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v1, "createNetworkModules"

    const-string v2, "108"

    invoke-interface {p2, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 436
    :cond_2
    aget-object v1, v0, v6

    invoke-direct {p0, v1, p2}, Lorg/eclipse/paho/client/mqttv3/h;->b(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/n;)Lorg/eclipse/paho/client/mqttv3/internal/p;

    move-result-object v1

    aput-object v1, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1141
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "reconnect"

    const-string v3, "500"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/h;->e:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d64

    .line 1144
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    .line 1146
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    .line 1149
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    .line 1152
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1153
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    .line 1156
    :cond_3
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/h;->l()V

    .line 1158
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/h;->j()V

    return-void
.end method

.method public f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1301
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "113"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a()V

    .line 1304
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/h;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/h;->c:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "114"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
