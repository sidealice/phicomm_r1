.class public Lnluparser/scheme/WeatherIntent;
.super Ljava/lang/Object;
.source "WeatherIntent.java"

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field city:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "city"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field cityCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cityCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cityCode"
    .end annotation
.end field

.field focusDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "focusDate"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "focusDate"
    .end annotation
.end field

.field province:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "province"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "province"
    .end annotation
.end field

.field topic:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "topic"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topic"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnluparser/scheme/WeatherIntent;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lnluparser/scheme/WeatherIntent;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusDate()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lnluparser/scheme/WeatherIntent;->focusDate:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lnluparser/scheme/WeatherIntent;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lnluparser/scheme/WeatherIntent;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lnluparser/scheme/WeatherIntent;->city:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lnluparser/scheme/WeatherIntent;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setFocusDate(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lnluparser/scheme/WeatherIntent;->focusDate:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lnluparser/scheme/WeatherIntent;->province:Ljava/lang/String;

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lnluparser/scheme/WeatherIntent;->topic:Ljava/lang/String;

    return-void
.end method
