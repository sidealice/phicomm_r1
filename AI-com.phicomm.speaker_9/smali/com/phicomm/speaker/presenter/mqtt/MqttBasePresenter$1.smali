.class Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter$1;
.super Ljava/lang/Object;
.source "MqttBasePresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter$1;->a:Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageReciver topic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter$1;->a:Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter$1;->a:Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;

    new-instance v1, Lcom/phicomm/speaker/d/a/a;

    invoke-direct {v1, p1, p2}, Lcom/phicomm/speaker/d/a/a;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a(Lcom/phicomm/speaker/d/a/a;)V

    :cond_0
    return-void
.end method
