.class public abstract Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.super Lcom/unisound/vui/handler/SimpleSessionManagementHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/unisound/vui/handler/SimpleSessionManagementHandler;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleUserEvent"

.field private static final WAKEUP_TIMEOUT_MESSAGE:I

.field private static activeHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field protected errorTime:I

.field protected eventReceived:Z

.field private handler:Landroid/os/Handler;

.field private final matcher:Lcom/unisound/vui/util/internal/e;

.field protected playCancelTTS:Z

.field private priority:I

.field protected sessionName:Ljava/lang/String;

.field protected shouldResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->activeHandlers:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;-><init>()V

    iput-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->playCancelTTS:Z

    iput-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->shouldResume:Z

    const-class v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lcom/unisound/vui/util/internal/e;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->matcher:Lcom/unisound/vui/util/internal/e;

    invoke-virtual {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->initPriority()V

    invoke-virtual {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->initHandler()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    .local p1, "parserResultType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;-><init>()V

    iput-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->playCancelTTS:Z

    iput-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->shouldResume:Z

    invoke-static {p1}, Lcom/unisound/vui/util/internal/e;->a(Ljava/lang/Class;)Lcom/unisound/vui/util/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->matcher:Lcom/unisound/vui/util/internal/e;

    invoke-virtual {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->initPriority()V

    invoke-virtual {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->initHandler()V

    return-void
.end method

.method public static hasActiveHandlers()Z
    .locals 5

    sget-object v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->activeHandlers:Ljava/util/Set;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->activeHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->activeHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;

    const-string v2, "SimpleUserEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "active handler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public acceptInboundEvent(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->matcher:Lcom/unisound/vui/util/internal/e;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/util/internal/e;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    .local p1, "evt":Ljava/lang/Object;, "TI;"
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAsrEventTriggered(Lnluparser/scheme/LocalASR;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "localASR"    # Lnluparser/scheme/LocalASR;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    return-void
.end method

.method protected eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    .local p1, "evt":Ljava/lang/Object;, "TI;"
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->setDomainWakeUpWordList(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected getErrorTime()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->errorTime:I

    return v0
.end method

.method protected getInterruptType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    .local p1, "evt":Ljava/lang/Object;, "TI;"
    const-string v0, "doActiveInterrupt"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->priority:I

    return v0
.end method

.method protected increaseErrorTime()V
    .locals 1

    iget v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->errorTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->errorTime:I

    return-void
.end method

.method protected initHandler()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler$1;-><init>(Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected abstract initPriority()V
.end method

.method public localAsrEventTriggered(Lnluparser/scheme/LocalASR;Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "localASR"    # Lnluparser/scheme/LocalASR;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected mark(Z)V
    .locals 3
    .param p1, "eventReceived"    # Z

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    const-string v0, "SimpleUserEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark true,hanler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived:Z

    sget-object v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->activeHandlers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    const-string v0, "SimpleUserEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onASREventEngineInitDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/NaviConfig;->setContext(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    return-void
.end method

.method public onTTSError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
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
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    iget-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    const-string v0, "SimpleUserEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTSEventPlayingEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    const-string v0, "SimpleUserEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeupEventSetWakeupwordDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onWakeupTimeOut()V
    .locals 2

    const-string v0, "SimpleUserEvent"

    const-string v1, "-onWakeupTimeOut-2"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected removeTimeoutMessage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 3

    const-string v0, "SimpleUserEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset,hanler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived:Z

    sget-object v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->activeHandlers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->resetErrorTime()V

    return-void
.end method

.method protected resetErrorTime()V
    .locals 2

    const-string v0, "SimpleUserEvent"

    const-string v1, "-resetErrorTime-"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->errorTime:I

    return-void
.end method

.method public sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ttsData"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Llogreport/FullLog;

    invoke-direct {v1, p1, p2}, Llogreport/FullLog;-><init>(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method

.method public sendTimeoutMessage(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->handler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setDomainWakeUpWordList(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    return-void
.end method

.method protected setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    iput p1, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->priority:I

    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 2
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler<TI;>;"
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->acceptInboundEvent(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->acceptInboundEvent0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->getInterruptType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->mark(Z)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :goto_0
    return-void

    :cond_2
    instance-of v0, p1, Lcom/unisound/vui/util/ExoConstants$a;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onDestroy(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :cond_3
    :goto_1
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lnluparser/scheme/LocalASR;

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getGlobalCancelWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lnluparser/scheme/LocalASR;

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lnluparser/scheme/LocalASR;

    invoke-virtual {p0, v0, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->cancelAsrEventTriggered(Lnluparser/scheme/LocalASR;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_1

    :cond_5
    move-object v0, p1

    check-cast v0, Lnluparser/scheme/LocalASR;

    invoke-virtual {p0, v0, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->localAsrEventTriggered(Lnluparser/scheme/LocalASR;Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->manageState(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_1
.end method
