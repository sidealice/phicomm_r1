.class public Lorg/eclipse/paho/client/mqttv3/a/s;
.super Lorg/eclipse/paho/client/mqttv3/a/t;


# static fields
.field static a:Ljava/lang/Class;

.field private static final d:Ljava/lang/String;

.field private static final e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private f:[Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/s;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.s"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/s;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/s;->d:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/s;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/s;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/t;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/s;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/t;->a()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->f:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/s;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->b:Ljava/net/Socket;

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->b:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->b:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/t;->b(I)V

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->g:I

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->f:[Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/s;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_2

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/s;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/s;->d:Ljava/lang/String;

    const-string v4, "setEnabledCiphers"

    const-string v5, "260"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->b:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-lez v1, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v0, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public e()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/s;->f:[Ljava/lang/String;

    return-object v0
.end method
