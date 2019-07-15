.class public Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultSmartHomeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_TYPE_NLU_UNIIOT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultSmartHomeHandler"


# instance fields
.field private smartDeviceMgr:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

.field private taskHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 84
    new-instance v0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler$1;

    invoke-direct {v0, p0}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler$1;-><init>(Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;)V

    iput-object v0, p0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->taskHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method private exitSession(Z)V
    .locals 3
    .param p1, "fireResume"    # Z

    .prologue
    .line 70
    const-string v0, "DefaultSmartHomeHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->reset()V

    .line 72
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 76
    :cond_0
    return-void
.end method

.method private reportServiceInfoToSessionLayer(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v1, "DefaultSmartHomeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportServiceInfoToSessionLayer message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 105
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "cn.yunzhisheng.setting.control.center"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->acceptInboundEvent0(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 5
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "answer":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getIotUniJson()Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getIotUniJson()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "iotJson":Ljava/lang/String;
    const-string v2, "DefaultSmartHomeHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get iotJson for CenterControl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, v1}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->reportServiceInfoToSessionLayer(Ljava/lang/String;)V

    .line 55
    .end local v1    # "iotJson":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    sget v2, Lcom/unisound/ant/platform/smarthome/R$string;->tts_unsupport:I

    const/4 v3, -0x1

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_2
    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->setPriority(I)V

    .line 42
    return-void
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 36
    new-instance v0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

    invoke-direct {v0, p1}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;-><init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->smartDeviceMgr:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

    .line 37
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;->exitSession(Z)V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method
