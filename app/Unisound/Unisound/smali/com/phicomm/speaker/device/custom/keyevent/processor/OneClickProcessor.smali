.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;
.super Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.source "OneClickProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneClickProcessor"


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .locals 0
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onBlueToothStatus()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 47
    const-string v0, "OneClickProcessor"

    const-string v1, "onBlueToothStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 52
    return-void
.end method

.method public onDormantStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string v0, "OneClickProcessor"

    const-string v1, "onDormantStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    const v1, 0x7f05008e

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public onMusicStatus()V
    .locals 3

    .prologue
    .line 27
    const-string v0, "OneClickProcessor"

    const-string v1, "onMusicStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 34
    return-void
.end method

.method public onNetStatus()V
    .locals 3

    .prologue
    .line 37
    const-string v0, "OneClickProcessor"

    const-string v1, "onNetStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeConnectNetStatus()V

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 42
    return-void
.end method

.method public onReadyStatus()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "OneClickProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->doWakeupSuccess()V

    .line 72
    return-void
.end method

.method public onRecordingStatus()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "OneClickProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelAll()V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->doWakeupSuccess()V

    .line 67
    return-void
.end method

.method public onRingingStatus()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "OneClickProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 89
    return-void
.end method

.method public onSpeechHandingStatus()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "OneClickProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelAll()V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 60
    return-void
.end method
