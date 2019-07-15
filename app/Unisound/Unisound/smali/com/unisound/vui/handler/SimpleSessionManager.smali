.class public Lcom/unisound/vui/handler/SimpleSessionManager;
.super Lcom/unisound/vui/engine/ANTDuplexHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTDuplexHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    instance-of v0, p1, Lcom/unisound/vui/util/ExoConstants$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unisound/vui/handler/SessionRegister;->getInstance()Lcom/unisound/vui/handler/SessionRegister;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/handler/SessionRegister;->recycle()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTDuplexHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .locals 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "fireActiveInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimpleSessionManager"

    const-string v1, "fireActiveInterrupt %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "doActiveInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    :goto_0
    return-void

    :cond_0
    const-string v0, "doOneShotInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SimpleSessionManager"

    const-string v1, "fireOneShotInterrupt %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "doOneShotInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto :goto_0

    :cond_1
    const-string v0, "fireAsrInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SimpleSessionManager"

    const-string v1, "fireAsrInterrupt %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "doAsrInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto :goto_0

    :cond_2
    const-string v0, "firePassiveInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SimpleSessionManager"

    const-string v1, "firePassiveInterrupt %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "doPassiveInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto :goto_0

    :cond_3
    const-string v0, "fireResume"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SimpleSessionManager"

    const-string v1, "fireResume %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "doResume"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto/16 :goto_0

    :cond_4
    const-string v0, "firEngineInitDone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SimpleSessionManager"

    const-string v1, "fireEngineInitDone %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "doEngineInitDone"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTDuplexHandler;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
