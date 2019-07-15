.class public abstract Lcom/unisound/vui/handler/ANTEventDispatcher;
.super Lcom/unisound/vui/engine/ANTInboundHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTInboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_0
    return-void
.end method

.method protected onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onASREvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASREvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventOneshotVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventSpeechDetected(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventSpeechEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventUserdataUploaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarCompiled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarLoaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVocabInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalTooLoud(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalTooQuiet(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalSnrBad(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalNoLeadingsilence(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_11
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventLocalEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_12
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventNetEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_13
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_14
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingPrepared(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_15
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventModelLoadSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_16
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventModelLoadFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_17
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRNluEventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :sswitch_18
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UPDATE_VOLUME:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVolumeChange(Lcom/unisound/vui/engine/ANTHandlerContext;I)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventCompileDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventLoadGrammarDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x44d -> :sswitch_0
        0x44e -> :sswitch_1
        0x44f -> :sswitch_2
        0x450 -> :sswitch_4
        0x451 -> :sswitch_5
        0x453 -> :sswitch_6
        0x454 -> :sswitch_7
        0x455 -> :sswitch_8
        0x456 -> :sswitch_9
        0x457 -> :sswitch_a
        0x458 -> :sswitch_b
        0x459 -> :sswitch_c
        0x45a -> :sswitch_d
        0x45b -> :sswitch_e
        0x45c -> :sswitch_f
        0x45d -> :sswitch_10
        0x45e -> :sswitch_11
        0x45f -> :sswitch_12
        0x460 -> :sswitch_13
        0x461 -> :sswitch_17
        0x462 -> :sswitch_18
        0x463 -> :sswitch_19
        0x469 -> :sswitch_1a
        0x46a -> :sswitch_1b
        0x46b -> :sswitch_14
        0x47e -> :sswitch_15
        0x47f -> :sswitch_16
        0x708 -> :sswitch_3
        0xc21 -> :sswitch_1c
        0xc23 -> :sswitch_1d
    .end sparse-switch
.end method

.method protected onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventCompileDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalNoLeadingsilence(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalSnrBad(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalTooLoud(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalTooQuiet(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventGrammarCompiled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventGrammarInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventGrammarLoaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventLoadGrammarDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventLocalEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventModelLoadFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventModelLoadSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventNetEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventOneshotVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingPrepared(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventSpeechDetected(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventSpeechEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventUserdataUploaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventVocabInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventVolumeChange(Lcom/unisound/vui/engine/ANTHandlerContext;I)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "volume"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASRNluEventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onASRResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultRecognition(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4b1 -> :sswitch_1
        0x4b2 -> :sswitch_0
        0x4ba -> :sswitch_2
        0xc81 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASRResultRecognition(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method

.method public onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventInit(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSynthesizerEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventBufferBegin(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventBufferReady(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPause(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventResume(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventRelease(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSwitchBackendModelSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method protected onTTSEventBufferBegin(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventBufferReady(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventInit(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventPause(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventRelease(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventResume(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventSwitchBackendModelSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventSynthesizerEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "localASR"    # Lnluparser/scheme/LocalASR;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
