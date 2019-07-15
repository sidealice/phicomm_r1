.class public Lorg/eclipse/paho/client/mqttv3/internal/b/k;
.super Lorg/eclipse/paho/client/mqttv3/internal/b/b;
.source "MqttPubAck.java"


# direct methods
.method public constructor <init>(B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x4

    .line 32
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;-><init>(B)V

    .line 33
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/k;->a:I

    .line 36
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V
    .locals 1

    const/4 v0, 0x4

    .line 40
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;-><init>(B)V

    .line 41
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/k;->a:I

    return-void
.end method


# virtual methods
.method protected h_()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/b/k;->l()[B

    move-result-object v0

    return-object v0
.end method
