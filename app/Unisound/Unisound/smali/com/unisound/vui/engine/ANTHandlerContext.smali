.class public interface abstract Lcom/unisound/vui/engine/ANTHandlerContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/AttributeMap;


# virtual methods
.method public abstract androidContext()Landroid/content/Context;
.end method

.method public abstract cancelASR()V
.end method

.method public abstract cancelEngine()V
.end method

.method public abstract cancelTTS()V
.end method

.method public abstract doPPTAction()V
.end method

.method public abstract engine()Lcom/unisound/vui/engine/ANTEngine;
.end method

.method public abstract enterASR()V
.end method

.method public abstract enterWakeup(Z)V
.end method

.method public abstract fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireASREvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireExceptionCaught(Ljava/lang/Throwable;)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireNLUError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireNLUEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireNLUResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireTTSEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;
.end method

.method public abstract handler()Lcom/unisound/vui/engine/ANTHandler;
.end method

.method public abstract initializeMode()V
.end method

.method public abstract initializeSdk()V
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract pipeline()Lcom/unisound/vui/engine/ANTPipeline;
.end method

.method public abstract playBuffer([B)V
.end method

.method public abstract playTTS(Ljava/lang/String;)V
.end method

.method public abstract setWakeupWord(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract stopASR()V
.end method

.method public abstract stopWakeup()V
.end method

.method public abstract updateWakeupWord(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/Object;)V
.end method
