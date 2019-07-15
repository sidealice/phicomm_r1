.class public Lcom/unisound/vui/handler/session/DefaultGuideHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "{\"local_asr\":[{\"engine_mode\":\"wakeup\",\"result_type\":\"full\",\"recognition_result\":\"  \u5c0f\u8baf\u5c0f\u8baf   \",\"score\":6.08,\"utteranceTime\":1230,\"outRecordingTime\":212210,\"delayTime\":280}]}"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/DefaultGuideHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    const/16 v2, 0xc81

    invoke-interface {v1, v2, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method


# virtual methods
.method protected a(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    invoke-direct {p0}, Lcom/unisound/vui/handler/session/DefaultGuideHandler;->a()V

    return-void
.end method

.method protected a(Lnluparser/scheme/NLU;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "cn.yunzhisheng.wakeupword"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/DefaultGuideHandler;->a(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/DefaultGuideHandler;->a(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected initPriority()V
    .locals 1

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/DefaultGuideHandler;->setPriority(I)V

    return-void
.end method
