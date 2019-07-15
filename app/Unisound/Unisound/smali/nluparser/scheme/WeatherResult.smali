.class public Lnluparser/scheme/WeatherResult;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/WeatherResult$WeatherDay;
    }
.end annotation


# instance fields
.field cityCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cityCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cityCode"
    .end annotation
.end field

.field cityName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cityName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cityName"
    .end annotation
.end field

.field errorCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field focusDateIndex:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "focusDateIndex"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "focusDateIndex"
    .end annotation
.end field

.field updateTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "updateTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field

.field weatherDays:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "weatherDays"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weatherDays"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/WeatherResult$WeatherDay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/WeatherResult;->weatherDays:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/WeatherResult;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/WeatherResult;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/WeatherResult;->errorCode:I

    return v0
.end method

.method public getFocusDateIndex()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/WeatherResult;->focusDateIndex:I

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/WeatherResult;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/WeatherResult$WeatherDay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/WeatherResult;->weatherDays:Ljava/util/List;

    return-object v0
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/WeatherResult;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/WeatherResult;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/WeatherResult;->errorCode:I

    return-void
.end method

.method public setFocusDateIndex(I)V
    .locals 0
    .param p1, "focusDateIndex"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/WeatherResult;->focusDateIndex:I

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/WeatherResult;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setWeatherDays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/WeatherResult$WeatherDay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "weatherDays":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/WeatherResult$WeatherDay;>;"
    iput-object p1, p0, Lnluparser/scheme/WeatherResult;->weatherDays:Ljava/util/List;

    return-void
.end method
