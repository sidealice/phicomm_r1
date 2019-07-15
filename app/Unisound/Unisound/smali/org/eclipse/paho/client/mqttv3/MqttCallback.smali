.class public interface abstract Lorg/eclipse/paho/client/mqttv3/MqttCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract connectionLost(Ljava/lang/Throwable;)V
.end method

.method public abstract deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
.end method

.method public abstract messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
.end method
