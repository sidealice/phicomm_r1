.class public interface abstract Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract connect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract disconnect(J)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract disconnect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
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

.method public abstract isConnected()Z
.end method

.method public abstract publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
.end method

.method public abstract publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
.end method

.method public abstract publish(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
.end method

.method public abstract publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
.end method

.method public abstract setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
.end method

.method public abstract subscribe(Ljava/lang/String;I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract unsubscribe(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method

.method public abstract unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
.end method
