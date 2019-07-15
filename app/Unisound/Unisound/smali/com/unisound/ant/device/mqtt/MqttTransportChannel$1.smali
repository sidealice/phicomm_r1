.class Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;
.super Ljava/lang/Object;
.source "MqttTransportChannel.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    iput-object p2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "iMqttToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;->val$data:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 2
    .param p1, "iMqttToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .prologue
    .line 161
    const-string v0, "MqttTransportChannel"

    const-string v1, "sendMessage Success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
