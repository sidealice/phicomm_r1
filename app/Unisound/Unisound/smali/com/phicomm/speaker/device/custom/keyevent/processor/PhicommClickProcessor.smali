.class public abstract Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.super Ljava/lang/Object;
.source "PhicommClickProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommStatusListener;


# instance fields
.field private deviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

.field protected mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field protected mContext:Landroid/content/Context;

.field protected mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field protected mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

.field protected mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .locals 1
    .param p1, "antEngine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 28
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 30
    new-instance v0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    .line 31
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 32
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->deviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 33
    return-void
.end method

.method private dispatchDeviceStatus(I)V
    .locals 1
    .param p1, "deviceStatus"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->isRingingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onRingingStatus()V

    .line 76
    :goto_0
    return-void

    .line 59
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 61
    :pswitch_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->dispatchReadyStatus()V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->dispatchMusicStatus()V

    goto :goto_0

    .line 67
    :pswitch_3
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onNetStatus()V

    goto :goto_0

    .line 70
    :pswitch_4
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onBlueToothStatus()V

    goto :goto_0

    .line 73
    :pswitch_5
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onDormantStatus()V

    goto :goto_0

    .line 59
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

.method private dispatchMusicStatus()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onMusicStatus()V

    .line 95
    return-void
.end method

.method private dispatchReadyStatus()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onRecordingStatus()V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->isSpeechHandling(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onSpeechHandingStatus()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onReadyStatus()V

    goto :goto_0
.end method

.method private isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z
    .locals 1
    .param p1, "mANTEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    return v0
.end method

.method private isRingingStatus()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    .line 80
    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeechHandling(Lcom/unisound/vui/engine/ANTEngine;)Z
    .locals 1
    .param p1, "mANTEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 103
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


# virtual methods
.method public final onTriggered()V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->deviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    .line 40
    .local v0, "deviceStatus":I
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->dispatchDeviceStatus(I)V

    .line 41
    return-void
.end method

.method protected turnOffWakeupLightsIfNeeds()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isRecognition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 51
    :cond_1
    return-void
.end method
