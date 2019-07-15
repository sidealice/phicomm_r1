.class public Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;
.super Lcom/unisound/vui/engine/ANTHandlerAdapter;

# interfaces
.implements Lcom/unisound/vui/engine/ANTOutboundHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTHandlerAdapter;-><init>()V

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
