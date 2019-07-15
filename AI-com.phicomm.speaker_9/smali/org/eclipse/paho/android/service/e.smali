.class Lorg/eclipse/paho/android/service/e;
.super Lorg/eclipse/paho/android/service/g;
.source "MqttDeliveryTokenAndroid.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/e;


# instance fields
.field private a:Lorg/eclipse/paho/client/mqttv3/p;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;Lorg/eclipse/paho/client/mqttv3/p;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 34
    iput-object p4, p0, Lorg/eclipse/paho/android/service/e;->a:Lorg/eclipse/paho/client/mqttv3/p;

    return-void
.end method


# virtual methods
.method public a()Lorg/eclipse/paho/client/mqttv3/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->a:Lorg/eclipse/paho/client/mqttv3/p;

    return-object v0
.end method
