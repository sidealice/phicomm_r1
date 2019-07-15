.class public Lorg/eclipse/paho/client/mqttv3/MqttToken;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttToken;


# instance fields
.field public internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/u;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    return-void
.end method


# virtual methods
.method public getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->g()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object v0

    return-object v0
.end method

.method public getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->m()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public getException()Lorg/eclipse/paho/client/mqttv3/MqttException;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    return-object v0
.end method

.method public getGrantedQos()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->u()[I

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->a()I

    move-result v0

    return v0
.end method

.method public getResponse()Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->w()Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPresent()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->v()Z

    move-result v0

    return v0
.end method

.method public getTopics()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->q()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->r()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->d()Z

    move-result v0

    return v0
.end method

.method public setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public waitForCompletion()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(J)V

    return-void
.end method

.method public waitForCompletion(J)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(J)V

    return-void
.end method
