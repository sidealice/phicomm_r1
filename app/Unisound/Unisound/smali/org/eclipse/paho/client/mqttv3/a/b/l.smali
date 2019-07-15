.class public Lorg/eclipse/paho/client/mqttv3/a/b/l;
.super Lorg/eclipse/paho/client/mqttv3/a/b/b;


# direct methods
.method public constructor <init>(B[B)V
    .locals 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/l;->q:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;-><init>(B)V

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/l;->q:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;-><init>(B)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/l;->q:I

    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/l;->k()[B

    move-result-object v0

    return-object v0
.end method
