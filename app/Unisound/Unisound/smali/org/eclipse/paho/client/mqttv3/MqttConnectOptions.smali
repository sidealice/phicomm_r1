.class public Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
.super Ljava/lang/Object;


# static fields
.field public static final CLEAN_SESSION_DEFAULT:Z = true

.field public static final CONNECTION_TIMEOUT_DEFAULT:I = 0x1e

.field public static final KEEP_ALIVE_INTERVAL_DEFAULT:I = 0x3c

.field public static final MQTT_VERSION_3_1:I = 0x3

.field public static final MQTT_VERSION_3_1_1:I = 0x4

.field public static final MQTT_VERSION_DEFAULT:I = 0x0

.field protected static final a:I = 0x0

.field protected static final b:I = 0x1

.field protected static final c:I = 0x2


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private g:Ljava/lang/String;

.field private h:[C

.field private i:Ljavax/net/SocketFactory;

.field private j:Ljava/util/Properties;

.field private k:Z

.field private l:I

.field private m:[Ljava/lang/String;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->d:I

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->e:Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->f:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->j:Ljava/util/Properties;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->k:Z

    const/16 v0, 0x1e

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->l:I

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->m:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->n:I

    return-void
.end method

.method protected static a(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;IZ)V
    .locals 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->f:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->f:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->f:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->f:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->a(Z)V

    return-void
.end method

.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->l:I

    return v0
.end method

.method public getDebug()Ljava/util/Properties;
    .locals 4

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v0, "MqttVersion"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CleanSession"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ConTimeout"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeepAliveInterval"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "UserName"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "WillDestination"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillDestination()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SocketFactory"

    const-string v2, "null"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLProperties()Ljava/util/Properties;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "SSLProperties"

    const-string v2, "null"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillDestination()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "SocketFactory"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v0, "SSLProperties"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public getKeepAliveInterval()I
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->d:I

    return v0
.end method

.method public getMqttVersion()I
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->n:I

    return v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->h:[C

    return-object v0
.end method

.method public getSSLProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->j:Ljava/util/Properties;

    return-object v0
.end method

.method public getServerURIs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->i:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getWillDestination()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->f:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method public isCleanSession()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->k:Z

    return v0
.end method

.method public setCleanSession(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->k:Z

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->l:I

    return-void
.end method

.method public setKeepAliveInterval(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->d:I

    return-void
.end method

.method public setMqttVersion(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->n:I

    return-void
.end method

.method public setPassword([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->h:[C

    return-void
.end method

.method public setSSLProperties(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->j:Ljava/util/Properties;

    return-void
.end method

.method public setServerURIs([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->m:[Ljava/lang/String;

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->i:Ljavax/net/SocketFactory;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->g:Ljava/lang/String;

    return-void
.end method

.method public setWill(Ljava/lang/String;[BIZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;IZ)V

    return-void
.end method

.method public setWill(Lorg/eclipse/paho/client/mqttv3/MqttTopic;[BIZ)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getDebug()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Connection options"

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
