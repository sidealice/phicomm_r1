.class public Lcom/unisound/ant/device/DeviceCenterHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DeviceCenterHandler.java"

# interfaces
.implements Lcom/unisound/ant/device/mqtt/ChannelListener;
.implements Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;
.implements Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;
.implements Lcom/unisound/ant/device/listener/VoiceConnectStateListener;
.implements Lcom/unisound/vui/common/location/listener/LocationListener;
.implements Lcom/unisound/ant/device/listener/MusicStatusListener;
.implements Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceCenterHandler"

.field private static buttonControlMusic:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

.field private static deviceCenterMgr:Lcom/unisound/ant/device/DeviceCenterHandler;


# instance fields
.field private aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

.field private autoLocationReceiver:Lcom/unisound/ant/device/receiver/AutoLocationReceiver;

.field private ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field private delayTime:I

.field private deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

.field private handler:Landroid/os/Handler;

.field private installBroadcastReceiver:Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;

.field private isInSceneControl:Z

.field private mContext:Landroid/content/Context;

.field private mLocationInfo:Lcom/unisound/vui/common/location/bean/LocationInfo;

.field private mMusicStatus:I

.field private mUdid:Ljava/lang/String;

.field private mixtureProcessor:Lnluparser/MixtureProcessor;

.field private netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

.field private phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

.field private sessionLayer:Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;

.field private taskThread:Landroid/os/HandlerThread;

.field private utteranceTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onMQTTStatusChangeListener"    # Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 104
    iput v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->delayTime:I

    .line 105
    iput v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->utteranceTime:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mMusicStatus:I

    .line 116
    const-string v0, "DeviceCenterHandler"

    const-string v1, "-->>DeviceCenterHandler"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "deviceCenterHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->taskThread:Landroid/os/HandlerThread;

    .line 118
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .line 121
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->handler:Landroid/os/Handler;

    .line 122
    invoke-static {}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->getChannelInstance()Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    .line 123
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->setChannelListener(Lcom/unisound/ant/device/mqtt/ChannelListener;)V

    .line 124
    new-instance v0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-direct {v0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    .line 125
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->setStateListener(Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;)V

    .line 126
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->registerNetStateReceiver(Landroid/content/Context;)V

    .line 127
    new-instance v0, Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;

    invoke-direct {v0}, Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->installBroadcastReceiver:Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;

    .line 128
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->installBroadcastReceiver:Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;->setStateListener(Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;)V

    .line 129
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->installBroadcastReceiver:Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;->registerInstallStateReceiver(Landroid/content/Context;)V

    .line 130
    new-instance v0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;

    invoke-direct {v0, p1, p0}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;-><init>(Landroid/content/Context;Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;)V

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->sessionLayer:Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;

    .line 131
    new-instance v0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-direct {v0, p1}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    .line 132
    new-instance v0, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;

    invoke-direct {v0, p1, p0}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;-><init>(Landroid/content/Context;Lcom/unisound/vui/common/location/listener/LocationListener;)V

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->autoLocationReceiver:Lcom/unisound/ant/device/receiver/AutoLocationReceiver;

    .line 133
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->autoLocationReceiver:Lcom/unisound/ant/device/receiver/AutoLocationReceiver;

    invoke-virtual {v0}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->startLocation()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/ant/device/DeviceCenterHandler;)Lnluparser/MixtureProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/ant/device/DeviceCenterHandler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mixtureProcessor:Lnluparser/MixtureProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unisound/ant/device/DeviceCenterHandler;Lnluparser/scheme/Mixture;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/device/DeviceCenterHandler;
    .param p1, "x1"    # Lnluparser/scheme/Mixture;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/unisound/ant/device/DeviceCenterHandler;->reportLogToCloud(Lnluparser/scheme/Mixture;Ljava/lang/String;)V

    return-void
.end method

.method private checkNetState()V
    .locals 4

    .prologue
    .line 259
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v0

    .line 260
    .local v0, "isBinded":Z
    const-string v1, "DeviceCenterHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>initHardware current device isBinded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->registerNetReceiverAndCheck(Landroid/content/Context;)V

    .line 262
    return-void
.end method

.method public static getButtonControler()Lcom/unisound/ant/device/devicelayer/button/ButtonControl;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->buttonControlMusic:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    return-object v0
.end method

.method private getCurrentMusicWakeupBenchmark()F
    .locals 4

    .prologue
    .line 527
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getCurrentVolume()I

    move-result v0

    .line 528
    .local v0, "currentVolume":I
    const-string v1, "DeviceCenterHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicStatusChanged music playing  volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 530
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    .line 536
    :goto_0
    return v1

    .line 531
    :cond_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 532
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlaying:F

    goto :goto_0

    .line 533
    :cond_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    .line 534
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingTwo:F

    goto :goto_0

    .line 536
    :cond_2
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingThree:F

    goto :goto_0
.end method

.method public static getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceCenterMgr:Lcom/unisound/ant/device/DeviceCenterHandler;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please init deviceCenterMgr"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    sget-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceCenterMgr:Lcom/unisound/ant/device/DeviceCenterHandler;

    return-object v0
.end method

.method private getEffectBenchmark()F
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mMusicStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/unisound/ant/device/DeviceCenterHandler;->getCurrentMusicWakeupBenchmark()F

    move-result v0

    .line 544
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onMQTTStatusChangeListener"    # Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .prologue
    .line 137
    sget-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceCenterMgr:Lcom/unisound/ant/device/DeviceCenterHandler;

    if-nez v0, :cond_1

    .line 138
    const-class v1, Lcom/unisound/ant/device/DeviceCenterHandler;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceCenterMgr:Lcom/unisound/ant/device/DeviceCenterHandler;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/unisound/ant/device/DeviceCenterHandler;

    invoke-direct {v0, p0, p1}, Lcom/unisound/ant/device/DeviceCenterHandler;-><init>(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V

    sput-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceCenterMgr:Lcom/unisound/ant/device/DeviceCenterHandler;

    .line 142
    :cond_0
    monitor-exit v1

    .line 144
    :cond_1
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initHardware(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "mCtx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 253
    new-instance v0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-direct {v0, p1}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;-><init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    sput-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->buttonControlMusic:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    .line 254
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->bindAntHandlerContext(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 255
    invoke-direct {p0}, Lcom/unisound/ant/device/DeviceCenterHandler;->checkNetState()V

    .line 256
    return-void
.end method

.method private initLconParam(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    new-instance v1, Lcom/unisound/ant/device/mqtt/bean/LconRequest;

    invoke-direct {v1}, Lcom/unisound/ant/device/mqtt/bean/LconRequest;-><init>()V

    .line 399
    .local v1, "request":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<Lcom/unisound/ant/device/mqtt/bean/LconInfo;>;"
    const-string v2, "queryLongConnInfo"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->setCommand(Ljava/lang/String;)V

    .line 400
    invoke-static {p1}, Lcom/unisound/vui/util/SystemUitls;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->setVersion(Ljava/lang/String;)V

    .line 401
    new-instance v2, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;

    invoke-static {p1}, Lcom/unisound/vui/util/SystemUitls;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->setTcl(Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;)V

    .line 402
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/LconInfo;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/LconInfo;-><init>()V

    .line 403
    .local v0, "info":Lcom/unisound/ant/device/mqtt/bean/LconInfo;
    sget-object v2, Lcom/unisound/vui/util/ExoConstants;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->setAppKey(Ljava/lang/String;)V

    .line 404
    const-string v2, "generalDevice"

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->setDeviceType(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/mqtt/bean/LconInfo;->setUdid(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->setData(Ljava/lang/Object;)V

    .line 407
    invoke-static {v1}, Lcom/unisound/ant/device/mqtt/bean/ParamConfig;->setLconRequest(Lcom/unisound/ant/device/mqtt/bean/LconRequest;)V

    .line 408
    return-void
.end method

.method private isASRData(Lcom/unisound/ant/device/bean/SessionData;)Z
    .locals 4
    .param p1, "data"    # Lcom/unisound/ant/device/bean/SessionData;

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/SessionData;->getDstService()Lcom/unisound/ant/device/profile/DstServiceProfile;

    move-result-object v1

    .line 461
    .local v1, "dstService":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-virtual {v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/ant/device/bean/Accelerate;

    move-result-object v0

    .line 462
    .local v0, "accelerate":Lcom/unisound/ant/device/bean/Accelerate;
    if-eqz v0, :cond_1

    const-string v2, "onlineAsrLog"

    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "offlineAsrLog"

    .line 463
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 462
    :goto_0
    return v2

    .line 463
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMusicData(Lcom/unisound/ant/device/bean/SessionData;)Z
    .locals 2
    .param p1, "data"    # Lcom/unisound/ant/device/bean/SessionData;

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/SessionData;->getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "service":Ljava/lang/String;
    const-string v1, "enjoyMusic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enjoyAudio"

    .line 449
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enjoyNews"

    .line 450
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 448
    :goto_0
    return v1

    .line 450
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportLogToCloud(Lnluparser/scheme/Mixture;Ljava/lang/String;)V
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/Mixture;
    .param p2, "cmdValue"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Lcom/unisound/ant/device/bean/VoiceChatMessage;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/VoiceChatMessage;-><init>()V

    .line 228
    .local v0, "chatMessage":Lcom/unisound/ant/device/bean/VoiceChatMessage;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/VoiceChatMessage;->setLogId(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/VoiceChatMessage;->setCreateTime(Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/VoiceChatMessage;->setMsg(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-virtual {v1, p2, v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reportLocalAsrLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method private updateLocation(Lcom/unisound/vui/common/location/bean/LocationInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/unisound/vui/common/location/bean/LocationInfo;

    .prologue
    .line 571
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    .line 572
    .local v0, "config":Lcom/unisound/vui/engine/ANTEngineConfig;
    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_GPS:Lcom/unisound/vui/engine/ANTEngineOption;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    .line 573
    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_CITY:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {p1}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    .line 574
    return-void
.end method


# virtual methods
.method public associateEngine(Lcom/unisound/vui/engine/ANTEngine;Lnluparser/MixtureProcessor;)Lcom/unisound/ant/device/DeviceCenterHandler;
    .locals 1
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "processor"    # Lnluparser/MixtureProcessor;

    .prologue
    .line 245
    iput-object p2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mixtureProcessor:Lnluparser/MixtureProcessor;

    .line 246
    sget-object v0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceCenterMgr:Lcom/unisound/ant/device/DeviceCenterHandler;

    return-object v0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->stop()V

    .line 506
    :cond_0
    return-void
.end method

.method public exit(Z)V
    .locals 1
    .param p1, "fireResume"    # Z

    .prologue
    .line 512
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 513
    invoke-virtual {p0}, Lcom/unisound/ant/device/DeviceCenterHandler;->reset()V

    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/DeviceCenterHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 517
    :cond_0
    return-void
.end method

.method public getDeviceStateMgr()Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    return-object v0
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/DeviceCenterHandler;->setPriority(I)V

    .line 148
    return-void
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 277
    const-string v0, "DeviceCenterHandler"

    const-string v1, "-->>onASREventEngineInitDone"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 279
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mUdid:Ljava/lang/String;

    .line 280
    const-string v0, "DeviceCenterHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine init done, udid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mUdid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mUdid:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/vui/util/AppGlobalConstant;->setUdid(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mLocationInfo:Lcom/unisound/vui/common/location/bean/LocationInfo;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mLocationInfo:Lcom/unisound/vui/common/location/bean/LocationInfo;

    invoke-direct {p0, v0}, Lcom/unisound/ant/device/DeviceCenterHandler;->updateLocation(Lcom/unisound/vui/common/location/bean/LocationInfo;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mLocationInfo:Lcom/unisound/vui/common/location/bean/LocationInfo;

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/DeviceCenterHandler;->initHardware(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 288
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onChannelClose()V
    .locals 2

    .prologue
    .line 368
    const-string v0, "DeviceCenterHandler"

    const-string v1, "-->>onChannelClose"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public onChannelConnected()V
    .locals 3

    .prologue
    .line 346
    const-string v0, "DeviceCenterHandler"

    const-string v1, "-->>onChannelConnected"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-virtual {v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->onTransportChannelConencted()V

    .line 349
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.device.wifi.alive.connected"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method public onChannelDisConnected()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "DeviceCenterHandler"

    const-string v1, "-->>onChannelConnected"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onCloudSessionResponse(Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 0
    .param p1, "actionReponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 471
    return-void
.end method

.method public onInstallFailed()V
    .locals 2

    .prologue
    .line 552
    const-string v0, "DeviceCenterHandler"

    const-string v1, "onInstallFailed()"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 554
    return-void
.end method

.method public onLocationFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "locationErrorMessage"    # Ljava/lang/String;

    .prologue
    .line 577
    const-string v0, "DeviceCenterHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationFail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public onLocationSuccess(Lcom/unisound/vui/common/location/bean/LocationInfo;)V
    .locals 3
    .param p1, "locationInfo"    # Lcom/unisound/vui/common/location/bean/LocationInfo;

    .prologue
    .line 557
    const-string v0, "DeviceCenterHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChange info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "DeviceCenterHandler"

    const-string v1, "ctx != null, update location info"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/DeviceCenterHandler;->updateLocation(Lcom/unisound/vui/common/location/bean/LocationInfo;)V

    .line 561
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->autoLocationReceiver:Lcom/unisound/ant/device/receiver/AutoLocationReceiver;

    invoke-virtual {v0}, Lcom/unisound/ant/device/receiver/AutoLocationReceiver;->onDestory()V

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mLocationInfo:Lcom/unisound/vui/common/location/bean/LocationInfo;

    .line 568
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v0, "DeviceCenterHandler"

    const-string v1, "onLocationChange ANTEngineConfig ctx is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iput-object p1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mLocationInfo:Lcom/unisound/vui/common/location/bean/LocationInfo;

    goto :goto_0
.end method

.method public onMusicStatusChanged(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/unisound/ant/device/DeviceCenterHandler;->getEffectBenchmark()F

    move-result v0

    .line 521
    .local v0, "currentBenchMark":F
    const-string v1, "DeviceCenterHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicStatusChanged status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentBenchMark"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->effectWakeupBenchmark:F

    .line 523
    iput p1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mMusicStatus:I

    .line 524
    return-void
.end method

.method public onNetConnected()V
    .locals 4

    .prologue
    .line 381
    const-string v1, "DeviceCenterHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>onNetConnected aliveTransportChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/unisound/vui/transport/config/RuntimeConfig;->setOnceConnectSuc(Z)V

    .line 383
    const-string v1, "DeviceCenterHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current wifi is connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unisound/vui/transport/config/RuntimeConfig;->isConnectedWifi()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/unisound/ant/device/DeviceCenterHandler;->initLconParam(Landroid/content/Context;)V

    .line 386
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 387
    .local v0, "params":Lcom/unisound/ant/device/mqtt/bean/ChannelParams;
    sget-object v1, Lcom/unisound/vui/util/ExoConstants;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->setAppKey(Ljava/lang/String;)V

    .line 388
    sget-object v1, Lcom/unisound/vui/util/ExoConstants;->APP_SECRET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->setAppSecret(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->openChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/bean/ChannelParams;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V

    .line 391
    .end local v0    # "params":Lcom/unisound/ant/device/mqtt/bean/ChannelParams;
    :cond_0
    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-virtual {v1}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->onNetConnectedSuccess()V

    .line 392
    return-void
.end method

.method public onNetConnecting()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "DeviceCenterHandler"

    const-string v1, "-->>onChannelClose"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public onNetDisconnected()V
    .locals 2

    .prologue
    .line 412
    const-string v0, "DeviceCenterHandler"

    const-string v1, "--->>onNetDisconnected"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->closeChannel()V

    .line 416
    :cond_0
    return-void
.end method

.method public onReceivedMsg(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v0, "DeviceCenterHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>onReceivedMsg state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->sessionLayer:Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionLayer may be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->sessionLayer:Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;

    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->filterSessionContent(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public onSendDataResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "descript"    # Ljava/lang/String;

    .prologue
    .line 357
    return-void
.end method

.method public onSessionDataUpdate(Ljava/lang/String;Lcom/unisound/ant/device/bean/SessionData;)V
    .locals 5
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "sessionData"    # Lcom/unisound/ant/device/bean/SessionData;

    .prologue
    .line 422
    .line 423
    invoke-static {p1, p2}, Lcom/unisound/ant/device/service/ServiceProtocolUtil;->getReqContent(Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest;

    move-result-object v0

    .line 425
    .local v0, "reqContent":Lcom/unisound/ant/device/service/BaseRequest;, "Lcom/unisound/ant/device/service/BaseRequest<Lcom/unisound/ant/device/bean/SessionData;>;"
    invoke-direct {p0, p2}, Lcom/unisound/ant/device/DeviceCenterHandler;->isMusicData(Lcom/unisound/ant/device/bean/SessionData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mUdid:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->httpReportMusicInfo(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V

    .line 438
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-direct {p0, p2}, Lcom/unisound/ant/device/DeviceCenterHandler;->isASRData(Lcom/unisound/ant/device/bean/SessionData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mUdid:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->httpReportASRLog(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-static {v0}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "statusJson":Ljava/lang/String;
    const-string v2, "DeviceCenterHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send to server data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 433
    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->aliveTransportChannel:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    invoke-virtual {v2, v1}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->sendData(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    const-string v2, "DeviceCenterHandler"

    const-string v3, "---->>onSessionDataUpdate aliveTransportChannel is null"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSessionToSceneControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneFlag"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string v0, "start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "processing"

    .line 478
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->isInSceneControl:Z

    .line 483
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    const-string v0, "end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->isInSceneControl:Z

    goto :goto_0
.end method

.method public onStartVoiceConnect()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->unregisterNetStateReceiver(Landroid/content/Context;)V

    .line 490
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 334
    const-string v0, "DeviceCenterHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>onTTSEventPlayingEnd ctx.engine().getEngineState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->getEngineState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-boolean v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/DeviceCenterHandler;->exit(Z)V

    .line 339
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 326
    const-string v0, "DeviceCenterHandler"

    const-string v1, "-->>onTTSEventSynthesizerStart"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->stop()V

    .line 330
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onVoiceConnectFailEnd()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public onVoiceConnectFailStart()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public onVoiceConnectSuccess()V
    .locals 2

    .prologue
    .line 493
    const-string v0, "DeviceCenterHandler"

    const-string v1, "--->>onVoiceConnectSuccess"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    iget-object v1, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->registerNetReceiverAndCheck(Landroid/content/Context;)V

    .line 495
    return-void
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 8
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "local_asr"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 295
    .local v2, "localAsr":Lorg/json/JSONObject;
    const-string v5, "delayTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->delayTime:I

    .line 296
    const-string v5, "utteranceTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->utteranceTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "localAsr":Lorg/json/JSONObject;
    :goto_0
    iget-object v5, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->getNeedInstallUpdate(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    iget-object v4, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->deviceStateMgr:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-virtual {v4}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->startInstallAPK()V

    .line 322
    :cond_0
    :goto_1
    return v3

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DeviceCenterHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "DeviceCenterHandler"

    const-string v6, "Continues onWakeupEventRecognitionSuccess"

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/unisound/vui/engine/ANTEngine;->setWakeupRecord(Z)V

    .line 307
    sget-boolean v5, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupAecTest:Z

    if-eqz v5, :cond_3

    .line 308
    const-string v5, "DeviceCenterHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMusicStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mMusicStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -->music_wakeup_test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget v5, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mMusicStatus:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 312
    invoke-interface {p1, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v3, v4

    .line 313
    goto :goto_1

    :cond_2
    move v3, v4

    .line 315
    goto :goto_1

    .line 316
    :cond_3
    sget-boolean v5, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupTest:Z

    if-eqz v5, :cond_0

    .line 319
    invoke-interface {p1, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v3, v4

    .line 320
    goto :goto_1
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 5
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    sget-boolean v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupTest:Z

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "wakeupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v2, p1, Lnluparser/scheme/LocalASR;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 155
    check-cast v2, Lnluparser/scheme/LocalASR;

    invoke-virtual {v2}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "wakeupWord":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 218
    .end local v0    # "wakeupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "wakeupWord":Ljava/lang/String;
    :goto_0
    return-void

    .line 162
    :cond_0
    instance-of v2, p1, Lnluparser/scheme/NLU;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/unisound/ant/device/DeviceCenterHandler$1;

    invoke-direct {v3, p0, p1}, Lcom/unisound/ant/device/DeviceCenterHandler$1;-><init>(Lcom/unisound/ant/device/DeviceCenterHandler;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_1
    instance-of v2, p1, Llogreport/FullLog;

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/unisound/ant/device/DeviceCenterHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/unisound/ant/device/DeviceCenterHandler$2;

    invoke-direct {v3, p0, p1}, Lcom/unisound/ant/device/DeviceCenterHandler$2;-><init>(Lcom/unisound/ant/device/DeviceCenterHandler;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0
.end method
