.class public Lorg/eclipse/paho/client/mqttv3/a/b/o;
.super Lorg/eclipse/paho/client/mqttv3/a/b/h;


# instance fields
.field private a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private s:Ljava/lang/String;

.field private t:[B


# direct methods
.method public constructor <init>(B[B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->t:[B

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/p;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/p;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    :cond_0
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/p;

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/b/p;->b(Z)V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/a;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/a;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->s:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->q:I

    :cond_2
    array-length v2, p2

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/a;->a()I

    move-result v1

    sub-int v1, v2, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setPayload([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->t:[B

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->s:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-void
.end method

.method protected static a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)[B
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()B
    .locals 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isDuplicate()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->r:Z

    if-eqz v1, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    return v0
.end method

.method public a(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/h;->a(I)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    instance-of v0, v0, Lorg/eclipse/paho/client/mqttv3/a/b/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/p;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/p;->a(I)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected c()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->q:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_0
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

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->t:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->t:[B

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->t:[B

    return-object v0
.end method

.method public g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method public getPayloadLength()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->f()[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v3

    array-length v1, v3

    const/16 v4, 0x14

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v0, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " qos:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, " msgId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    const-string v4, " retained:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, " dup:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->r:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, " topic:\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/o;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " payload:[hex:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, " utf8:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " length:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-byte v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "?"

    goto/16 :goto_1
.end method
