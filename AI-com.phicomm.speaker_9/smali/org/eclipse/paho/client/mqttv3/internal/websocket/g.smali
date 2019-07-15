.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;
.super Lorg/eclipse/paho/client/mqttv3/internal/r;
.source "WebSocketSecureNetworkModule.java"


# static fields
.field static d:Ljava/lang/Class;

.field private static final e:Ljava/lang/String;

.field private static final f:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private g:Ljava/io/PipedInputStream;

.field private h:Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.websocket.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->d:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->e:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 35
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->f:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/eclipse/paho/client/mqttv3/internal/r;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->l:Ljava/io/ByteArrayOutputStream;

    .line 67
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->i:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->j:Ljava/lang/String;

    .line 69
    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->k:I

    .line 70
    new-instance p1, Ljava/io/PipedInputStream;

    invoke-direct {p1}, Ljava/io/PipedInputStream;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->g:Ljava/io/PipedInputStream;

    .line 71
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->f:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-interface {p1, p5}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->f()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method private f()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/r;->c()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/r;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/r;->a()V

    .line 76
    new-instance v6, Lorg/eclipse/paho/client/mqttv3/internal/websocket/c;

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/r;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/r;->c()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->i:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->j:Ljava/lang/String;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->k:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/c;->a()V

    .line 78
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->g()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->g:Ljava/io/PipedInputStream;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;-><init>(Ljava/io/InputStream;Ljava/io/PipedInputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->h:Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;

    .line 79
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->h:Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;

    const-string v1, "WssSocketReceiver"

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->g:Ljava/io/PipedInputStream;

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->l:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/b;

    const-string v1, "1000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/b;-><init>(BZ[B)V

    .line 102
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/b;->c()[B

    move-result-object v0

    .line 103
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->f()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 104
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->f()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 106
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->h:Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->h:Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/f;->a()V

    .line 109
    :cond_0
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/r;->d()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "wss://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
