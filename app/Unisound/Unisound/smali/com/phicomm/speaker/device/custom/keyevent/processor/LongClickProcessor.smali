.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;
.super Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.source "LongClickProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LongClickProcessor"


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .locals 0
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private startConnectNet()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "LongClickProcessor"

    const-string v1, "startConnectNet"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openConnectNetStatus()V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 89
    return-void
.end method


# virtual methods
.method public onBlueToothStatus()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "LongClickProcessor"

    const-string v1, "onBlueToothStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->startConnectNet()V

    .line 44
    return-void
.end method

.method public onDormantStatus()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "LongClickProcessor"

    const-string v1, "onDormantStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 69
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->startConnectNet()V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public onMusicStatus()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "LongClickProcessor"

    const-string v1, "onMusicStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->startConnectNet()V

    .line 30
    return-void
.end method

.method public onNetStatus()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "LongClickProcessor"

    const-string v1, "onNetStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onReadyStatus()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "LongClickProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 63
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->startConnectNet()V

    .line 64
    return-void
.end method

.method public onRecordingStatus()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "LongClickProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->onSpeechHandingStatus()V

    .line 58
    return-void
.end method

.method public onRingingStatus()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "LongClickProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 78
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->startConnectNet()V

    .line 79
    return-void
.end method

.method public onSpeechHandingStatus()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "LongClickProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelRecognize()V

    .line 52
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;->startConnectNet()V

    .line 53
    return-void
.end method
