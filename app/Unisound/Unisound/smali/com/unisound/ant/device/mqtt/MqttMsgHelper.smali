.class public Lcom/unisound/ant/device/mqtt/MqttMsgHelper;
.super Ljava/lang/Object;
.source "MqttMsgHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MqttMsgHelper"

.field private static WEB_URL:Ljava/lang/String; = null

.field private static final appOsType:I = 0x1

.field private static signature:Ljava/lang/String; = null

.field public static final subsystemId:I = 0x4

.field private static timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/unisound/ant/device/mqtt/MsgUtil;->getCurrentUnixTimestamp()J

    move-result-wide v0

    sput-wide v0, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->timestamp:J

    .line 31
    const-string v0, "MqttMsgHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMqtt is versionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->sVersionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->getMsgCenterUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->WEB_URL:Ljava/lang/String;

    .line 33
    const-string v0, "MqttMsgHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mqtt address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->WEB_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkClientAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "clientid"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->WEB_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/rest/v1/client/auth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&password="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "param":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, v1}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 136
    :goto_0
    return-object v3

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 136
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static formatParam(Lcom/unisound/ant/device/mqtt/bean/RegisterParam;)Ljava/lang/String;
    .locals 6
    .param p0, "param"    # Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    .prologue
    .line 59
    invoke-static {}, Lcom/unisound/vui/util/TimeUtils;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->timestamp:J

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, "urlParams":Ljava/lang/StringBuffer;
    const-string v1, "appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&udid="

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&subsystemId="

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x4

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&token="

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&tcDeviceId="

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getTcDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&timestamp="

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-wide v2, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->timestamp:J

    .line 72
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&dataVersion="

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getDataVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&signature="

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 76
    invoke-static {p0}, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->getSignature(Lcom/unisound/ant/device/mqtt/bean/RegisterParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&appOsType="

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&extras="

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHistoryMessages(Lcom/unisound/ant/device/mqtt/bean/MessageParam;)Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    .locals 6
    .param p0, "param"    # Lcom/unisound/ant/device/mqtt/bean/MessageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;-><init>()V

    .line 118
    .local v0, "message":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->WEB_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/rest/v1/client/getHistoryMessages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "url":Ljava/lang/String;
    const-string v3, "MqttMsgHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHistoryMessages url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->formateParam()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    check-cast v0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    .line 124
    .restart local v0    # "message":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    :cond_0
    return-object v0
.end method

.method public static getSignature(Lcom/unisound/ant/device/mqtt/bean/RegisterParam;)Ljava/lang/String;
    .locals 6
    .param p0, "param"    # Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v1, "4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getTcDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-wide v2, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->getExtras()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v1, "MqttRegister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lcom/unisound/ant/device/mqtt/MsgUtil;->buildSignature(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->signature:Ljava/lang/String;

    .line 102
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->signature:Ljava/lang/String;

    return-object v1
.end method

.method public static getUnreadMessages(Lcom/unisound/ant/device/mqtt/bean/MessageParam;)Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    .locals 6
    .param p0, "param"    # Lcom/unisound/ant/device/mqtt/bean/MessageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;-><init>()V

    .line 107
    .local v0, "message":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->WEB_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/rest/v1/client/getUnreadMessages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "url":Ljava/lang/String;
    const-string v3, "MqttMsgHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUnreadMessages url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->formateParam()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    check-cast v0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    .line 113
    .restart local v0    # "message":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    :cond_0
    return-object v0
.end method

.method public static registerMqtt(Lcom/unisound/ant/device/mqtt/bean/RegisterParam;)Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    .locals 9
    .param p0, "param"    # Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    .prologue
    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->WEB_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/rest/v1/client/register"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "url":Ljava/lang/String;
    const-string v6, "MqttMsgHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerMqtt registerAdress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v4, 0x0

    .line 40
    .local v4, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 42
    .local v3, "registerResult":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    :try_start_0
    invoke-static {p0}, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->formatParam(Lcom/unisound/ant/device/mqtt/bean/RegisterParam;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "paramString":Ljava/lang/String;
    const-string v6, "MqttMsgHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerMqtt paramString:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v5, v2}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    const-string v6, "MqttMsgHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    invoke-virtual {v6, v4, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v6, v3

    .line 54
    .end local v2    # "paramString":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    const/4 v6, 0x0

    goto :goto_0
.end method
