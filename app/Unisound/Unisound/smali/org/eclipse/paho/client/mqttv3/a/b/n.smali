.class public Lorg/eclipse/paho/client/mqttv3/a/b/n;
.super Lorg/eclipse/paho/client/mqttv3/a/b/h;


# direct methods
.method public constructor <init>(B[B)V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/n;->q:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/b/m;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;-><init>(B)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/m;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/n;->a(I)V

    return-void
.end method


# virtual methods
.method protected a()B
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/n;->r:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()[B
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/n;->k()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/n;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
