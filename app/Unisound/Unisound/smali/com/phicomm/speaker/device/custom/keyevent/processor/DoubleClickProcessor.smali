.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;
.super Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.source "DoubleClickProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DoubleClickProcessor"


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .locals 0
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private stopWakeup()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "DoubleClickProcessor"

    const-string v1, "stop wakeup"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnDormantLight()V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onBlueToothStatus()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 44
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onBlueToothStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050086

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 49
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 50
    return-void
.end method

.method public onDormantStatus()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onDormantStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onMusicStatus()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 28
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onMusicStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050086

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 34
    return-void
.end method

.method public onNetStatus()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onNetStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onReadyStatus()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 73
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050086

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 75
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 76
    return-void
.end method

.method public onRecordingStatus()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->onSpeechHandingStatus()V

    .line 68
    return-void
.end method

.method public onRingingStatus()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 95
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050086

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 99
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 100
    return-void
.end method

.method public onSpeechHandingStatus()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 55
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopSession()V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f050086

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelRecognize()V

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 63
    return-void
.end method
