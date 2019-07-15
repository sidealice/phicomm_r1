.class public abstract Lcom/unisound/vui/handler/SimpleSessionManagementHandler;
.super Lcom/unisound/vui/engine/ANTDuplexHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleSessionManagementHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTDuplexHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method protected doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    return-void
.end method

.method protected fireActiveInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "SimpleSessionManagementHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireActiveInterrupt:"

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

    const-string v0, "fireActiveInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method

.method protected fireAsrInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "SimpleSessionManagementHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireAsrInterrupt:"

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

    const-string v0, "fireAsrInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method

.method protected fireEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "firEngineInitDone"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method

.method protected fireOneShotInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "SimpleSessionManagementHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireOneShotInterrupt:"

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

    const-string v0, "fireOneShotInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method

.method protected firePassiveInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "SimpleSessionManagementHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firePassiveInterrupt:"

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

    const-string v0, "firePassiveInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method

.method protected fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "SimpleSessionManagementHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireResume:"

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

    const-string v0, "fireResume"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method

.method protected manageState(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "doActiveInterrupt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "doActiveInterrupt"

    invoke-virtual {p0, p2, v0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "doResume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "doPassiveInterrupt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "doPassiveInterrupt"

    invoke-virtual {p0, p2, v0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "doAsrInterrupt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "doAsrInterrupt"

    invoke-virtual {p0, p2, v0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "doOneShotInterrupt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "doOneShotInterrupt"

    invoke-virtual {p0, p2, v0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "doFinishAllInterrupt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "doFinishAllInterrupt"

    invoke-virtual {p0, p2, v0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    return-void
.end method
