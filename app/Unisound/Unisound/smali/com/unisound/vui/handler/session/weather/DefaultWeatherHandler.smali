.class public Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultWeatherHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/WeatherIntent;",
        "Lnluparser/scheme/WeatherResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWeatherHandler"


# instance fields
.field private content:Ljava/lang/String;

.field private isDelayNeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->isDelayNeeded:Z

    .line 26
    const-string v0, "session_weather"

    iput-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->sessionName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private afterEventRecived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/WeatherIntent;",
            "Lnluparser/scheme/WeatherResult;",
            ">;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/WeatherIntent;Lnluparser/scheme/WeatherResult;>;"
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Data;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->content:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->doCtxAction(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->isDelayNeeded:Z

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    sget v0, Lcom/unisound/vui/handler/session/weather/R$array;->tts_weather_no_result:I

    .line 63
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    invoke-static {v0, v2, v1}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->content:Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->doCtxAction(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 65
    iput-boolean v2, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->isDelayNeeded:Z

    goto :goto_0
.end method

.method private doCtxAction(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/WeatherIntent;",
            "Lnluparser/scheme/WeatherResult;",
            ">;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/WeatherIntent;Lnluparser/scheme/WeatherResult;>;"
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 76
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 77
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->content:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->content:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private exit(Z)V
    .locals 3
    .param p1, "fireResume"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 102
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 103
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 104
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->reset()V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 108
    :cond_0
    return-void
.end method

.method private interrupt(Ljava/lang/String;)V
    .locals 3
    .param p1, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "DefaultWeatherHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----interruptType----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 113
    const-string v0, "doOneShotInterrupt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->reset()V

    .line 117
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
    .line 19
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/WeatherIntent;",
            "Lnluparser/scheme/WeatherResult;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/WeatherIntent;Lnluparser/scheme/WeatherResult;>;"
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.yunzhisheng.weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p2}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->interrupt(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/WeatherIntent;",
            "Lnluparser/scheme/WeatherResult;",
            ">;",
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
    .line 46
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/WeatherIntent;Lnluparser/scheme/WeatherResult;>;"
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->afterEventRecived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 48
    return-void
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->setPriority(I)V

    .line 31
    return-void
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 40
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x1

    .line 82
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->eventReceived:Z

    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;->exit(Z)V

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method
