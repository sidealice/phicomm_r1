.class public Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;
.super Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;
.source "PhicommBindStatusHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mContext:Landroid/content/Context;

.field private final mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 36
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->queryDeviceBoundStatus()V

    return-void
.end method

.method private clearWakeupWord()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 92
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 93
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 94
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "wakeupWordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method private onBound()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    const-string v1, "device is bound"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceBindState(Landroid/content/Context;Z)V

    .line 65
    return-void
.end method

.method private onUnbound()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    const-string v1, "device is unbound"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceBindState(Landroid/content/Context;Z)V

    .line 71
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->clearWakeupWord()V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0, v2}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isTTSPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doFinishAllInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0
.end method

.method private queryDeviceBoundStatus()V
    .locals 6

    .prologue
    .line 100
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    const-string v4, "query device bound status"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "udid":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->isDeviceBounded(Ljava/lang/String;)Z

    move-result v0

    .line 104
    .local v0, "bound":Z
    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onBound()V

    .line 113
    .end local v0    # "bound":Z
    :goto_0
    return-void

    .line 107
    .restart local v0    # "bound":Z
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onUnbound()V

    .line 108
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f050074

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0    # "bound":Z
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryDeviceBoundStatus error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 58
    invoke-super {p0, p1}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;->enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 59
    return-void
.end method

.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    instance-of v1, p2, Lcom/unisound/vui/transport/out/BindStatusEvent;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 41
    check-cast v0, Lcom/unisound/vui/transport/out/BindStatusEvent;

    .line 42
    .local v0, "event":Lcom/unisound/vui/transport/out/BindStatusEvent;
    invoke-virtual {v0}, Lcom/unisound/vui/transport/out/BindStatusEvent;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onBound()V

    .line 50
    .end local v0    # "event":Lcom/unisound/vui/transport/out/BindStatusEvent;
    :goto_0
    return-void

    .line 45
    .restart local v0    # "event":Lcom/unisound/vui/transport/out/BindStatusEvent;
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onUnbound()V

    goto :goto_0

    .line 49
    .end local v0    # "event":Lcom/unisound/vui/transport/out/BindStatusEvent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V

    goto :goto_0
.end method
