.class public Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultIlleageChatHandler.java"


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
.field private static final TAG:Ljava/lang/String; = "DefaultIlleageChatHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    return-void
.end method

.method private exitSession()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;->reset()V

    .line 50
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
    .line 15
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

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
    .line 24
    const-string v0, "cn.yunzhisheng.illegal"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 4
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 29
    sget v1, Lcom/unisound/ant/platform/illeagechat/R$string;->tts_unsupport:I

    const/4 v2, -0x1

    .line 30
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "playContent":Ljava/lang/String;
    const-string v1, "ILLEGAL_DIRTY"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ILLEGAL_YELLOW"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ILLEGAL_SENSITIVE"

    .line 32
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v1

    invoke-virtual {v1}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_1
    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;->setPriority(I)V

    .line 21
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;->exitSession()V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method
