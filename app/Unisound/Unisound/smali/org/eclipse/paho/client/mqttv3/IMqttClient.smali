.class public interface abstract Lorg/eclipse/paho/client/mqttv3/IMqttClient;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect()V
.end method

.method public abstract connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V
.end method

.method public abstract connectWithResult(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract disconnect()V
.end method

.method public abstract disconnect(J)V
.end method

.method public abstract disconnectForcibly()V
.end method

.method public abstract disconnectForcibly(J)V
.end method

.method public abstract disconnectForcibly(JJ)V
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
.end method

.method public abstract getServerURI()Ljava/lang/String;
.end method

.method public abstract getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
.end method

.method public abstract publish(Ljava/lang/String;[BIZ)V
.end method

.method public abstract setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
.end method

.method public abstract subscribe(Ljava/lang/String;)V
.end method

.method public abstract subscribe(Ljava/lang/String;I)V
.end method

.method public abstract subscribe([Ljava/lang/String;)V
.end method

.method public abstract subscribe([Ljava/lang/String;[I)V
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
.end method

.method public abstract unsubscribe([Ljava/lang/String;)V
.end method
