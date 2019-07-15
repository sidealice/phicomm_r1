.class public Lorg/eclipse/paho/client/mqttv3/a/b/d;
.super Lorg/eclipse/paho/client/mqttv3/a/b/u;


# static fields
.field public static final a:Ljava/lang/String; = "Con"


# instance fields
.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private v:Ljava/lang/String;

.field private w:[C

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(B[B)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->x:I

    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZILjava/lang/String;[CLorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;-><init>(B)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->s:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->t:Z

    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->x:I

    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->v:Ljava/lang/String;

    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->w:[C

    iput-object p7, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    iput-object p8, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->y:Ljava/lang/String;

    iput p2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->z:I

    return-void
.end method


# virtual methods
.method protected a()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->t:Z

    return v0
.end method

.method protected c()[B
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->z:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    const-string v0, "MQIsdp"

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->z:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v0, 0x0

    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->t:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    int-to-byte v0, v0

    :cond_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->v:Ljava/lang/String;

    if-eqz v3, :cond_3

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->w:[C

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->x:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_4
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->z:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const-string v0, "MQTT"

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Con"

    return-object v0
.end method

.method public f()[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->y:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->u:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->v:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->v:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->w:[C

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->w:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b/d;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :cond_1
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

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " clientId "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " keepAliveInterval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/d;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
