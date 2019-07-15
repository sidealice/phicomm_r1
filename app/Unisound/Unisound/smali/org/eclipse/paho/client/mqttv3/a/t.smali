.class public Lorg/eclipse/paho/client/mqttv3/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/a/q;


# static fields
.field private static final a:Ljava/lang/String;

.field static c:Ljava/lang/Class;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field protected b:Ljava/net/Socket;

.field private e:Ljavax/net/SocketFactory;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/t;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.t"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/t;->c:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/t;->a:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/t;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/t;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->e:Ljavax/net/SocketFactory;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->f:Ljava/lang/String;

    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/t;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/t;->a:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "252"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->g:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Long;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->h:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->f:Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->g:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->e:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->b:Ljava/net/Socket;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->b:Ljava/net/Socket;

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/t;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/t;->a:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "250"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d67

    invoke-direct {v0, v1, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->h:I

    return-void
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/t;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method
