.class public Lorg/eclipse/paho/client/mqttv3/a/b/s;
.super Lorg/eclipse/paho/client/mqttv3/a/b/b;


# direct methods
.method public constructor <init>(B[B)V
    .locals 2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/s;->q:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
