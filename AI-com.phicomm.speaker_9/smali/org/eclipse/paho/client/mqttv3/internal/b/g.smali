.class public Lorg/eclipse/paho/client/mqttv3/internal/b/g;
.super Ljava/io/OutputStream;
.source "MqttOutputStream.java"


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private d:Lorg/eclipse/paho/client/mqttv3/internal/c;

.field private e:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.b.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->a:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 34
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/c;Ljava/io/OutputStream;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 40
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 41
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->k()[B

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->g_()[B

    move-result-object v1

    .line 78
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 79
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    array-length v0, v0

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(I)V

    move v0, v3

    .line 83
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 91
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->b:Ljava/lang/String;

    const-string v2, "write"

    const-string v4, "500"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-interface {v0, v1, v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v2, 0x400

    .line 84
    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 85
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4, v1, v0, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/lit16 v0, v0, 0x400

    .line 87
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 54
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    array-length p1, p1

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 59
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/g;->d:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {p1, p3}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(I)V

    return-void
.end method
