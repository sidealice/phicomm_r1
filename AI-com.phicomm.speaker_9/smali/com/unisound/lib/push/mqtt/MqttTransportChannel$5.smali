.class Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->registerMsgCenter()V
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

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$700(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lorg/eclipse/paho/client/mqttv3/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$700(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lorg/eclipse/paho/client/mqttv3/h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MqttTransportChannel"

    const-string v1, "connect is already connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query mqtt connection info, params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v2}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;

    invoke-direct {v0}, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;-><init>()V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;->setAppKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;->setAppSecret(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getTcDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;->setTcDeviceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;->setToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;->setUdid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getAppOsType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/RegisterParam;->setAppOsType(I)V

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttMsgHelper;->registerMqtt(Lcom/unisound/lib/push/mqtt/bean/RegisterParam;)Lcom/unisound/lib/push/mqtt/bean/MqttMessage;

    move-result-object v0

    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqtt connection info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->getConnection()Lcom/unisound/lib/push/mqtt/bean/MqttConnection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->getClientId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v3}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v3

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttConnection;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->setUserName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v3}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v3

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttConnection;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->setPassWord(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v3}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->setClientId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v3}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v5}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$900(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v3, v1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->setSubscribe([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v4}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$1000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->setPublish(Ljava/lang/String;)V

    invoke-static {}, Lcom/unisound/lib/push/constant/NetConstantSwitch;->isOuter()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttConnection;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttConnection;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttConnection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttConnection;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "211.102.192.39:1883"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->setConnectUrl(Ljava/lang/String;)V

    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/d;

    invoke-direct {v2}, Lcom/google/gson/d;-><init>()V

    iget-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v3}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$100(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v3}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$100(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->getReturnCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uc_0106"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0, v1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$402(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;Z)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$100(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method
