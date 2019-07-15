.class public interface abstract Lorg/eclipse/paho/client/mqttv3/k;
.super Ljava/lang/Object;
.source "MqttCallback.java"


# virtual methods
.method public abstract connectionLost(Ljava/lang/Throwable;)V
.end method

.method public abstract deliveryComplete(Lorg/eclipse/paho/client/mqttv3/e;)V
.end method

.method public abstract messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
