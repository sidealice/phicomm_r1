.class public Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;
.super Lcom/unisound/vui/handler/SimpleSessionManagementHandler;
.source "DefaultLightsHandler.java"

# interfaces
.implements Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

.field private mNetChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/handler/session/light/LightListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "lightListener"    # Lcom/unisound/vui/handler/session/light/LightListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    .line 30
    new-instance v0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-direct {v0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mNetChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    .line 31
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mNetChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->setStateListener(Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;)V

    .line 32
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mNetChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->registerNetReceiverAndCheck(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;)Lcom/unisound/vui/handler/session/light/LightListener;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    return-object v0
.end method


# virtual methods
.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onInterrupt()V

    .line 38
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p2}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    .local v0, "mError":Lorg/json/JSONObject;
    const-string v2, "errorCode"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "mErrorCode":Ljava/lang/String;
    const-string v2, "-90002"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-90005"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStop()V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 75
    return-void
.end method

.method protected onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStop()V

    .line 65
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStart()V

    .line 60
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onNetConnected()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onNetDisconnected()V

    .line 83
    return-void
.end method

.method public onNetConnecting()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onNetConnected()V

    .line 79
    return-void
.end method

.method public onNetDisconnected()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onNetDisconnected()V

    .line 87
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onTTSEnd()V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler$1;-><init>(Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 48
    const/4 v0, 0x0

    return v0
.end method

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
    .line 52
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleSessionManagementHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 53
    instance-of v0, p1, Lcom/unisound/ant/device/event/TurnOffWakeLightEvent;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onInterrupt()V

    .line 56
    :cond_0
    return-void
.end method
