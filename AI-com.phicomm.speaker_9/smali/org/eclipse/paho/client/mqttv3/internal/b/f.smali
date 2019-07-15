.class public Lorg/eclipse/paho/client/mqttv3/internal/b/f;
.super Ljava/io/InputStream;
.source "MqttInputStream.java"


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private d:Lorg/eclipse/paho/client/mqttv3/internal/c;

.field private e:Ljava/io/DataInputStream;

.field private f:Ljava/io/ByteArrayOutputStream;

.field private g:J

.field private h:J

.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.b.f"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->a:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 38
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/c;Ljava/io/InputStream;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 48
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 49
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->e:Ljava/io/DataInputStream;

    .line 50
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->f:Ljava/io/ByteArrayOutputStream;

    const-wide/16 p1, -0x1

    .line 51
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    return-void
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->h:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 132
    iget-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    iget-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->h:J

    sub-long v5, v1, v3

    long-to-int v1, v5

    if-gez v1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-void

    .line 139
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->e:Ljava/io/DataInputStream;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->i:[B

    add-int v5, v0, v2

    sub-int v6, v1, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/c;->c(I)V

    if-gez v3, :cond_2

    .line 148
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    iget-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->h:J

    int-to-long v1, v2

    add-long v5, v3, v1

    iput-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->h:J

    .line 143
    throw v0
.end method


# virtual methods
.method public a()Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v1, 0x1

    if-gez v5, :cond_2

    .line 90
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 92
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 93
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->c(I)V

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    if-lt v5, v1, :cond_1

    const/16 v6, 0xe

    if-le v5, v6, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->e:Ljava/io/DataInputStream;

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->a(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/internal/b/w;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/b/w;->a()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    .line 102
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->f:Ljava/io/ByteArrayOutputStream;

    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    invoke-static {v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->a(J)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v5, v2

    iget-wide v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    add-long v9, v5, v7

    long-to-int v2, v9

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->i:[B

    .line 106
    iput-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->h:J

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x7d6c

    .line 99
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 110
    :cond_2
    :goto_1
    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_3

    .line 112
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->b()V

    const-wide/16 v2, -0x1

    .line 115
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->g:J

    .line 117
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 118
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->i:[B

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->i:[B

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->a([B)Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->b:Ljava/lang/String;

    const-string v4, "readMqttWireMessage"

    const-string v6, "501"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-interface {v0, v3, v4, v6, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, v2

    :catch_1
    :cond_3
    return-object v0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method
