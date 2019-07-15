.class public Lcom/unisound/vui/common/location/bean/LocationInfo;
.super Ljava/lang/Object;


# static fields
.field public static final GPS_BAIDU:I = 0x4

.field public static final GPS_GAODE:I = 0x5

.field public static final GPS_GOOGLE:I = 0x2

.field public static final GPS_ORIGIN:I


# instance fields
.field public latitude:D

.field public mAccuracy:F

.field public mAddress:Ljava/lang/String;

.field public mAddressDetail:Ljava/lang/String;

.field public mAltitude:D

.field public mBearing:F

.field public mCity:Ljava/lang/String;

.field public mCityCode:Ljava/lang/String;

.field public mCondition:Ljava/lang/String;

.field public mCountry:Ljava/lang/String;

.field public mDistrict:Ljava/lang/String;

.field public mHasAccuracy:Z

.field public mHasAltitude:Z

.field public mHasBearing:Z

.field public mHasSpeed:Z

.field public mLongitude:D

.field public mName:Ljava/lang/String;

.field public mPathPoints:Ljava/lang/String;

.field public mProvince:Ljava/lang/String;

.field public mSpeed:F

.field public mStreet:Ljava/lang/String;

.field public mTime:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->type:I

    iput-wide v4, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->latitude:D

    iput-wide v4, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mLongitude:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mTime:J

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAltitude:Z

    iput-wide v4, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAltitude:D

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasSpeed:Z

    iput v3, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mSpeed:F

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasBearing:Z

    iput v3, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mBearing:F

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAccuracy:Z

    iput v3, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAccuracy:F

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/common/location/bean/LocationInfo;)V
    .locals 6
    .param p1, "l"    # Lcom/unisound/vui/common/location/bean/LocationInfo;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->type:I

    iput-wide v4, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->latitude:D

    iput-wide v4, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mLongitude:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mTime:J

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAltitude:Z

    iput-wide v4, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAltitude:D

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasSpeed:Z

    iput v3, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mSpeed:F

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasBearing:Z

    iput v3, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mBearing:F

    iput-boolean v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAccuracy:Z

    iput v3, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAccuracy:F

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->type:I

    iput v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->type:I

    iget-wide v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->latitude:D

    iput-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->latitude:D

    iget-wide v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mLongitude:D

    iput-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mLongitude:D

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mName:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mProvince:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mProvince:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCity:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCity:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mStreet:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mStreet:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddress:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCondition:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCondition:Ljava/lang/String;

    iget-object v0, p1, Lcom/unisound/vui/common/location/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAccuracy:F

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mBearing:F

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mLongitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mSpeed:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->type:I

    return v0
.end method

.method public getmCondition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getmPathPoints()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccuracy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasSpeed:Z

    return v0
.end method

.method public parse2JSONObj()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    iget v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "name"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "country"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "province"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mProvince:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "city"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cityCode"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "destrict"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "street"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mStreet:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "address"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "addressDetail"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "condition"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCondition:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pathPoints"

    iget-object v2, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lat"

    invoke-virtual {p0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "lng"

    invoke-virtual {p0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAltitude()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAltitude:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAltitude:Z

    return-void
.end method

.method public removeBearing()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mBearing:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasBearing:Z

    return-void
.end method

.method public removeSpeed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mSpeed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasSpeed:Z

    return-void
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    iput p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAccuracy:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAccuracy:Z

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setAddressDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    iput-wide p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mAltitude:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasAltitude:Z

    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    sub-float/2addr p1, v1

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mBearing:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasBearing:Z

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "\u5e02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "\u5e02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCity:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCityCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCountry"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCountry:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDistrict"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    iput-wide p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "mLongitude"    # D

    .prologue
    iput-wide p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mLongitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mProvince:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mProvince:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    iput p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mSpeed:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mHasSpeed:Z

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStreet"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mStreet:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    return-void
.end method

.method public setmCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCondition"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mCondition:Ljava/lang/String;

    return-void
.end method

.method public setmPathPoints(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPathPoints"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->parse2JSONObj()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
