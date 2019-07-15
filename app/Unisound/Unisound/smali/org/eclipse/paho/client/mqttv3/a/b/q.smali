.class public Lorg/eclipse/paho/client/mqttv3/a/b/q;
.super Lorg/eclipse/paho/client/mqttv3/a/b/b;


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(B[B)V
    .locals 4

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/q;->q:I

    const/4 v1, 0x0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/q;->a:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/q;->a:[I

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public b()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/q;->a:[I

    return-object v0
.end method

.method protected c()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " granted Qos"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/q;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/q;->a:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
