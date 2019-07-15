.class public Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
.super Lorg/eclipse/paho/client/mqttv3/MqttToken;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    return-void
.end method

.method public getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->o()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    return-object v0
.end method
