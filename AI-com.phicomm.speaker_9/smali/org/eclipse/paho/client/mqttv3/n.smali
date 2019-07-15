.class public Lorg/eclipse/paho/client/mqttv3/n;
.super Ljava/lang/Object;
.source "MqttConnectOptions.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lorg/eclipse/paho/client/mqttv3/p;

.field private e:Ljava/lang/String;

.field private f:[C

.field private g:Ljavax/net/SocketFactory;

.field private h:Ljava/util/Properties;

.field private i:Z

.field private j:I

.field private k:[Ljava/lang/String;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 68
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->a:I

    const/16 v0, 0xa

    .line 69
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->b:I

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->c:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->d:Lorg/eclipse/paho/client/mqttv3/p;

    .line 75
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->h:Ljava/util/Properties;

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/n;->i:Z

    const/16 v1, 0x1e

    .line 77
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/n;->j:I

    .line 78
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->k:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->l:I

    .line 80
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->m:Z

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 3

    .line 505
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v1, "ws"

    .line 506
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-string v1, "wss"

    .line 509
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x4

    return p0

    .line 513
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v1, "tcp"

    .line 519
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    const-string v1, "ssl"

    .line 522
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string v1, "local"

    .line 525
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x2

    return p0

    .line 529
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljavax/net/SocketFactory;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->g:Ljavax/net/SocketFactory;

    return-void
.end method

.method public a([C)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->f:[C

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 235
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 237
    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->a:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->i:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    if-gez p1, :cond_0

    .line 283
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 285
    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->j:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 134
    :cond_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->m:Z

    return-void
.end method

.method public c()[C
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->f:[C

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 550
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 552
    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/n;->l:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->a:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->l:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 247
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 269
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->j:I

    return v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->g:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lorg/eclipse/paho/client/mqttv3/p;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->d:Lorg/eclipse/paho/client/mqttv3/p;

    return-object v0
.end method

.method public l()Ljava/util/Properties;
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->h:Ljava/util/Properties;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->i:Z

    return v0
.end method

.method public n()[Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 561
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/n;->m:Z

    return v0
.end method

.method public p()Ljava/util/Properties;
    .locals 4

    .line 587
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "MqttVersion"

    .line 588
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->f()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CleanSession"

    .line 589
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->m()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ConTimeout"

    .line 590
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->h()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeepAliveInterval"

    .line 591
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->e()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UserName"

    .line 592
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->d()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WillDestination"

    .line 593
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->j()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->i()Ljavax/net/SocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "SocketFactory"

    const-string v2, "null"

    .line 595
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v1, "SocketFactory"

    .line 597
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->i()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->l()Ljava/util/Properties;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "SSLProperties"

    const-string v2, "null"

    .line 600
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v1, "SSLProperties"

    .line 602
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->l()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 608
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/n;->p()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Connection options"

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
