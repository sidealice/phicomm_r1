.class Lorg/eclipse/paho/client/mqttv3/i;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/l;


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/h;

.field private final b:Z


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/h;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/i;->a:Lorg/eclipse/paho/client/mqttv3/h;

    iput-boolean p2, p0, Lorg/eclipse/paho/client/mqttv3/i;->b:Z

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 1

    .line 639
    iget-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/i;->b:Z

    if-eqz p1, :cond_0

    .line 641
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/i;->a:Lorg/eclipse/paho/client/mqttv3/h;

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Z)V

    .line 642
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/i;->a:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-static {p1, v0}, Lorg/eclipse/paho/client/mqttv3/h;->a(Lorg/eclipse/paho/client/mqttv3/h;Z)V

    .line 643
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/i;->a:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/h;->b(Lorg/eclipse/paho/client/mqttv3/h;)V

    :cond_0
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/e;)V
    .locals 0

    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
