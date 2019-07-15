.class public Lorg/eclipse/paho/client/mqttv3/internal/b/q;
.super Lorg/eclipse/paho/client/mqttv3/internal/b/b;
.source "MqttSuback.java"


# instance fields
.field private c:[I


# direct methods
.method public constructor <init>(B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x9

    .line 33
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;-><init>(B)V

    .line 34
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/q;->a:I

    const/4 p1, 0x0

    .line 38
    array-length p2, p2

    add-int/lit8 p2, p2, -0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/q;->c:[I

    .line 39
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p2

    :goto_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/q;->c:[I

    aput p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 43
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p2

    goto :goto_0
.end method


# virtual methods
.method protected h_()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    new-array v0, v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " granted Qos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 56
    :goto_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/q;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, " "

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/q;->c:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
