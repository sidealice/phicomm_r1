.class public Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;


# static fields
.field static b:Ljava/lang/Class; = null

.field private static final c:Ljava/lang/String;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private static final e:Ljava/lang/String; = "paho"

.field private static final f:J = 0x7530L

.field private static final g:J = 0x2710L

.field private static final h:C = '\ud800'

.field private static final i:C = '\udbff'


# instance fields
.field protected a:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Hashtable;

.field private m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.MqttAsyncClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/b/b;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/b/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V
    .locals 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p2}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null clientId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1

    const v0, 0xffff

    if-le v2, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ClientId longer than 65535 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->a(Ljava/lang/String;)I

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->k:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->j:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    if-nez v0, :cond_4

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/b/a;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/b/a;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    :cond_4
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "MqttAsyncClient"

    const-string v4, "101"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    const/4 v1, 0x1

    aput-object p1, v5, v1

    const/4 v1, 0x2

    aput-object p3, v5, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0, p2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {v0, p0, v1, p4}, Lorg/eclipse/paho/client/mqttv3/a/a;-><init>(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->l:Ljava/util/Hashtable;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method protected static a(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/a/q;
    .locals 9

    const/16 v8, 0x7d69

    const/4 v7, 0x6

    const/4 v3, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v2, "createNetworkModule"

    const-string v4, "115"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v0, v1, v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->a(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x75b

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a(Ljava/lang/String;I)I

    move-result v3

    if-nez v0, :cond_2

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    :cond_1
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/t;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->j:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/t;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/t;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/t;->b(I)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    invoke-static {v8}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x22b3

    invoke-direct {p0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a(Ljava/lang/String;I)I

    move-result v5

    if-nez v0, :cond_4

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/a/a;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLProperties()Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/util/Properties;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v3}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->s(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/s;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->j:Ljava/lang/String;

    invoke-direct {v1, v0, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/s;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/s;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/a/s;->a(I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->q(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/s;

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/s;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_5

    invoke-static {v8}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :pswitch_2
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/n;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/n;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static generateClientId()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "paho"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/a/a;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->l:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)[Lorg/eclipse/paho/client/mqttv3/a/q;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "createNetworkModules"

    const-string v4, "116"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getServerURIs()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v6, [Ljava/lang/String;

    aput-object p1, v0, v1

    :cond_0
    :goto_0
    array-length v2, v0

    new-array v2, v2, [Lorg/eclipse/paho/client/mqttv3/a/q;

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "createNetworkModules"

    const-string v4, "108"

    invoke-interface {v0, v1, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    array-length v2, v0

    if-nez v2, :cond_0

    new-array v0, v6, [Ljava/lang/String;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_2
    aget-object v3, v0, v1

    invoke-direct {p0, v3, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->b(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/a/q;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public checkPing(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 5

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v2, "ping"

    const-string v3, "117"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->p()Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "ping"

    const-string v4, "118"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public close()V
    .locals 4

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "113"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->b()V

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "114"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d64

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :cond_3
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "connect"

    const-string v4, "103"

    const/16 v0, 0x8

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v8

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x4

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getPassword()[C

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "[null]"

    :goto_0
    aput-object v0, v5, v6

    const/4 v6, 0x5

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "[null]"

    :goto_1
    aput-object v0, v5, v6

    const/4 v0, 0x6

    aput-object p2, v5, v0

    const/4 v0, 0x7

    aput-object p3, v5, v0

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)[Lorg/eclipse/paho/client/mqttv3/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a([Lorg/eclipse/paho/client/mqttv3/a/q;)V

    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/j;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->m:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/paho/client/mqttv3/a/j;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    invoke-virtual {v5, v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    invoke-virtual {v5, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v1, v8}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(I)V

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/j;->a()V

    return-object v5

    :cond_4
    const-string v0, "[notnull]"

    goto :goto_0

    :cond_5
    const-string v0, "[notnull]"

    goto :goto_1
.end method

.method public disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(J)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 7

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "104"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/e;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/e;-><init>()V

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2, v1, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/e;JLorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "disconnect"

    const-string v4, "108"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v5

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "105"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public disconnect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 2

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public disconnectForcibly()V
    .locals 4

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(JJ)V

    return-void
.end method

.method public disconnectForcibly(J)V
    .locals 3

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(JJ)V

    return-void
.end method

.method public disconnectForcibly(JJ)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(JJ)V

    return-void
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDebug()Lorg/eclipse/paho/client/mqttv3/c/a;
    .locals 3

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/c/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->j:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/c/a;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/a/a;)V

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->j()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->k:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v2, "publish"

    const-string v3, "111"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p3, v4, v7

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v6}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->setUserContext(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    new-array v2, v7, [Ljava/lang/String;

    aput-object p1, v2, v6

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a([Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/b/o;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "publish"

    const-string v4, "112"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public publish(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    invoke-virtual {p0, p1, v0, p5, p6}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1, v3, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v4, "subscribe"

    const-string v5, "106"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object p3, v6, v7

    const/4 v0, 0x2

    aput-object p4, v6, v0

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a([Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/r;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/b/r;-><init>([Ljava/lang/String;[I)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "subscribe"

    const-string v4, "109"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-lez v1, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "topic="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " qos="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v0, p1, v1

    invoke-static {v0, v7}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, v2, v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v4, "unsubscribe"

    const-string v5, "107"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object p2, v6, v7

    const/4 v0, 0x2

    aput-object p3, v6, v0

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a([Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/t;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/t;-><init>([Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->c:Ljava/lang/String;

    const-string v3, "unsubscribe"

    const-string v4, "110"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v0, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v0, p1, v1

    invoke-static {v0, v7}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method
