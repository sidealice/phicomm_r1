.class public Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
.super Ljava/lang/Object;
.source "PhicommSettingHandler.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/setting/SettingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;,
        Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhicommSettingHandler"


# instance fields
.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMsgCenter:Landroid/os/MessageDispatchManager;

.field private final mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    .line 47
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->unregistPhicommMessageReceiver(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Lcom/unisound/vui/engine/ANTEngine;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
    .param p1, "x1"    # Lnluparser/scheme/NLU;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeAmbientLight(Lnluparser/scheme/NLU;)V
    .locals 3
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeAmbientLight()V

    .line 168
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 169
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->onAmbientLightStatusChanged(Z)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private closeBluetoothMode(Lnluparser/scheme/NLU;)V
    .locals 3
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f05002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "tts":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 145
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 146
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f05002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeSoundEffect(Lnluparser/scheme/NLU;)V
    .locals 3
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeSoundEffect()V

    .line 191
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f050033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private onAmbientLightStatusChanged(Z)V
    .locals 7
    .param p1, "isAmbientLightOn"    # Z

    .prologue
    .line 200
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v6, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "currentAmbientLightStatus"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v5, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;

    const-string v0, "modifyAmbientLightStatus"

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1, v6}, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 207
    .local v5, "selfDefinationResponseInfo":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const-string v1, "selfDefinedManager"

    const/4 v2, 0x0

    const-string v3, "selfDefinedManager"

    const-string v4, "selfDefinedManager"

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    return-void

    .line 201
    .end local v5    # "selfDefinationResponseInfo":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private openAmbientLight(Lnluparser/scheme/NLU;)V
    .locals 3
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openAmbientLight()V

    .line 154
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 155
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->onAmbientLightStatusChanged(Z)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f050077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private openBluetoothMode(Lnluparser/scheme/NLU;)V
    .locals 4
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const v3, 0x7f050078

    .line 121
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "tts":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredTropleClickEvent()V

    .line 129
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 130
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openSleepMode(Lnluparser/scheme/NLU;)V
    .locals 2
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredDoubleClickEvent()V

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f050086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private openSoundEffect(Lnluparser/scheme/NLU;)V
    .locals 3
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openSoundEffect()V

    .line 181
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f05007b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    .locals 2
    .param p1, "nlu"    # Lnluparser/scheme/NLU;
    .param p2, "ttsData"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Llogreport/FullLog;

    invoke-direct {v1, p1, p2}, Llogreport/FullLog;-><init>(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 306
    return-void
.end method

.method private sendPhicommSmartHomeCommand(Ljava/lang/Object;)V
    .locals 9
    .param p1, "nluData"    # Ljava/lang/Object;

    .prologue
    .line 224
    invoke-static {p1}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "dataJson":Ljava/lang/String;
    const-string v4, "PhicommSettingHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPhicommSmartHomeCommand: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    .line 226
    check-cast v3, Lnluparser/scheme/NLU;

    .line 228
    .local v3, "nlu":Lnluparser/scheme/NLU;
    new-instance v2, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    invoke-direct {v2, p0, v3}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;-><init>(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;)V

    .line 229
    .local v2, "iotReceiver":Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;
    new-instance v1, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;-><init>(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;Lnluparser/scheme/NLU;)V

    .line 230
    .local v1, "ioTRunnable":Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;
    invoke-virtual {v2, v1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->setIoTRunnable(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;)V

    .line 231
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/high16 v5, 0x1000000

    invoke-virtual {v4, v2, v5}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 232
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/high16 v5, 0x800000

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 233
    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v8

    .line 232
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 234
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    return-void
.end method

.method private unregistPhicommMessageReceiver(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    invoke-virtual {v0, p1}, Landroid/os/MessageDispatchManager;->unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public handleOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 56
    const-string v0, "PhicommSettingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOrder: type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1
    return-void

    .line 54
    :sswitch_0
    const-string v1, "ACT_PHICOMM_VERSION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "ACT_PHICOMM_OTA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "ACT_PHICOMM_BACKUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendPhicommVersion()V

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendPhicommOTA()V

    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendphicommBackup()V

    goto :goto_1

    .line 54
    :sswitch_data_0
    .sparse-switch
        -0x7ace482f -> :sswitch_2
        -0x65e6c8b3 -> :sswitch_1
        0x4aac1c89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleOrder(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 73
    const-string v0, "PhicommSettingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOrder: type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local p2    # "data":Ljava/lang/Object;
    :goto_1
    return-void

    .line 71
    .restart local p2    # "data":Ljava/lang/Object;
    :sswitch_0
    const-string v1, "ACT_PHICOMM_SMART_HOME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "ACT_PHICOMM_OPEN_AMBIENTLIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "ACT_PHICOMM_CLOSE_AMBIENTLIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "ACT_PHICOMM_OPEN_SOUNDEFFECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "ACT_PHICOMM_CLOSE_SOUNDEFFECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "ACT_PHICOMM_OPEN_BLUETOOTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "ACT_PHICOMM_CLOSE_BLUETOOTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const-string v1, "ACT_PHICOMM_OPEN_SLEEP_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 76
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendPhicommSmartHomeCommand(Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :pswitch_1
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openAmbientLight(Lnluparser/scheme/NLU;)V

    goto :goto_1

    .line 82
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->closeAmbientLight(Lnluparser/scheme/NLU;)V

    goto :goto_1

    .line 85
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openSoundEffect(Lnluparser/scheme/NLU;)V

    goto :goto_1

    .line 88
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->closeSoundEffect(Lnluparser/scheme/NLU;)V

    goto :goto_1

    .line 91
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openBluetoothMode(Lnluparser/scheme/NLU;)V

    goto :goto_1

    .line 94
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->closeBluetoothMode(Lnluparser/scheme/NLU;)V

    goto :goto_1

    .line 97
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openSleepMode(Lnluparser/scheme/NLU;)V

    goto :goto_1

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        -0x74a4001c -> :sswitch_1
        -0x5b8a8be6 -> :sswitch_3
        -0x2f7883ec -> :sswitch_2
        -0xc4259ef -> :sswitch_7
        0x2ad1b1ea -> :sswitch_4
        0x494b57b8 -> :sswitch_6
        0x4c59e5e8 -> :sswitch_5
        0x70ded844 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public sendPhicommOTA()V
    .locals 5

    .prologue
    .line 108
    const-string v0, "PhicommSettingHandler"

    const-string v1, "sendPhicommOTA"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x4000

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 110
    return-void
.end method

.method public sendPhicommVersion()V
    .locals 5

    .prologue
    .line 103
    const-string v0, "PhicommSettingHandler"

    const-string v1, "sendPhicommVersion"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x4000

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 105
    return-void
.end method

.method public sendphicommBackup()V
    .locals 5

    .prologue
    .line 113
    const-string v0, "PhicommSettingHandler"

    const-string v1, "sendphicommBackup"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x4000

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 115
    return-void
.end method
