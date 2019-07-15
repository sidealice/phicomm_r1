.class public Lcom/phicomm/speaker/device/custom/speech/SpeechManager;
.super Ljava/lang/Object;
.source "SpeechManager.java"


# instance fields
.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 0
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 18
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 73
    return-void
.end method

.method public cancelRecognize()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 46
    return-void
.end method

.method public cancelTTS()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 65
    return-void
.end method

.method public doWakeupSuccess()V
    .locals 3

    .prologue
    .line 79
    const/16 v1, 0xc81

    .line 80
    .local v1, "type":I
    const-string v0, "{\"local_asr\":[{\"engine_mode\":\"wakeup\",\"result_type\":\"full\",\"recognition_result\":\"  \u5c0f\u8baf\u5c0f\u8baf   \",\"score\":6.08,\"utteranceTime\":1230,\"outRecordingTime\":212210,\"delayTime\":280}]}"

    .line 81
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 82
    return-void
.end method

.method public exitMusicDomain()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doFinishAllInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 89
    return-void
.end method

.method public playTTS(I)V
    .locals 4
    .param p1, "ttsID"    # I

    .prologue
    .line 54
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "ttsContent":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    new-instance v2, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    const-string v3, "playTTS"

    invoke-direct {v2, v3, v0}, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->write(Ljava/lang/Object;)V

    .line 58
    .end local v0    # "ttsContent":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startRecognize()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->enterASR()V

    .line 39
    return-void
.end method

.method public startWakeup()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 25
    return-void
.end method

.method public stopRinging()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->doWakeupSuccess()V

    .line 101
    return-void
.end method

.method public stopSession()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doActiveInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 93
    return-void
.end method

.method public stopWakeup()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 32
    return-void
.end method
