.class public Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field public mDistrict:Ljava/lang/String;

.field public mHasAccuracy:Z

.field public mHasAltitude:Z

.field public mHasBearing:Z

.field public mHasSpeed:Z

.field public mLongitude:D

.field public mName:Ljava/lang/String;

.field public mPathPoints:Ljava/lang/String;

.field public mProvider:Ljava/lang/String;

.field public mProvince:Ljava/lang/String;

.field public mSpeed:F

.field public mStreet:Ljava/lang/String;

.field public mTime:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->type:I

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->latitude:D

    .line 39
    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mLongitude:D

    const-wide/16 v2, 0x0

    .line 77
    iput-wide v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mTime:J

    const/4 v2, 0x0

    .line 85
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAltitude:Z

    .line 89
    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAltitude:D

    .line 93
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasSpeed:Z

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mSpeed:F

    .line 101
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasBearing:Z

    .line 105
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mBearing:F

    .line 109
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAccuracy:Z

    .line 113
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAccuracy:F

    return-void
.end method

.method public constructor <init>(Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;)V
    .locals 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->type:I

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->latitude:D

    .line 39
    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mLongitude:D

    const-wide/16 v2, 0x0

    .line 77
    iput-wide v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mTime:J

    const/4 v2, 0x0

    .line 85
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAltitude:Z

    .line 89
    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAltitude:D

    .line 93
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasSpeed:Z

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mSpeed:F

    .line 101
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasBearing:Z

    .line 105
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mBearing:F

    .line 109
    iput-boolean v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAccuracy:Z

    .line 113
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAccuracy:F

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->type:I

    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->type:I

    .line 176
    iget-wide v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->latitude:D

    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->latitude:D

    .line 177
    iget-wide v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mLongitude:D

    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mLongitude:D

    .line 178
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mName:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mProvince:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mProvince:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCity:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCity:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mStreet:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mStreet:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddress:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCondition:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCondition:Ljava/lang/String;

    .line 187
    iget-object p1, p1, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .line 349
    iget v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAccuracy:F

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressDetail()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    .line 377
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .line 449
    iget v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mBearing:F

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 482
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 500
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mLongitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 413
    iget v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mSpeed:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 322
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->type:I

    return v0
.end method

.method public getmCondition()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getmPathPoints()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasSpeed:Z

    return v0
.end method

.method public parse2JSONObj()Lorg/json/JSONObject;
    .locals 4

    .line 575
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    .line 577
    iget v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 578
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "province"

    .line 579
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mProvince:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "city"

    .line 580
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cityCode"

    .line 581
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "destrict"

    .line 582
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "street"

    .line 583
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "address"

    .line 584
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "addressDetail"

    .line 585
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "condition"

    .line 586
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCondition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pathPoints"

    .line 587
    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    .line 588
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lng"

    .line 589
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 592
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public removeAltitude()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 394
    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAltitude:D

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAltitude:Z

    return-void
.end method

.method public removeBearing()V
    .locals 1

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mBearing:F

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasBearing:Z

    return-void
.end method

.method public removeSpeed()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mSpeed:F

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasSpeed:Z

    return-void
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAccuracy:F

    const/4 p1, 0x1

    .line 359
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAccuracy:Z

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setAddressDetail(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAddressDetail:Ljava/lang/String;

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 386
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mAltitude:D

    const/4 p1, 0x1

    .line 387
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasAltitude:Z

    return-void
.end method

.method public setBearing(F)V
    .locals 2

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    sub-float/2addr p1, v1

    goto :goto_1

    .line 464
    :cond_1
    iput p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mBearing:F

    const/4 p1, 0x1

    .line 465
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasBearing:Z

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "\u5e02"

    .line 527
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "\u5e02"

    .line 528
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 530
    :cond_0
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCity:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mDistrict:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 491
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 509
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mLongitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mProvince:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mSpeed:F

    const/4 p1, 0x1

    .line 423
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mHasSpeed:Z

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mStreet:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 340
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    return-void
.end method

.method public setmCondition(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mCondition:Ljava/lang/String;

    return-void
.end method

.method public setmPathPoints(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->mPathPoints:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/push/bean/LocationInfo;->parse2JSONObj()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
