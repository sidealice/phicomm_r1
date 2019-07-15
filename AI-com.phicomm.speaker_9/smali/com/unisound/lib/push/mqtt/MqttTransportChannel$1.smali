.class Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->pullUnreadMessage(Lcom/unisound/lib/push/bean/ChannelExtraListener;)V
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

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v2}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "MqttTransportChannel"

    const-string v3, "pullUnreadMessage mqttParam is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Lcom/unisound/lib/push/mqtt/bean/MessageParam;

    invoke-direct {v2}, Lcom/unisound/lib/push/mqtt/bean/MessageParam;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/unisound/lib/push/mqtt/bean/MessageParam;->setPageNo(I)V

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/unisound/lib/push/mqtt/bean/MessageParam;->setPageSize(I)V

    iget-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v3}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unisound/lib/push/mqtt/bean/MessageParam;->setClientId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MessageParam;->formateParam()Ljava/lang/String;

    invoke-static {v2}, Lcom/unisound/lib/push/mqtt/MqttMsgHelper;->getUnreadMessages(Lcom/unisound/lib/push/mqtt/bean/MessageParam;)Lcom/unisound/lib/push/mqtt/bean/MqttMessage;

    move-result-object v2

    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pullUnreadMessage message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->getList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v1, v3

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$100(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_1
    :try_start_2
    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pullUnreadMessage e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->what:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$100(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->what:I

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;->this$0:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-static {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->access$100(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    throw v2
.end method
