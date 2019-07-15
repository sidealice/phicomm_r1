.class Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;
.super Ljava/lang/Object;
.source "MqttTransportChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->startConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 266
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-static {v2, v3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$200(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z

    move-result v0

    .line 267
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 268
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getSubscribe()[Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->subscriber([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v1

    .line 269
    .local v1, "mqttToken":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-static {v2}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$300(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    .end local v1    # "mqttToken":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v2, "MqttTransportChannel"

    const-string v3, "start connect mqttServer is fail"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    const-string v3, "mc_9999"

    invoke-static {v2, v3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$400(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/String;)V

    goto :goto_0
.end method
