.class public Lcom/unisound/lib/push/mqtt/MqttTransportChannel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/push/mqtt/MqttTransportChannel$MqttCall;
    }
.end annotation


# static fields
.field private static final MQTT_CONNECT_FAIL:I = -0x1

.field private static final MQTT_CONNECT_PREPARED:I = 0x0

.field private static final MQTT_CONNECT_SUCCESS:I = 0x1

.field private static final MQTT_RECEIVED_MSG:I = 0x5

.field private static final MQTT_RECEIVED_UNREAD_MSG:I = 0x6

.field private static final MQTT_RECONNECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MqttTransportChannel"

.field public static WEB_URL:Ljava/lang/String; = "http://msg-pandora.hivoice.cn"


# instance fields
.field private basePublish:Ljava/lang/String;

.field private baseSubscribe:Ljava/lang/String;

.field private channelExtraListener:Lcom/unisound/lib/push/bean/ChannelExtraListener;

.field private channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

.field private client:Lorg/eclipse/paho/client/mqttv3/h;

.field private connectHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private isStop:Z

.field protected listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

.field private mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

.field private taskHandler:Landroid/os/Handler;

.field private taskThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "s2c/msg/"

    iput-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->baseSubscribe:Ljava/lang/String;

    const-string v0, "c2s/msg/"

    iput-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->basePublish:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->isStop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;
    .locals 0

    iget-object p0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    return-object p0
.end method

.method static synthetic access$100(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->basePublish:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connectMqtt()V

    return-void
.end method

.method static synthetic access$400(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->isStop:Z

    return p0
.end method

.method static synthetic access$402(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->isStop:Z

    return p1
.end method

.method static synthetic access$500(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connect(Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->subscriber()V

    return-void
.end method

.method static synthetic access$700(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lorg/eclipse/paho/client/mqttv3/h;
    .locals 0

    iget-object p0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    return-object p0
.end method

.method static synthetic access$800(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;
    .locals 0

    iget-object p0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    return-object p0
.end method

.method static synthetic access$900(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->baseSubscribe:Ljava/lang/String;

    return-object p0
.end method

.method private connect(Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;)Z
    .locals 7

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MqttTransportChannel"

    const-string v0, "mqtt\u5df2\u7ecf\u8fde\u63a5"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getConnectUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getClientId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;)V

    iput-object v3, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect thread---->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/n;

    invoke-direct {v3}, Lorg/eclipse/paho/client/mqttv3/n;-><init>()V

    invoke-virtual {v3, v2}, Lorg/eclipse/paho/client/mqttv3/n;->b(Z)V

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/n;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getPassWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/n;->a([C)V

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/n;->c(I)V

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/n;->b(I)V

    iget-object v4, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    new-instance v5, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$MqttCall;

    invoke-direct {v5, p0, v6}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$MqttCall;-><init>(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;)V

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/h;->a(Lorg/eclipse/paho/client/mqttv3/k;)V

    :try_start_1
    const-string v4, "MqttTransportChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mqtt connecting, params = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {p1, v3}, Lorg/eclipse/paho/client/mqttv3/h;->a(Lorg/eclipse/paho/client/mqttv3/n;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/g;->b()V
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v1, "MqttTransportChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->isStop:Z

    :goto_0
    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v2

    :catch_1
    move-exception p1

    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MqttSecurityException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->isStop:Z

    invoke-virtual {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->closeChannel()V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v1, "MqttTransportChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fde\u63a5mqtt\u51fa\u9519 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private connectMqtt()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    invoke-direct {p0, v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connect(Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->subscriber()V

    return-void

    :cond_0
    const-string v0, "MqttTransportChannel"

    const-string v1, "start connect mqttServer is fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createChannel(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "MqttTransportChannel"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance p1, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    invoke-direct {p1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;-><init>()V

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    return-void
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private reconnect()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;

    invoke-direct {v1, p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$4;-><init>(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerMsgCenter()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;

    invoke-direct {v1, p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$5;-><init>(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendMessage(Ljava/lang/String;[B)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/eclipse/paho/client/mqttv3/h;->a(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/client/mqttv3/e;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "MqttTransportChannel"

    const-string p2, "not connected, reconnect to server"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MqttTransportChannel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private sendOnlineMessage(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    if-nez v0, :cond_0

    const-string p1, "MqttTransportChannel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendOnlineMessage mqttParam:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;

    invoke-direct {v0}, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;-><init>()V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->setClientId(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->setEventType(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;

    invoke-direct {p1}, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;-><init>()V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->setUdid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->setAppKey(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->setPassportId(J)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->setSubsystemId(I)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->setExtras(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->setClientInfo(Lcom/unisound/lib/push/mqtt/bean/ClientInfo;)V

    new-instance p1, Lcom/google/gson/d;

    invoke-direct {p1}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V

    return-void
.end method

.method private startConnect()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$2;

    invoke-direct {v1, p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$2;-><init>(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private subscriber()V
    .locals 5

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    invoke-virtual {v0}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getSubscribe()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->subscriber([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/g;

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public closeChannel()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->disconnect()Lorg/eclipse/paho/client/mqttv3/g;

    return-void
.end method

.method public connenctWhenForground()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->isStop:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unisound/lib/push/constant/MqttConstant;->setAutoReconnectMqtt(Z)V

    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connenctWhenForground mqttParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$3;

    invoke-direct {v1, p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$3;-><init>(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public createChannel(Landroid/content/Context;Lcom/unisound/lib/push/mqtt/bean/ChannelParams;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->isStop:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unisound/lib/push/constant/MqttConstant;->setAutoReconnectMqtt(Z)V

    invoke-virtual {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->closeChannel()V

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->createChannel(Landroid/content/Context;)V

    if-nez p2, :cond_0

    const-string p1, "MqttTransportChannel"

    const-string p2, "createChannel param is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p2, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->registerMsgCenter()V

    return-void
.end method

.method public disconnect()Lorg/eclipse/paho/client/mqttv3/g;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MqttTransportChannel"

    const-string v1, "client disconnect mqtt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/h;->a()Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelExtraListener:Lcom/unisound/lib/push/bean/ChannelExtraListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelExtraListener:Lcom/unisound/lib/push/bean/ChannelExtraListener;

    const-string v1, "history"

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/push/bean/ChannelExtraListener;->onAutoReceivedMessage(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->receivedData(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->reconnect()V

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->sendOnlineMessage(Z)V

    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    invoke-interface {p1}, Lcom/unisound/lib/push/mqtt/ChannelListener;->onChannelConnected()V

    :cond_0
    const-string p1, "MqttTransportChannel"

    const-string v0, "mqtt conenct is Success"

    goto :goto_0

    :pswitch_5
    const-string p1, "MqttTransportChannel"

    const-string v0, "start conenct mqtt Server"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->startConnect()V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    invoke-interface {p1}, Lcom/unisound/lib/push/mqtt/ChannelListener;->onChannelConnectFail()V

    :cond_1
    const-string p1, "MqttTransportChannel"

    const-string v0, "mqtt conenct is fail"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pullUnreadMessage(Lcom/unisound/lib/push/bean/ChannelExtraListener;)V
    .locals 1

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelExtraListener:Lcom/unisound/lib/push/bean/ChannelExtraListener;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;

    invoke-direct {v0, p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel$1;-><init>(Lcom/unisound/lib/push/mqtt/MqttTransportChannel;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public receivedData(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receivedData message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uc_9002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    const-string v0, "uc_9002"

    :goto_0
    invoke-interface {p1, v1, v0}, Lcom/unisound/lib/push/mqtt/ChannelListener;->onReceivedMsg(ILjava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "uc_9001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    const-string v0, "uc_9001"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/gson/d;

    invoke-direct {v1}, Lcom/google/gson/d;-><init>()V

    const-class v2, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_1
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/push/mqtt/ChannelListener;->onReceivedMsg(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public sendData(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unisound/lib/push/mqtt/bean/ReportMessage;

    invoke-direct {v0}, Lcom/unisound/lib/push/mqtt/bean/ReportMessage;-><init>()V

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/ReportMessage;->setToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/mqtt/bean/ReportMessage;->setMsg(Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/d;

    invoke-direct {p1}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;

    invoke-virtual {v0}, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->getPublish()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendData, topic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->sendMessage(Ljava/lang/String;[B)Lorg/eclipse/paho/client/mqttv3/g;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    if-nez p1, :cond_1

    const-string p1, "MqttTransportChannel"

    const-string v0, "sendData error : channelParams == null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "MqttTransportChannel"

    const-string v0, "sendData error : mqttParam == null, reconnecting mqtt"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->registerMsgCenter()V

    return-void
.end method

.method public setChannelListener(Lcom/unisound/lib/push/mqtt/ChannelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->listener:Lcom/unisound/lib/push/mqtt/ChannelListener;

    return-void
.end method

.method public subscriber([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    if-eqz v0, :cond_0

    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqtt subscriber topics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public unSubscriber([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/g;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    if-eqz v0, :cond_0

    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqtt unSubscriber topics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/h;->a([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "MqttTransportChannel"

    const-string v1, "unSubscriber error : "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
