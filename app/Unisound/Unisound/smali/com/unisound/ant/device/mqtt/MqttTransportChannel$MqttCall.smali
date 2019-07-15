.class Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;
.super Ljava/lang/Object;
.source "MqttTransportChannel.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MqttCall"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;


# direct methods
.method private constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p2, "x1"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    return-void
.end method


# virtual methods
.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 398
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionLost cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$500(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceOnlineState(Landroid/content/Context;Z)V

    .line 400
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$300(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
    .locals 3
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    .prologue
    .line 414
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliveryComplete clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 415
    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;->getTopics()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .prologue
    .line 405
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 406
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "MqttTransportChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageArrived topic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, "content":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 409
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-static {v2}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$300(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void
.end method
