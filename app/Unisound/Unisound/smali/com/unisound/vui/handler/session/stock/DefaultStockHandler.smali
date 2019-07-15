.class public Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultStockHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/StockIntent;",
        "Lnluparser/scheme/StockResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 20
    const-string v0, "session_stock"

    iput-object v0, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->sessionName:Ljava/lang/String;

    .line 21
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
    .line 16
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

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
            "Lnluparser/scheme/StockIntent;",
            "Lnluparser/scheme/StockResult;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/StockIntent;Lnluparser/scheme/StockResult;>;"
    const-string v0, "cn.yunzhisheng.stock"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->interrupt(Ljava/lang/String;)V

    .line 100
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
    .line 16
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 12
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/StockIntent;",
            "Lnluparser/scheme/StockResult;",
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
    .line 34
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/StockIntent;Lnluparser/scheme/StockResult;>;"
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 35
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 36
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v7

    invoke-virtual {v7}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v7

    check-cast v7, Lnluparser/scheme/StockIntent;

    invoke-virtual {v7}, Lnluparser/scheme/StockIntent;->getName()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "stockName":Ljava/lang/String;
    const-string v0, ""

    .line 38
    .local v0, "mTtsContent":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v7

    invoke-virtual {v7}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 39
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v7

    invoke-virtual {v7}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v7

    check-cast v7, Lnluparser/scheme/StockResult;

    invoke-virtual {v7}, Lnluparser/scheme/StockResult;->getCurrentPrice()Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "stockPrice":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v7

    invoke-virtual {v7}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v7

    check-cast v7, Lnluparser/scheme/StockResult;

    invoke-virtual {v7}, Lnluparser/scheme/StockResult;->getChangeAmount()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "stockChangeAmount":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v7

    invoke-virtual {v7}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v7

    check-cast v7, Lnluparser/scheme/StockResult;

    invoke-virtual {v7}, Lnluparser/scheme/StockResult;->getChangeRate()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "stockChangeRate":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v7, "0.000"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "0.00"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 45
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/unisound/vui/handler/session/stock/R$string;->tts_stock_suspension:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 61
    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 71
    .end local v0    # "mTtsContent":Ljava/lang/String;
    .end local v1    # "stockChangeAmount":Ljava/lang/String;
    .end local v4    # "stockChangeRate":Ljava/lang/String;
    .end local v5    # "stockName":Ljava/lang/String;
    .end local v6    # "stockPrice":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 47
    .restart local v0    # "mTtsContent":Ljava/lang/String;
    .restart local v1    # "stockChangeAmount":Ljava/lang/String;
    .restart local v4    # "stockChangeRate":Ljava/lang/String;
    .restart local v5    # "stockName":Ljava/lang/String;
    .restart local v6    # "stockPrice":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 48
    .local v2, "rate":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v2, v8

    if-lez v7, :cond_3

    .line 49
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/unisound/vui/handler/session/stock/R$string;->tts_stock_rize:I

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    const/4 v10, 0x3

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_3
    const-wide/16 v8, 0x0

    cmpg-double v7, v2, v8

    if-gez v7, :cond_4

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 53
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/unisound/vui/handler/session/stock/R$string;->tts_stock_fell:I

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    const/4 v10, 0x3

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_4
    const-wide/16 v8, 0x0

    cmpl-double v7, v2, v8

    if-nez v7, :cond_0

    .line 57
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/unisound/vui/handler/session/stock/R$string;->tts_stock_unchange:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    .end local v1    # "stockChangeAmount":Ljava/lang/String;
    .end local v2    # "rate":D
    .end local v4    # "stockChangeRate":Ljava/lang/String;
    .end local v6    # "stockPrice":Ljava/lang/String;
    :cond_5
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/unisound/vui/handler/session/stock/R$string;->tts_stock_no_result:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 66
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelASR()V

    .line 67
    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public exit(ZZ)V
    .locals 3
    .param p1, "sendSessionEnd"    # Z
    .param p2, "fireResume"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 75
    iget-object v0, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 76
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->reset()V

    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->setPriority(I)V

    .line 25
    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 1
    .param p1, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->reset()V

    .line 85
    iget-object v0, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x1

    .line 90
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->eventReceived:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, v0, v0}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;->exit(ZZ)V

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method
