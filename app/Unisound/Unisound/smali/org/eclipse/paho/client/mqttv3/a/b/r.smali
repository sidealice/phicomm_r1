.class public Lorg/eclipse/paho/client/mqttv3/a/b/r;
.super Lorg/eclipse/paho/client/mqttv3/a/b/u;


# instance fields
.field private a:[Ljava/lang/String;

.field private s:[I

.field private t:I


# direct methods
.method public constructor <init>(B[B)V
    .locals 5

    const/16 v3, 0xa

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;-><init>(B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->q:I

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->t:I

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->a:[Ljava/lang/String;

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->s:[I

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->a:[Ljava/lang/String;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->t:I

    invoke-virtual {p0, v2}, Lorg/eclipse/paho/client/mqttv3/a/b/r;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->s:[I

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->t:I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;-><init>(B)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->a:[Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->s:[I

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget v1, p2, v0

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->validateQos(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()B
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->r:Z

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

.method public b_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->q:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()[B
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->a:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b/r;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->s:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " names:["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->t:I

    if-lt v0, v3, :cond_0

    const-string v0, "] qos:["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->t:I

    if-lt v1, v0, :cond_2

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/r;->s:[I

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
