.class Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;
.super Ljava/io/ByteArrayOutputStream;
.source "WebSocketSecureNetworkModule.java"


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;

    .line 49
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;->reset()V

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/b;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/b;-><init>(BZ[B)V

    .line 58
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/b;->c()[B

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->a(Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 60
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;->a(Lorg/eclipse/paho/client/mqttv3/internal/websocket/g;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
