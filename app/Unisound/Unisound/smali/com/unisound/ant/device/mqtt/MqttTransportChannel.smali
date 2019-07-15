.class public Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
.super Lcom/unisound/ant/device/mqtt/BaseTransportChannel;
.source "MqttTransportChannel.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;,
        Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;
    }
.end annotation


# static fields
.field private static final DEFAULT_REGISTER_DELAYED:I = 0x12c

.field private static final INNER_ADDR:Ljava/lang/String; = "://211.102.192.39:1883"

.field private static final MQTT_CONNECT_PREPARED:I = 0x0

.field private static final MQTT_CONNECT_SUCCESS:I = 0x1

.field private static final MQTT_RECEIVED_MSG:I = 0x5

.field private static final MQTT_RECONNECT:I = 0x2

.field private static final MQTT_REGISTER_OK:Ljava/lang/String; = "mc_0008"

.field private static final MQTT_SEND_PARAM:I = 0x6

.field private static final SP_NAME_FAILED_MESSAGES:Ljava/lang/String; = "failed_msg"

.field private static final TAG:Ljava/lang/String; = "MqttTransportChannel"

.field private static basePublish:Ljava/lang/String;

.field private static baseSubscribe:Ljava/lang/String;

.field private static channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

.field public static mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;


# instance fields
.field private client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field private connectHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private mConnecting:Z

.field private mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

.field private mRunnable:Ljava/lang/Runnable;

.field private mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

.field private registerTimes:I

.field private regitstMqttErrorCode:Ljava/lang/String;

.field private taskHandler:Landroid/os/Handler;

.field private taskThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "s2c/msg/"

    sput-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->baseSubscribe:Ljava/lang/String;

    .line 53
    const-string v0, "c2s/msg/"

    sput-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->basePublish:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/BaseTransportChannel;-><init>()V

    .line 71
    iput v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    .line 81
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    .line 518
    new-instance v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$4;

    invoke-direct {v0, p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$4;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    .line 90
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    const-string v1, "failed_msg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->cacheFailedMessage(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p1, "x1"    # Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connect(Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->onConnectFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    return v0
.end method

.method static synthetic access$602(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerMqtt()V

    return-void
.end method

.method static synthetic access$800(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->openConectMqttTask()V

    return-void
.end method

.method private cacheFailedMessage(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 343
    const-string v1, "MqttTransportChannel"

    const-string v2, "cacheFailedMessage"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->getMessageType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "type":Ljava/lang/String;
    const-string v1, "synInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    :cond_0
    return-void
.end method

.method private connect(Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z
    .locals 11
    .param p1, "param"    # Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x1e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v5, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    :goto_0
    return v3

    .line 223
    :cond_0
    :try_start_0
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getConnectUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getClientid()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v5, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    .line 235
    .local v2, "options":Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    invoke-virtual {v2, v4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 236
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setUserName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getPassWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setPassword([C)V

    .line 239
    invoke-virtual {v2, v9}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 241
    invoke-virtual {v2, v9}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    .line 242
    iget-object v5, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    new-instance v6, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;

    invoke-direct {v6, p0, v10}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;)V

    invoke-virtual {v5, v6}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 244
    :try_start_1
    const-string v5, "MqttTransportChannel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mqtt connecting, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v5, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v1

    .line 246
    .local v1, "mqttToken":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 248
    .end local v1    # "mqttToken":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v3, :cond_1

    .line 250
    iput-boolean v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 252
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->queryMqttParamsAndConnect()V

    .line 253
    const-string v5, "MqttTransportChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect failure, errorCode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v3, v0

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    const-string v3, "MqttTransportChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8fde\u63a5mqtt\u51fa\u9519 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 256
    goto/16 :goto_0

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "options":Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    :catch_1
    move-exception v0

    .line 225
    .restart local v0    # "e":Ljava/lang/Exception;
    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v3, :cond_2

    .line 226
    iput-boolean v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 228
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->queryMqttParamsAndConnect()V

    .line 229
    const-string v5, "MqttTransportChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect failure, errorCode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v3, v0

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    const-string v3, "MqttTransportChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8fde\u63a5mqtt\u51fa\u9519 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 232
    goto/16 :goto_0
.end method

.method private connectPrepared(Lcom/unisound/ant/device/mqtt/bean/MqttMessage;)V
    .locals 8
    .param p1, "result"    # Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    .prologue
    const/4 v7, 0x0

    .line 564
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 565
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->getConnection()Lcom/unisound/ant/device/mqtt/bean/MqttConnection;

    move-result-object v2

    .line 566
    .local v2, "connectionInfo":Lcom/unisound/ant/device/mqtt/bean/MqttConnection;
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "cliecntId":Ljava/lang/String;
    new-instance v3, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-direct {v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;-><init>()V

    sput-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    .line 568
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v2}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setUserName(Ljava/lang/String;)V

    .line 569
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v2}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setPassWord(Ljava/lang/String;)V

    .line 570
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v3, v0}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setClientid(Ljava/lang/String;)V

    .line 571
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->baseSubscribe:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setSubscribe([Ljava/lang/String;)V

    .line 572
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->basePublish:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setPublish(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v2}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->setEnvironmentParam(Lcom/unisound/ant/device/mqtt/bean/MqttConnection;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "connectUrl":Ljava/lang/String;
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v3, v1}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setConnectUrl(Ljava/lang/String;)V

    .line 576
    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    sget-object v6, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 578
    return-void
.end method

.method private getMessageType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 182
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 184
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    const-class v3, Lcom/unisound/ant/device/service/BaseRequest;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/service/BaseRequest;

    .line 185
    .local v0, "baseRequest":Lcom/unisound/ant/device/service/BaseRequest;
    invoke-virtual {v0}, Lcom/unisound/ant/device/service/BaseRequest;->getMessageType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 190
    .end local v0    # "baseRequest":Lcom/unisound/ant/device/service/BaseRequest;
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MqttTransportChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageType, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onConnectFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "regitstMqttErrorCode"    # Ljava/lang/String;

    .prologue
    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 557
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;->onFail(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method private onConnectSuccess()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 547
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    invoke-interface {v0}, Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;->onSuccess()V

    .line 550
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->resendFailedMessages()V

    .line 552
    return-void
.end method

.method private openConectMqttTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 528
    iget v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    .line 529
    iget v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 530
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openConectMqttTask, registerTimes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->cancel(Z)Z

    .line 533
    iput-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    .line 535
    :cond_0
    new-instance v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    invoke-direct {v0, p0, v3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    .line 536
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 542
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->regitstMqttErrorCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->onConnectFailure(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 540
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt\u6ce8\u518c\u5931\u8d25\u8d85\u51fa\u9650\u5236\uff0c\u4e0d\u518d\u91cd\u590d\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryMqttParamsAndConnect()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "MqttTransportChannel"

    const-string v3, "mqtt is connected"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-boolean v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "MqttTransportChannel"

    const-string v3, "mqtt is connecting"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 131
    const/4 v2, 0x0

    iput v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    .line 132
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->setRegisterParam()Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    move-result-object v1

    .line 133
    .local v1, "registerParam":Lcom/unisound/ant/device/mqtt/bean/RegisterParam;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "message":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 136
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private reconnect()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;

    invoke-direct {v1, p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method private registerMqtt()V
    .locals 6

    .prologue
    .line 442
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    invoke-static {v1}, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->registerMqtt(Lcom/unisound/ant/device/mqtt/bean/RegisterParam;)Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    move-result-object v0

    .line 443
    .local v0, "result":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqtt connection info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectPrepared(Lcom/unisound/ant/device/mqtt/bean/MqttMessage;)V

    .line 450
    :goto_0
    return-void

    .line 447
    :cond_0
    if-nez v0, :cond_1

    const-string v1, "mc_9999"

    :goto_1
    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->regitstMqttErrorCode:Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getReturnCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private resendFailedMessages()V
    .locals 7

    .prologue
    .line 351
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 352
    .local v1, "failedMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resendFailedMessages, size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 355
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 357
    const-string v4, "MqttTransportChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resend ----> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 363
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private sendMessage(Ljava/lang/String;[BLorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 9
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # [B
    .param p3, "listener"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .prologue
    const/4 v8, 0x0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt\u672a\u8fde\u63a5,\u91cd\u65b0\u8fde\u63a5mqtt"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "mqtt is not connected"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0, v1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    .line 334
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v8

    .line 339
    goto :goto_0

    .line 336
    :catch_0
    move-exception v7

    .line 337
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private sendOnlineMessage(Z)V
    .locals 6
    .param p1, "isOnline"    # Z

    .prologue
    .line 469
    new-instance v1, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;

    invoke-direct {v1}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;-><init>()V

    .line 470
    .local v1, "message":Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getClientid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setClientId(Ljava/lang/String;)V

    .line 471
    if-eqz p1, :cond_0

    .line 472
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setEventType(I)V

    .line 476
    :goto_0
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;-><init>()V

    .line 477
    .local v0, "info":Lcom/unisound/ant/device/mqtt/bean/ClientInfo;
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getUdid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setUdid(Ljava/lang/String;)V

    .line 478
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setAppKey(Ljava/lang/String;)V

    .line 479
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setPassportId(J)V

    .line 480
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setSubsystemId(I)V

    .line 481
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setExtras(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setClientInfo(Lcom/unisound/ant/device/mqtt/bean/ClientInfo;)V

    .line 483
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "onlineMsg":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V

    .line 485
    return-void

    .line 474
    .end local v0    # "info":Lcom/unisound/ant/device/mqtt/bean/ClientInfo;
    .end local v2    # "onlineMsg":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setEventType(I)V

    goto :goto_0
.end method

.method private setEnvironmentParam(Lcom/unisound/ant/device/mqtt/bean/MqttConnection;)Ljava/lang/String;
    .locals 3
    .param p1, "connectionInfo"    # Lcom/unisound/ant/device/mqtt/bean/MqttConnection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 581
    const-string v0, ""

    .line 582
    .local v0, "connectUrl":Ljava/lang/String;
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://211.102.192.39:1883"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_0
    return-object v0

    .line 585
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setRegisterParam()Lcom/unisound/ant/device/mqtt/bean/RegisterParam;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 453
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query mqtt connection info, params = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;-><init>()V

    .line 455
    .local v0, "registerParam":Lcom/unisound/ant/device/mqtt/bean/RegisterParam;
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setAppKey(Ljava/lang/String;)V

    .line 456
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setAppSecret(Ljava/lang/String;)V

    .line 458
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getTcDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setTcDeviceId(Ljava/lang/String;)V

    .line 459
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setToken(Ljava/lang/String;)V

    .line 461
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setUdid(Ljava/lang/String;)V

    .line 462
    return-object v0
.end method

.method private startConnect()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;

    invoke-direct {v1, p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method


# virtual methods
.method public closeChannel()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 213
    return-void
.end method

.method public createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phicommMQTTStatausChange"    # Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .prologue
    .line 96
    iput-object p2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .line 98
    sget-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MqttTransportChannel"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    .line 103
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->queryMqttParamsAndConnect()V

    .line 115
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "MqttTransportChannel"

    const-string v1, "server info is existed, connect to server directly"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt is connecting"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 112
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->startConnect()V

    goto :goto_0
.end method

.method public createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/bean/ChannelParams;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/unisound/ant/device/mqtt/bean/ChannelParams;
    .param p3, "onMQTTStatusChangeListener"    # Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 142
    const-string v0, "MqttTransportChannel"

    const-string v1, "createChannel param is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    sput-object p2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    .line 146
    invoke-virtual {p0, p1, p3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V

    goto :goto_0
.end method

.method public disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "MqttTransportChannel"

    const-string v2, "client disconnect mqtt"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 488
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 490
    :pswitch_1
    const-string v0, "MqttTransportChannel"

    const-string v1, "start conenct mqtt Server"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->startConnect()V

    goto :goto_0

    .line 494
    :pswitch_2
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceOnlineState(Landroid/content/Context;Z)V

    .line 495
    invoke-direct {p0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendOnlineMessage(Z)V

    .line 496
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    invoke-interface {v0}, Lcom/unisound/ant/device/mqtt/ChannelListener;->onChannelConnected()V

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->onConnectSuccess()V

    .line 500
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt conenct is Success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->receivedData(Ljava/lang/Object;)V

    goto :goto_0

    .line 506
    :pswitch_4
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->reconnect()V

    goto :goto_0

    .line 509
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    .line 510
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public receivedData(Ljava/lang/Object;)V
    .locals 7
    .param p1, "receivedMsg"    # Ljava/lang/Object;

    .prologue
    .line 195
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "msg":Ljava/lang/String;
    const-string v4, "MqttTransportChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receivedData message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v3, 0x0

    .line 202
    .local v3, "responseMsg":Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;
    :try_start_0
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    iget-object v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 207
    iget-object v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/unisound/ant/device/mqtt/ChannelListener;->onReceivedMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendData(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 150
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    if-eqz v3, :cond_0

    .line 151
    new-instance v1, Lcom/unisound/ant/device/mqtt/bean/ReportMessage;

    invoke-direct {v1}, Lcom/unisound/ant/device/mqtt/bean/ReportMessage;-><init>()V

    .line 152
    .local v1, "message":Lcom/unisound/ant/device/mqtt/bean/ReportMessage;
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/unisound/ant/device/mqtt/bean/ReportMessage;->setToken(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/unisound/ant/device/mqtt/bean/ReportMessage;->setMsg(Ljava/lang/String;)V

    .line 154
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "content":Ljava/lang/String;
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getPublish()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "topic":Ljava/lang/String;
    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendData, topic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    new-instance v4, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;

    invoke-direct {v4, p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v4}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendMessage(Ljava/lang/String;[BLorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 179
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "message":Lcom/unisound/ant/device/mqtt/bean/ReportMessage;
    .end local v2    # "topic":Ljava/lang/String;
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    if-nez v3, :cond_1

    .line 171
    const-string v3, "MqttTransportChannel"

    const-string v4, "sendData error : channelParams == null"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->cacheFailedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_1
    const-string v3, "MqttTransportChannel"

    const-string v4, "sendData error : mqttParam == null, reconnecting mqtt"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->cacheFailedMessage(Ljava/lang/Object;)V

    .line 177
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->queryMqttParamsAndConnect()V

    goto :goto_0
.end method

.method public subscriber([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 4
    .param p1, "topics"    # [Ljava/lang/String;
    .param p2, "qos"    # [I

    .prologue
    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqtt subscriber topics = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 378
    :goto_0
    return-object v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unSubscriber([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 4
    .param p1, "topics"    # [Ljava/lang/String;

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqtt unSubscriber topics = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 393
    :goto_0
    return-object v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
