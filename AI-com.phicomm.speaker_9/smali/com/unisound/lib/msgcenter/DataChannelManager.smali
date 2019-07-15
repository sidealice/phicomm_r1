.class public Lcom/unisound/lib/msgcenter/DataChannelManager;
.super Ljava/lang/Object;
.source "DataChannelManager.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;
.implements Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;
.implements Lcom/unisound/lib/push/intf/IpushListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataChannelManager"

.field private static dataChannelManager:Lcom/unisound/lib/msgcenter/DataChannelManager;


# instance fields
.field private channelMgrListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/unisound/lib/msgcenter/ChannelMgrListener;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private deviceStateMgr:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

.field private globalEventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

.field private mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/unisound/lib/listener/IMqttStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private netChangeReceiver:Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

.field private sessionLayer:Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->context:Landroid/content/Context;

    .line 41
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->channelMgrListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->initDataChannel()Lcom/unisound/lib/msgcenter/DataChannelManager;

    return-void
.end method

.method private fireChannelResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->channelMgrListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/msgcenter/ChannelMgrListener;

    invoke-interface {v1, p1}, Lcom/unisound/lib/msgcenter/ChannelMgrListener;->onChannelResponseResult(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getDataChannelManager(Landroid/content/Context;)Lcom/unisound/lib/msgcenter/DataChannelManager;
    .locals 2

    .line 52
    sget-object v0, Lcom/unisound/lib/msgcenter/DataChannelManager;->dataChannelManager:Lcom/unisound/lib/msgcenter/DataChannelManager;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/unisound/lib/msgcenter/DataChannelManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/unisound/lib/msgcenter/DataChannelManager;->dataChannelManager:Lcom/unisound/lib/msgcenter/DataChannelManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/unisound/lib/msgcenter/DataChannelManager;

    invoke-direct {v1, p0}, Lcom/unisound/lib/msgcenter/DataChannelManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unisound/lib/msgcenter/DataChannelManager;->dataChannelManager:Lcom/unisound/lib/msgcenter/DataChannelManager;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 59
    :cond_1
    :goto_0
    sget-object p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->dataChannelManager:Lcom/unisound/lib/msgcenter/DataChannelManager;

    return-object p0
.end method

.method private initDataChannel()Lcom/unisound/lib/msgcenter/DataChannelManager;
    .locals 2

    .line 63
    invoke-static {}, Lcom/unisound/lib/push/CommonPushManager;->getInstance()Lcom/unisound/lib/push/CommonPushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/lib/push/CommonPushManager;->setListener(Lcom/unisound/lib/push/intf/IpushListener;)V

    .line 64
    invoke-static {}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->getInstance()Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->netChangeReceiver:Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

    .line 65
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->netChangeReceiver:Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->addStateListener(Landroid/content/Context;Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;)V

    .line 66
    new-instance v0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;-><init>(Landroid/content/Context;Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;)V

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->sessionLayer:Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;

    .line 67
    invoke-static {}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->getInstance()Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->deviceStateMgr:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    .line 68
    sget-object v0, Lcom/unisound/lib/msgcenter/DataChannelManager;->dataChannelManager:Lcom/unisound/lib/msgcenter/DataChannelManager;

    return-object v0
.end method

.method private registerListener(Lcom/unisound/lib/msgcenter/ChannelMgrListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->channelMgrListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->channelMgrListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private unRegisterListener(Lcom/unisound/lib/msgcenter/ChannelMgrListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->channelMgrListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->channelMgrListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onChannelConnectFailed()V
    .locals 2

    const-string v0, "DataChannelManager"

    const-string v1, "-->>mqtt ConnectFailed"

    .line 159
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/listener/IMqttStateListener;

    .line 162
    invoke-interface {v1}, Lcom/unisound/lib/listener/IMqttStateListener;->onMqttConnectFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChannelConnected()V
    .locals 2

    const-string v0, "DataChannelManager"

    const-string v1, "-->>mqtt Connected"

    .line 139
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/listener/IMqttStateListener;

    .line 142
    invoke-interface {v1}, Lcom/unisound/lib/listener/IMqttStateListener;->onMqttConnect()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->deviceStateMgr:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->onTransportChannelConencted()V

    return-void
.end method

.method public onChannelDisConnected()V
    .locals 2

    const-string v0, "DataChannelManager"

    const-string v1, "-->>mqtt DisConnected"

    .line 150
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/listener/IMqttStateListener;

    .line 153
    invoke-interface {v1}, Lcom/unisound/lib/listener/IMqttStateListener;->onMqttDisConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCloudSessionResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 3

    const-string v0, "DataChannelManager"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>onCloudSessionResponse actionResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->fireChannelResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    return-void
.end method

.method public onNetConnected()V
    .locals 2

    const-string v0, "DataChannelManager"

    const-string v1, "--->>onNetConnected"

    .line 195
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->openDataChannel(Z)V

    return-void
.end method

.method public onNetConnecting()V
    .locals 2

    const-string v0, "DataChannelManager"

    const-string v1, "--->>onNetConnecting"

    .line 191
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetDisconnected()V
    .locals 2

    const-string v0, "DataChannelManager"

    const-string v1, "--->>onNetDisconnected"

    .line 200
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/unisound/lib/push/CommonPushManager;->getInstance()Lcom/unisound/lib/push/CommonPushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/CommonPushManager;->unInitPushClient(Landroid/content/Context;)V

    return-void
.end method

.method public onOtherDevicesPicked(Ljava/lang/String;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->globalEventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setFlushToken(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->globalEventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;->onUserGlobalEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "DataChannelManager"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->>onReceivedMsg message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->sessionLayer:Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;

    if-nez p1, :cond_0

    .line 170
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionLayer may be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->sessionLayer:Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;

    invoke-virtual {p1, p2}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->filterSessionContent(Ljava/lang/String;)V

    return-void
.end method

.method public onSessionDataUpdate(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/SessionData;)V
    .locals 2

    .line 206
    invoke-static {p1, p2}, Lcom/unisound/lib/msgcenter/service/ServiceProtocolUtil;->getReqContent(Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataChannelManager"

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to server data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/unisound/lib/push/CommonPushManager;->getInstance()Lcom/unisound/lib/push/CommonPushManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/unisound/lib/push/CommonPushManager;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method public openDataChannel(Z)V
    .locals 3

    .line 77
    new-instance v0, Lcom/unisound/lib/push/bean/PushParam;

    invoke-direct {v0}, Lcom/unisound/lib/push/bean/PushParam;-><init>()V

    .line 78
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/bean/PushParam;->setUdid(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/bean/PushParam;->setToken(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/unisound/lib/msgcenter/AppGlobalConstant;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/bean/PushParam;->setAppKey(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/unisound/lib/msgcenter/AppGlobalConstant;->APP_SECRET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/lib/push/bean/PushParam;->setAppSecret(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p1}, Lcom/unisound/lib/push/bean/PushParam;->setUserLogin(Z)V

    const-string p1, "DataChannelManager"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>openDataChannel param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/unisound/lib/push/CommonPushManager;->getInstance()Lcom/unisound/lib/push/CommonPushManager;

    move-result-object p1

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/unisound/lib/push/CommonPushManager;->initPushClient(Landroid/content/Context;Lcom/unisound/lib/push/bean/PushParam;)V

    return-void
.end method

.method public removeMqttStateChangeListener(Lcom/unisound/lib/listener/IMqttStateListener;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setGlobalEventListener(Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->globalEventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

    return-void
.end method

.method public setMqttStateChangeListener(Lcom/unisound/lib/listener/IMqttStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/DataChannelManager;->mIMqttStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
