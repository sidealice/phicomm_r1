.class Lorg/eclipse/paho/client/mqttv3/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lorg/eclipse/paho/client/mqttv3/a/a;

.field b:Ljava/lang/Thread;

.field c:Lorg/eclipse/paho/client/mqttv3/MqttToken;

.field d:Lorg/eclipse/paho/client/mqttv3/a/b/d;

.field final e:Lorg/eclipse/paho/client/mqttv3/a/a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/d;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->b:Ljava/lang/Thread;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->c:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->d:Lorg/eclipse/paho/client/mqttv3/a/b/d;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Con: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v4, 0x0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->q()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "220"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->b()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/i;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->c:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->d:Lorg/eclipse/paho/client/mqttv3/a/b/d;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(Lorg/eclipse/paho/client/mqttv3/a/a;)[Lorg/eclipse/paho/client/mqttv3/a/q;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->c(Lorg/eclipse/paho/client/mqttv3/a/a;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/a/q;->a()V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/a/g;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/a/a;->d(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/e;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/i;

    move-result-object v6

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/a/q;->b()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/a/g;-><init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/e;Lorg/eclipse/paho/client/mqttv3/a/i;Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/g;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->e(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "MQTT Rec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/a/h;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->a:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/a/a;->d(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/e;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/i;

    move-result-object v6

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/a/q;->c()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v3, v5, v6, v0}, Lorg/eclipse/paho/client/mqttv3/a/h;-><init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/e;Lorg/eclipse/paho/client/mqttv3/a/i;Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/h;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->f(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Snd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->g(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->d:Lorg/eclipse/paho/client/mqttv3/a/b/d;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->c:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->e:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b;->c:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->q()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "212"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->q()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/a/a;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "209"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(Ljava/lang/Throwable;)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v4

    goto :goto_1
.end method
