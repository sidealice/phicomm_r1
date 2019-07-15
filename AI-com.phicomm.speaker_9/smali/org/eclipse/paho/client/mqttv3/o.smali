.class public Lorg/eclipse/paho/client/mqttv3/o;
.super Lorg/eclipse/paho/client/mqttv3/s;
.source "MqttDeliveryToken.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/s;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

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

    .line 47
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/o;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->k()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/p;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/o;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/p;)V

    return-void
.end method
