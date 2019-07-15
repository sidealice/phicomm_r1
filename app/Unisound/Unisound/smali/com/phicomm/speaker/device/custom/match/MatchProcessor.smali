.class public Lcom/phicomm/speaker/device/custom/match/MatchProcessor;
.super Ljava/lang/Object;
.source "MatchProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "MatchProcessor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

.field protected mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field protected mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

.field protected mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

.field private mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->defaultInstance(Landroid/content/Context;)Lcom/phicomm/speaker/device/ipc/IpcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    .line 37
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 38
    new-instance v0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    .line 39
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 40
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 41
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 42
    return-void
.end method

.method private dispatchReadyStatus(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onRecordingStatus(Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->isSpeechHandling(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onSpeechHandingStatus(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onReadyStatus(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z
    .locals 1
    .param p1, "mANTEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 144
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    return v0
.end method

.method private isRingingStatus()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeechHandling(Lcom/unisound/vui/engine/ANTEngine;)Z
    .locals 1
    .param p1, "mANTEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 149
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isRecognition()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isTTSPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRingingStatus(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 126
    const-string v0, "MatchProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 130
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method private processPhijoinConnectNet(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const v4, 0x7f050087

    .line 80
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    .line 81
    .local v0, "status":I
    const-string v1, "MatchProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPhijoinConnectNet device status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->isRingingStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onRingingStatus(Ljava/lang/Object;)V

    .line 119
    :goto_0
    return-void

    .line 88
    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 90
    :pswitch_1
    const-string v1, "MatchProcessor"

    const-string v2, "onReadyStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->dispatchReadyStatus(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v1, "MatchProcessor"

    const-string v2, "onMusicStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 97
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 98
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v1, v4}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 99
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v1, "MatchProcessor"

    const-string v2, "onNetStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v1, "MatchProcessor"

    const-string v2, "onBlueToothStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 108
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v1, v4}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 110
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 111
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :pswitch_5
    const-string v1, "MatchProcessor"

    const-string v2, "onDormantStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v1, v4}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 116
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private startPhijoinConnectNet(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 69
    const-string v0, "MatchProcessor"

    const-string v1, "startPhijoinConnectNet"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openPhijoinConnectNetStatus(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 77
    return-void
.end method

.method private turnOffWakeupLightsIfNeeds()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isRecognition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 180
    :cond_1
    return-void
.end method


# virtual methods
.method public onReadyStatus(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 167
    const-string v0, "MatchProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 169
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public onReceive(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 53
    sget v0, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_MATCH_PHIJOIN_CONFIG:I

    if-ne p2, v0, :cond_0

    .line 55
    const-string v0, "MatchProcessor"

    const-string v1, "onReceive phijoin config"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p4}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->processPhijoinConnectNet(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onRecordingStatus(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 162
    const-string v0, "MatchProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onSpeechHandingStatus(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public onSpeechHandingStatus(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 153
    const-string v0, "MatchProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelRecognize()V

    .line 158
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "MatchProcessor"

    const-string v1, "regitster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const/high16 v1, 0x40000

    invoke-virtual {v0, p0, v1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V

    .line 50
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "MatchProcessor"

    const-string v1, "regitster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/ipc/IpcManager;->unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    .line 66
    return-void
.end method
