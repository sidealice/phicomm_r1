.class public final Lcom/unisound/lib/push/CommonPushManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/lib/push/intf/IMsgCallBack;
.implements Lcom/unisound/lib/push/mqtt/ChannelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/push/CommonPushManager$PushInstance;
    }
.end annotation


# static fields
.field private static final BRAND_HUAWEI:I = 0x2

.field private static final BRAND_MI:I = 0x1

.field private static final BRAND_OTHER:I = 0x0

.field public static final HUAWEI:Ljava/lang/String; = "HUAWEI"

.field public static final PROTOCOL_MQTT:Ljava/lang/String; = "Mqtt"

.field private static final REQUEST_LAST_TIME:Ljava/lang/String; = "last_request"

.field private static final REQUEST_TIME:Ljava/lang/String; = "request_time"

.field private static final TAG:Ljava/lang/String; = "CommonPushManager"

.field public static final XIAOMI:Ljava/lang/String; = "Xiaomi"


# instance fields
.field private channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

.field private context:Landroid/content/Context;

.field private hwPushClient:Lcom/unisound/lib/push/hms/HwPushClient;

.field private volatile isCreatingChannel:Z

.field private listener:Lcom/unisound/lib/push/intf/IpushListener;

.field private mHandler:Landroid/os/Handler;

.field private miMsgPushClient:Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;

.field private mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

.field private totalTime:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-direct {v0}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/CommonPushManager;->isCreatingChannel:Z

    iput v0, p0, Lcom/unisound/lib/push/CommonPushManager;->totalTime:I

    new-instance v0, Lcom/unisound/lib/push/CommonPushManager$1;

    invoke-direct {v0, p0}, Lcom/unisound/lib/push/CommonPushManager$1;-><init>(Lcom/unisound/lib/push/CommonPushManager;)V

    iput-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-direct {v0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-virtual {v0, p0}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->setChannelListener(Lcom/unisound/lib/push/mqtt/ChannelListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/push/CommonPushManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/lib/push/CommonPushManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/lib/push/CommonPushManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/CommonPushManager;->initMiMsg(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unisound/lib/push/CommonPushManager;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;
    .locals 0

    iget-object p0, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unisound/lib/push/CommonPushManager;Lcom/unisound/lib/push/mqtt/bean/ChannelParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/CommonPushManager;->initMqttChannel(Lcom/unisound/lib/push/mqtt/bean/ChannelParams;)V

    return-void
.end method

.method private addRequestTime()V
    .locals 4

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->context:Landroid/content/Context;

    const-string v1, "request_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private checkBrand()I
    .locals 4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "CommonPushManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBrand brand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HUAWEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private connectUnisoundMqtt()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/unisound/lib/push/CommonPushManager$3;

    invoke-direct {v1, p0}, Lcom/unisound/lib/push/CommonPushManager$3;-><init>(Lcom/unisound/lib/push/CommonPushManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/push/CommonPushManager;
    .locals 1

    sget-object v0, Lcom/unisound/lib/push/CommonPushManager$PushInstance;->instance:Lcom/unisound/lib/push/CommonPushManager;

    return-object v0
.end method

.method private initMiMsg(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/lib/push/CommonPushManager;->addRequestTime()V

    new-instance v0, Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;

    invoke-direct {v0}, Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->miMsgPushClient:Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->miMsgPushClient:Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;

    invoke-virtual {v0, p1, p0}, Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;->initMiMessagePush(Landroid/content/Context;Lcom/unisound/lib/push/intf/IMsgCallBack;)V

    return-void
.end method

.method private initMqttChannel(Lcom/unisound/lib/push/mqtt/bean/ChannelParams;)V
    .locals 3

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMqttChannel thread---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "CommonPushManager"

    const-string v0, "initMqttChannel has exception param is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMqttChannel param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->isUserLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    iget-object v1, p0, Lcom/unisound/lib/push/CommonPushManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->createChannel(Landroid/content/Context;Lcom/unisound/lib/push/mqtt/bean/ChannelParams;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->connenctWhenForground()V

    return-void
.end method

.method private isShouldSendRequest()Z
    .locals 13

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->context:Landroid/content/Context;

    const-string v1, "request_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CommonPushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "last_request"

    const-wide/16 v7, -0x1

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sub-long v11, v4, v9

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "last_request"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v5, v3, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0x1388

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setChannelParams(Lcom/unisound/lib/push/bean/PushParam;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {p1}, Lcom/unisound/lib/push/bean/PushParam;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setAppKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {p1}, Lcom/unisound/lib/push/bean/PushParam;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setAppSecret(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {p1}, Lcom/unisound/lib/push/bean/PushParam;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {p1}, Lcom/unisound/lib/push/bean/PushParam;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setUdid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-virtual {p1}, Lcom/unisound/lib/push/bean/PushParam;->isUserLogin()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setUserLogin(Z)V

    return-void
.end method

.method private shouldInit(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private shouldWaitTime()I
    .locals 7

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->context:Landroid/content/Context;

    const-string v1, "request_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_request"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long v4, v2, v0

    long-to-int v0, v4

    iget v1, p0, Lcom/unisound/lib/push/CommonPushManager;->totalTime:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/unisound/lib/push/CommonPushManager;->totalTime:I

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisound/lib/push/CommonPushManager;->totalTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/unisound/lib/push/CommonPushManager;->totalTime:I

    return v0
.end method


# virtual methods
.method public initPushClient(Landroid/content/Context;Lcom/unisound/lib/push/bean/PushParam;)V
    .locals 3

    iput-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/unisound/lib/push/CommonPushManager;->setChannelParams(Lcom/unisound/lib/push/bean/PushParam;)V

    invoke-direct {p0}, Lcom/unisound/lib/push/CommonPushManager;->checkBrand()I

    move-result p2

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPushClient brand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/unisound/lib/push/hms/HwPushClient;

    invoke-direct {p2}, Lcom/unisound/lib/push/hms/HwPushClient;-><init>()V

    iput-object p2, p0, Lcom/unisound/lib/push/CommonPushManager;->hwPushClient:Lcom/unisound/lib/push/hms/HwPushClient;

    iget-object p2, p0, Lcom/unisound/lib/push/CommonPushManager;->hwPushClient:Lcom/unisound/lib/push/hms/HwPushClient;

    invoke-virtual {p2, p1, p0}, Lcom/unisound/lib/push/hms/HwPushClient;->initHwPush(Landroid/content/Context;Lcom/unisound/lib/push/intf/IMsgCallBack;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/CommonPushManager;->shouldInit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/CommonPushManager;->initMiMsg(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/unisound/lib/push/CommonPushManager;->isShouldSendRequest()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "CommonPushManager"

    const-string v0, "not delay"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/CommonPushManager;->initMiMsg(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/unisound/lib/push/CommonPushManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/unisound/lib/push/CommonPushManager$2;

    invoke-direct {v0, p0, p1}, Lcom/unisound/lib/push/CommonPushManager$2;-><init>(Lcom/unisound/lib/push/CommonPushManager;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/unisound/lib/push/CommonPushManager;->shouldWaitTime()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    invoke-direct {p0, p1}, Lcom/unisound/lib/push/CommonPushManager;->initMqttChannel(Lcom/unisound/lib/push/mqtt/bean/ChannelParams;)V

    :cond_3
    return-void
.end method

.method public onChannelConnectFail()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/CommonPushManager;->isCreatingChannel:Z

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    invoke-interface {v0}, Lcom/unisound/lib/push/intf/IpushListener;->onChannelConnectFailed()V

    :cond_0
    return-void
.end method

.method public onChannelConnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/CommonPushManager;->isCreatingChannel:Z

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    invoke-interface {v0}, Lcom/unisound/lib/push/intf/IpushListener;->onChannelConnected()V

    :cond_0
    return-void
.end method

.method public onChannelDisConnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/CommonPushManager;->isCreatingChannel:Z

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    invoke-interface {v0}, Lcom/unisound/lib/push/intf/IpushListener;->onChannelDisConnected()V

    :cond_0
    return-void
.end method

.method public onReceivedMsg(ILjava/lang/String;)V
    .locals 3

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state=>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "====onReceivedMsg registerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Mqtt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    const-string v0, "Mqtt"

    invoke-interface {p1, v0, p2}, Lcom/unisound/lib/push/intf/IpushListener;->onReceivedMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-virtual {p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->disconnect()Lorg/eclipse/paho/client/mqttv3/g;

    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    invoke-interface {p1, p2}, Lcom/unisound/lib/push/intf/IpushListener;->onOtherDevicesPicked(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceiverPusMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiverPusMsg registerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    invoke-interface {v0, p1, p2}, Lcom/unisound/lib/push/intf/IpushListener;->onReceivedMsg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRegisterFail(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/CommonPushManager;->isCreatingChannel:Z

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegisterFail registerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",errorCode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unisound/lib/push/CommonPushManager;->connectUnisoundMqtt()V

    return-void
.end method

.method public onRegisterSuc(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegisterSuc registerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Xiaomi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setTcDeviceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setAppOsType(I)V

    goto :goto_1

    :cond_0
    const-string v0, "HUAWEI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->setTcDeviceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->channelParams:Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/unisound/lib/push/CommonPushManager;->connectUnisoundMqtt()V

    return-void
.end method

.method public pullUnreadMessage(Lcom/unisound/lib/push/bean/ChannelExtraListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->pullUnreadMessage(Lcom/unisound/lib/push/bean/ChannelExtraListener;)V

    :cond_0
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->mqttTransportChannel:Lcom/unisound/lib/push/mqtt/MqttTransportChannel;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/unisound/lib/push/intf/IpushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/CommonPushManager;->listener:Lcom/unisound/lib/push/intf/IpushListener;

    return-void
.end method

.method public unInitPushClient(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->hwPushClient:Lcom/unisound/lib/push/hms/HwPushClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->hwPushClient:Lcom/unisound/lib/push/hms/HwPushClient;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/hms/HwPushClient;->unInitHwPush(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->miMsgPushClient:Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager;->miMsgPushClient:Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/xiaomi/MiMsgPushClient;->unRegisterPush(Landroid/content/Context;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/lib/push/CommonPushManager;->isCreatingChannel:Z

    return-void
.end method
