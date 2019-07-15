.class public Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;
.source "PhicommInterceptHandler.java"


# instance fields
.field private mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

.field private playTTS:Z


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/light/LightListener;)V
    .locals 1
    .param p1, "lightListener"    # Lcom/unisound/vui/handler/session/light/LightListener;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 25
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    .line 26
    return-void
.end method


# virtual methods
.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStop()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    const-string v2, "doFinishAllInterrupt"

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 35
    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 37
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStart()V

    .line 38
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 39
    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v0, v1

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 43
    const-string v2, "doFinishAllInterrupt"

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 44
    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 46
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStart()V

    .line 47
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 48
    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    invoke-static {}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->getInstance()Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-static {}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->getInstance()Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->stop()V

    move v0, v1

    .line 53
    goto :goto_0
.end method
