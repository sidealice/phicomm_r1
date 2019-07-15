.class public Lnluparser/scheme/StockResult;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Result;


# instance fields
.field changeAmount:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mChangeAmount"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mChangeAmount"
    .end annotation
.end field

.field changeRate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mChangeRate"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mChangeRate"
    .end annotation
.end field

.field chartImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mChartImgUrl"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mChartImgUrl"
    .end annotation
.end field

.field code:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mCode"
    .end annotation
.end field

.field currentPrice:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mCurrentPrice"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mCurrentPrice"
    .end annotation
.end field

.field highestPrice:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mHighestPrice"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mHighestPrice"
    .end annotation
.end field

.field lowestPrice:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mLowestPrice"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mLowestPrice"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mName"
    .end annotation
.end field

.field todayOpeningPrice:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mTodayOpeningPrice"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTodayOpeningPrice"
    .end annotation
.end field

.field tradingVolume:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mtradingVolume"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mtradingVolume"
    .end annotation
.end field

.field updateTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mUpdateTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mUpdateTime"
    .end annotation
.end field

.field yesterdayClosingPrice:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mYesterdayClosingPrice"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mYesterdayClosingPrice"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->changeAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->changeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getChartImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->chartImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->currentPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getHighestPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->highestPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getLowestPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->lowestPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTodayOpeningPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->todayOpeningPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getTradingVolume()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->tradingVolume:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getYesterdayClosingPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/StockResult;->yesterdayClosingPrice:Ljava/lang/String;

    return-object v0
.end method

.method public setChangeAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "changeAmount"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->changeAmount:Ljava/lang/String;

    return-void
.end method

.method public setChangeRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "changeRate"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->changeRate:Ljava/lang/String;

    return-void
.end method

.method public setChartImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "chartImgUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->chartImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->code:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentPrice"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->currentPrice:Ljava/lang/String;

    return-void
.end method

.method public setHighestPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "highestPrice"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->highestPrice:Ljava/lang/String;

    return-void
.end method

.method public setLowestPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "lowestPrice"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->lowestPrice:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->name:Ljava/lang/String;

    return-void
.end method

.method public setTodayOpeningPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "todayOpeningPrice"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->todayOpeningPrice:Ljava/lang/String;

    return-void
.end method

.method public setTradingVolume(Ljava/lang/String;)V
    .locals 0
    .param p1, "tradingVolume"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->tradingVolume:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setYesterdayClosingPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "yesterdayClosingPrice"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/StockResult;->yesterdayClosingPrice:Ljava/lang/String;

    return-void
.end method
