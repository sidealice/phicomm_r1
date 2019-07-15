.class Lorg/eclipse/paho/client/mqttv3/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Thread;

.field b:Lorg/eclipse/paho/client/mqttv3/a/b/e;

.field c:J

.field d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

.field final e:Lorg/eclipse/paho/client/mqttv3/a/a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/b/e;JLorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->a:Ljava/lang/Thread;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->b:Lorg/eclipse/paho/client/mqttv3/a/b/e;

    iput-wide p3, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->c:J

    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Disc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->q()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnectBG:run"

    const-string v3, "221"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->d(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/e;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->c:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(J)V

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->b:Lorg/eclipse/paho/client/mqttv3/a/b/e;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->k()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, v4, v4}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1, v4, v4}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/c;->d:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {v1, v2, v4}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
