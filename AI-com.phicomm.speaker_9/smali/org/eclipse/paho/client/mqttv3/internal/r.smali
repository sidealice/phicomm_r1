.class public Lorg/eclipse/paho/client/mqttv3/internal/r;
.super Lorg/eclipse/paho/client/mqttv3/internal/s;
.source "SSLNetworkModule.java"


# static fields
.field static a:Ljava/lang/Class;

.field private static final d:Ljava/lang/String;

.field private static final e:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private f:[Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/r;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.r"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/r;->a:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/r;->d:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 32
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/r;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/r;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/internal/s;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->h:Ljava/lang/String;

    .line 51
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->i:I

    .line 52
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/r;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-interface {p1, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 92
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/s;->a()V

    .line 93
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->f:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/r;->a([Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 96
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->b:Ljava/net/Socket;

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 97
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->b:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 99
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->b:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/s;->b(I)V

    .line 88
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->g:I

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 7

    .line 69
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->f:[Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->b:Ljava/net/Socket;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 71
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/r;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 73
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 80
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/r;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/r;->d:Ljava/lang/String;

    const-string v4, "setEnabledCiphers"

    const-string v5, "260"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-interface {v0, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    .line 75
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->b:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ssl://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/r;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
