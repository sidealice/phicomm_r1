.class public Lcom/unisound/vui/engine/ANTDuplexHandler;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;

# interfaces
.implements Lcom/unisound/vui/engine/ANTOutboundHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelASR()V

    return-void
.end method

.method public cancelEngine(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    return-void
.end method

.method public cancelTTS(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    return-void
.end method

.method public doPPTAction(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->doPPTAction()V

    return-void
.end method

.method public enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    return-void
.end method

.method public enterWakeup(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    return-void
.end method

.method public initializeMode(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->initializeMode()V

    return-void
.end method

.method public initializeSdk(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->initializeSdk()V

    return-void
.end method

.method public onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventCompileDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventCompileDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventFxAbnormalNoLeadingsilence(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalNoLeadingsilence(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventFxAbnormalSnrBad(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalSnrBad(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventFxAbnormalTooLoud(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalTooLoud(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventFxAbnormalTooQuiet(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalTooQuiet(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventGrammarCompiled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarCompiled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventGrammarInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventGrammarLoaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarLoaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventLoadGrammarDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventLoadGrammarDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventLocalEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventLocalEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventModelLoadFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventModelLoadFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventModelLoadSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventModelLoadSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventNetEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventNetEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventOneshotVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventOneshotVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventRecordingPrepared(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingPrepared(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventSpeechDetected(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventSpeechDetected(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventSpeechEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventSpeechEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventUserdataUploaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventUserdataUploaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventVocabInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVocabInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventVolumeChange(Lcom/unisound/vui/engine/ANTHandlerContext;I)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "volume"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVolumeChange(Lcom/unisound/vui/engine/ANTHandlerContext;I)Z

    move-result v0

    return v0
.end method

.method protected onASRNluEventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRNluEventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onASRResultRecognition(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultRecognition(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onNLUError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onNLUError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public onNLUEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onNLUEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public onNLUResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onNLUResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public onTTSError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected onTTSEventBufferBegin(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventBufferBegin(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventBufferReady(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventBufferReady(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventInit(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventInit(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventPause(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPause(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventRelease(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventRelease(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventResume(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventResume(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventSwitchBackendModelSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSwitchBackendModelSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventSynthesizerEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSynthesizerEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "localASR"    # Lnluparser/scheme/LocalASR;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z

    move-result v0

    return v0
.end method

.method public playBuffer(Lcom/unisound/vui/engine/ANTHandlerContext;[B)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playBuffer([B)V

    return-void
.end method

.method public playTTS(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    return-void
.end method

.method public setWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;Z)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p3, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2, p3}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    return-void
.end method

.method public stopASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    return-void
.end method

.method public stopWakeup(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    return-void
.end method

.method public updateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->updateWakeupWord(Ljava/util/List;)V

    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method
