.class public Lorg/eclipse/paho/client/mqttv3/MqttClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttClient;


# instance fields
.field protected a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field protected b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/b/b;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/b/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->b:J

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    return-void
.end method

.method public static generateClientId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->generateClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->close()V

    return-void
.end method

.method public connect()V
    .locals 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    return-void
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    return-void
.end method

.method public connectWithResult(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    return-object v0
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion()V

    return-void
.end method

.method public disconnect(J)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion()V

    return-void
.end method

.method public disconnectForcibly()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly()V

    return-void
.end method

.method public disconnectForcibly(J)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(J)V

    return-void
.end method

.method public disconnectForcibly(JJ)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(JJ)V

    return-void
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Lorg/eclipse/paho/client/mqttv3/c/a;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getDebug()Lorg/eclipse/paho/client/mqttv3/c/a;

    move-result-object v0

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getServerURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToWait()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->b:J

    return-wide v0
.end method

.method public getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;->waitForCompletion(J)V

    return-void
.end method

.method public publish(Ljava/lang/String;[BIZ)V
    .locals 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    return-void
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    return-void
.end method

.method public setTimeToWait(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->b:J

    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    return-void
.end method

.method public subscribe([Ljava/lang/String;)V
    .locals 3

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    return-void

    :cond_0
    const/4 v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public subscribe([Ljava/lang/String;[I)V
    .locals 5

    const/4 v2, 0x0

    const/16 v4, 0x80

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2, v2, v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getGrantedQos()[I

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    array-length v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget v0, p2, v1

    if-ne v0, v4, :cond_1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v0, v4}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :cond_0
    aget v3, v2, v0

    aput v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->unsubscribe([Ljava/lang/String;)V

    return-void
.end method

.method public unsubscribe([Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->a:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    return-void
.end method
