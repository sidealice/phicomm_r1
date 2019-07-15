.class public abstract Lorg/eclipse/paho/client/mqttv3/a/b/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field public static final b:B = 0x1t

.field public static final c:B = 0x2t

.field public static final d:B = 0x3t

.field public static final e:B = 0x4t

.field public static final f:B = 0x5t

.field public static final g:B = 0x6t

.field public static final h:B = 0x7t

.field public static final i:B = 0x8t

.field public static final j:B = 0x9t

.field public static final k:B = 0xat

.field public static final l:B = 0xbt

.field public static final m:B = 0xct

.field public static final n:B = 0xdt

.field public static final o:B = 0xet

.field protected static final p:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected q:I

.field protected r:Z

.field private s:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONNACK"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PUBLISH"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PUBACK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PUBREC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PUBREL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PUBCOMP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SUBSCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SUBACK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "UNSUBSCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UNSUBACK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PINGREQ"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PINGRESP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DISCONNECT"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->r:Z

    iput-byte p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->s:B

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->q:I

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .locals 9

    const/4 v8, 0x6

    :try_start_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/a;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/client/mqttv3/a/b/a;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    shr-int/lit8 v3, v2, 0x4

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/a/b/w;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/a/b/w;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/a;->a()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/a;->a()I

    move-result v0

    int-to-long v6, v0

    sub-long/2addr v4, v6

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    long-to-int v0, v4

    new-array v0, v0, [B

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_0
    move-object v1, v0

    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/d;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/d;-><init>(B[B)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;-><init>(B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v0, 0x4

    if-ne v3, v0, :cond_3

    :try_start_1
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/k;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/k;-><init>(B[B)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-ne v3, v0, :cond_4

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/l;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/l;-><init>(B[B)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/c;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/c;-><init>(B[B)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xc

    if-ne v3, v0, :cond_6

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/i;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/i;-><init>(B[B)V

    goto :goto_0

    :cond_6
    const/16 v0, 0xd

    if-ne v3, v0, :cond_7

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/j;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/j;-><init>(B[B)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    if-ne v3, v0, :cond_8

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/r;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/r;-><init>(B[B)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    if-ne v3, v0, :cond_9

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/q;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/q;-><init>(B[B)V

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    if-ne v3, v0, :cond_a

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/t;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/t;-><init>(B[B)V

    goto :goto_0

    :cond_a
    const/16 v0, 0xb

    if-ne v3, v0, :cond_b

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/s;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/s;-><init>(B[B)V

    goto :goto_0

    :cond_b
    if-ne v3, v8, :cond_c

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/n;-><init>(B[B)V

    goto :goto_0

    :cond_c
    const/4 v0, 0x5

    if-ne v3, v0, :cond_d

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/m;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/m;-><init>(B[B)V

    goto :goto_0

    :cond_d
    const/16 v0, 0xe

    if-ne v3, v0, :cond_e

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/e;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/e;-><init>(B[B)V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static a(Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .locals 7

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v4, v0, [B

    :cond_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/v;

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderBytes()[B

    move-result-object v1

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderOffset()I

    move-result v2

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderLength()I

    move-result v3

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadOffset()I

    move-result v5

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadLength()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/b/v;-><init>([BII[BII)V

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(Ljava/io/InputStream;)Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(Ljava/io/InputStream;)Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/a/b/w;
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v5, v4, 0x7f

    mul-int/2addr v5, v1

    int-to-long v6, v5

    add-long/2addr v2, v6

    mul-int/lit16 v1, v1, 0x80

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/w;

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/w;-><init>(JI)V

    return-object v1
.end method

.method protected static a(J)[B
    .locals 10

    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    rem-long v4, p0, v8

    long-to-int v1, v4

    int-to-byte v1, v1

    div-long/2addr p0, v8

    cmp-long v3, p0, v6

    if-lez v3, :cond_1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    cmp-long v1, p0, v6

    if-lez v1, :cond_2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()B
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->q:I

    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    array-length v2, v0

    ushr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->r:Z

    return-void
.end method

.method protected b(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract c()[B
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public h()B
    .locals 1

    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->s:B

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->q:I

    return v0
.end method

.method public j()[B
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->h()B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a()B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->c()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->f()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    int-to-long v6, v2

    invoke-static {v6, v7}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(J)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
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

.method protected k()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->q:I

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

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a:[Ljava/lang/String;

    iget-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/u;->s:B

    aget-object v0, v0, v1

    return-object v0
.end method
