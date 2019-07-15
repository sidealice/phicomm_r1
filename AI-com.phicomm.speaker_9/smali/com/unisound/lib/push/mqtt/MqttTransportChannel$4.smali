.class Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;


# direct methods
.method constructor <init>(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    invoke-static {}, Lcom/unisound/lib/push/constant/MqttConstant;->isAutoReconnectMqtt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$400(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$500(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$600(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/unisound/lib/push/constant/MqttConstant;->getAutoReconnectInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect mqtt, AutoReconnectMqtt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unisound/lib/push/constant/MqttConstant;->isAutoReconnectMqtt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
