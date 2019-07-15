.class public Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;
.source "PhicommInitializeHandler.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;


# static fields
.field private static final FX_KEY_OTA_MODE:Ljava/lang/String; = "fxotamode"

.field private static final FX_OTA_MODE_VALUE_SILENT:Ljava/lang/String; = "silent"

.field private static final FX_SYSTEM_PRIVATE:Ljava/lang/String; = "FXSystemPrivate"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFristBoot:Z

.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mContext:Landroid/content/Context;

.field private mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

.field private mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

.field private mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field private mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

.field private mSysPrivateManager:Landroid/os/SysPrivateManager;

.field private matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

.field private udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Lcom/unisound/vui/engine/ANTEngine;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method private initCustomMatchProcess()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->register()V

    .line 222
    return-void
.end method

.method private initCustomUDIDProcess()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->register()V

    .line 217
    return-void
.end method

.method private initDeviceStatusListener()V
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 211
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->addDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V

    .line 212
    return-void
.end method

.method private initKeyEventProcess()V
    .locals 4

    .prologue
    .line 225
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    new-instance v1, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;-><init>(Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->register()V

    .line 228
    return-void
.end method

.method private initPhicommBusiness()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initDeviceStatusListener()V

    .line 203
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initKeyEventProcess()V

    .line 204
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomUDIDProcess()V

    .line 205
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomMatchProcess()V

    .line 206
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->startMonitorStatus()V

    .line 207
    return-void
.end method

.method private onDormantStatusChanged(Z)V
    .locals 7
    .param p1, "isDormant"    # Z

    .prologue
    .line 236
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v6, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "currentDormantStatus"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v5, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;

    const-string v0, "modifyDormantStatus"

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1, v6}, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 243
    .local v5, "selfDefinationResponseInfo":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const-string v1, "selfDefinedManager"

    const/4 v2, 0x0

    const-string v3, "selfDefinedManager"

    const-string v4, "selfDefinedManager"

    .line 244
    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void

    .line 237
    .end local v5    # "selfDefinationResponseInfo":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private playInitDoneTips()V
    .locals 7

    .prologue
    const v6, 0x7f040001

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    const-string v3, "FXSystemPrivate"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SysPrivateManager;

    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    .line 76
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    const-string v3, "fxotamode"

    invoke-virtual {v2, v3}, Landroid/os/SysPrivateManager;->getBootProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "value":Ljava/lang/String;
    const-string v2, "silent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v3, "playInitDoneTips, silent update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    const-string v3, "fxotamode"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/SysPrivateManager;->setBootProp(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v3, "\u67e5\u8be2\u9759\u9ed8\u5347\u7ea7\u72b6\u6001\u51fa\u9519: "

    invoke-static {v2, v3, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;

    invoke-direct {v4, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V

    const/4 v5, 0x0

    .line 93
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(I)V

    .line 114
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V

    goto :goto_0
.end method

.method private switchASRModeType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    .line 199
    return-void
.end method


# virtual methods
.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    .line 66
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 67
    new-instance v0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    .line 68
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 69
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->playInitDoneTips()V

    .line 70
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onDeviceStatusChanged(II)V
    .locals 7
    .param p1, "prevStatus"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x5

    .line 144
    if-ne p1, v2, :cond_0

    if-eq p2, v2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    .line 148
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->onDormantStatusChanged(Z)V

    .line 150
    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p2, v2, :cond_1

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    .line 153
    invoke-direct {p0, v6}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->onDormantStatusChanged(Z)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->isSystemBootloader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "system boot finish, ignore"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->setSystemBootloader(Landroid/content/Context;Z)V

    .line 195
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    if-nez p2, :cond_6

    if-ne p1, v3, :cond_6

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f05008f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 171
    :cond_4
    :goto_1
    if-eq p1, v4, :cond_7

    if-ne p2, v4, :cond_7

    .line 173
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "-----\u5df2\u5207\u6362\u6210\u84dd\u7259\u6a21\u5f0f, ASR \u6362\u6210 local \u6a21\u5f0f-----"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->switchASRModeType(I)V

    .line 184
    :cond_5
    :goto_2
    if-ne p1, v2, :cond_8

    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_8

    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    goto :goto_0

    .line 166
    :cond_6
    if-nez p2, :cond_4

    if-ne p1, v4, :cond_4

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050031

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    goto :goto_1

    .line 177
    :cond_7
    if-ne p1, v4, :cond_5

    if-eq p2, v4, :cond_5

    .line 179
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "-----\u5df2\u5207\u6362\u6210\u975e\u84dd\u7259\u6a21\u5f0f, ASR \u6362\u6210 mix \u6a21\u5f0f-----"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->switchASRModeType(I)V

    goto :goto_2

    .line 190
    :cond_8
    if-ne p1, v3, :cond_2

    if-eq p2, v2, :cond_2

    if-eq p2, v3, :cond_2

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 128
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTSEventPlayingEnd, isFristBoot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 134
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 119
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTSEventPlayingStart, isFristBoot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method
