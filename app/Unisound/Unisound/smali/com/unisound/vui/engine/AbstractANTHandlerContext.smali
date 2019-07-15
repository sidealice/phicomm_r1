.class public abstract Lcom/unisound/vui/engine/AbstractANTHandlerContext;
.super Lcom/unisound/vui/util/d;

# interfaces
.implements Lcom/unisound/vui/engine/ANTHandlerContext;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractANTHandlerContext"


# instance fields
.field private final antEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private final inbound:Z

.field private final name:Ljava/lang/String;

.field protected next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

.field private final outbound:Z

.field private final pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

.field protected prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/DefaultANTPipeline;ZZLjava/lang/String;)V
    .locals 1
    .param p1, "pipeline"    # Lcom/unisound/vui/engine/DefaultANTPipeline;
    .param p2, "inbound"    # Z
    .param p3, "outbound"    # Z
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/util/d;-><init>()V

    const-string v0, "name"

    invoke-static {p4, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/unisound/vui/engine/DefaultANTPipeline;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    iput-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    iput-object p1, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    iput-object p4, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->inbound:Z

    iput-boolean p3, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->outbound:Z

    return-void
.end method

.method private findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .locals 1

    :cond_0
    iget-object p0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->inbound:Z

    if-eqz v0, :cond_0

    return-object p0
.end method

.method private findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .locals 1

    :cond_0
    iget-object p0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->outbound:Z

    if-eqz v0, :cond_0

    return-object p0
.end method

.method private static inExceptionCaught(Ljava/lang/Throwable;)Z
    .locals 6
    .param p0, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_1
    return v0

    :cond_2
    const-string v5, "exceptionCaught"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private invokeExceptionCaught(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unisound/vui/engine/ANTHandler;->exceptionCaught(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AbstractANTHandlerContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "An exception was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyHandlerException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->inExceptionCaught(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractANTHandlerContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "An exception was thrown by a user handler while handling an exceptionCaught event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public androidContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public cancelASR()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->cancelASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cancelEngine()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->cancelEngine(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cancelTTS()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->cancelTTS(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doPPTAction()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->doPPTAction(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public engine()Lcom/unisound/vui/engine/ANTEngine;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method public enterASR()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enterWakeup(Z)V
    .locals 2
    .param p1, "playBeep"    # Z

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1, p1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->enterWakeup(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, p2, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireASREvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onASREvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, p2, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onASRResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "cause"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-direct {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public fireNLUError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, p2, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onNLUError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireNLUEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onNLUEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireNLUResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, p2, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onNLUResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, p2, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onTTSError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireTTSEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "type"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findNextContextInbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTInboundHandler;

    invoke-interface {v0, p1, v1}, Lcom/unisound/vui/engine/ANTInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getNext()Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    return-object v0
.end method

.method public getPrev()Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    return-object v0
.end method

.method public initializeMode()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->initializeMode(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initializeSdk()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->initializeSdk(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public pipeline()Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    return-object v0
.end method

.method public playBuffer([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1, p1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->playBuffer(Lcom/unisound/vui/engine/ANTHandlerContext;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public playTTS(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1, p1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->playTTS(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setWakeupWord(Ljava/util/List;Z)V
    .locals 2
    .param p2, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1, p1, p2}, Lcom/unisound/vui/engine/ANTOutboundHandler;->setWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopASR()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->stopASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopWakeup()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->stopWakeup(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateWakeupWord(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1, p1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->updateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->findPreContextOutbound()Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    invoke-interface {v0, v1, p1}, Lcom/unisound/vui/engine/ANTOutboundHandler;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
