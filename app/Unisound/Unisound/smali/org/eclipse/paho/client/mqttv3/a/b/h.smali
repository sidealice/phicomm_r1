.class public abstract Lorg/eclipse/paho/client/mqttv3/a/b/h;
.super Lorg/eclipse/paho/client/mqttv3/a/b/u;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttPersistable;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;-><init>(B)V

    return-void
.end method


# virtual methods
.method public getHeaderBytes()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;->j()[B
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHeaderLength()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;->getHeaderBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getHeaderOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPayloadBytes()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/h;->f()[B
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPayloadLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPayloadOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
