.class public Lorg/eclipse/paho/client/mqttv3/a/b/f;
.super Ljava/io/InputStream;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private d:Lorg/eclipse/paho/client/mqttv3/a/e;

.field private e:Ljava/io/DataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.b.f"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/b/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/e;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->e:Ljava/io/DataInputStream;

    return-void
.end method

.method private a([BII)V
    .locals 4

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->e:Ljava/io/DataInputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->b(I)V

    if-gez v1, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v2, v7}, Lorg/eclipse/paho/client/mqttv3/a/e;->b(I)V

    ushr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    if-lt v2, v7, :cond_0

    const/16 v3, 0xe

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v0, 0x7d6c

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->e:Ljava/io/DataInputStream;

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/a/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/b/w;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    long-to-int v1, v2

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    array-length v3, v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b/f;->a([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a([B)Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/b/f;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/b/f;->b:Ljava/lang/String;

    const-string v3, "readMqttWireMessage"

    const-string v4, "501"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method
