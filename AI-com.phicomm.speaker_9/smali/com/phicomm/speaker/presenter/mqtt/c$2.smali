.class Lcom/phicomm/speaker/presenter/mqtt/c$2;
.super Ljava/lang/Object;
.source "MqttDeviceStatusHandler.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/c;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/c;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$2;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MqttDeviceStatusHandler"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageArrived topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " message = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$2;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/c;->d(Lcom/phicomm/speaker/presenter/mqtt/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/c$2;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/mqtt/c;->c(Lcom/phicomm/speaker/presenter/mqtt/c;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$2;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/c;->a(Lcom/phicomm/speaker/presenter/mqtt/c;)V

    .line 88
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$2;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/c;->b(Lcom/phicomm/speaker/presenter/mqtt/c;)Lcom/phicomm/speaker/presenter/mqtt/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$2;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/c;->b(Lcom/phicomm/speaker/presenter/mqtt/c;)Lcom/phicomm/speaker/presenter/mqtt/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/presenter/mqtt/c$a;->a()V

    :cond_0
    return-void
.end method
