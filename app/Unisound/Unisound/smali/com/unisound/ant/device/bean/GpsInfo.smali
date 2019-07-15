.class public Lcom/unisound/ant/device/bean/GpsInfo;
.super Lcom/unisound/ant/device/bean/Parameter;
.source "GpsInfo.java"


# instance fields
.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private lat:D

.field private lon:D

.field private mapType:I

.field private province:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/unisound/ant/device/bean/Parameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->lon:D

    return-wide v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->mapType:I

    return v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/unisound/ant/device/bean/GpsInfo;->region:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->address:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->city:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->cityCode:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->country:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setLat(D)V
    .locals 1
    .param p1, "lat"    # D

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->lat:D

    .line 40
    return-void
.end method

.method public setLon(D)V
    .locals 1
    .param p1, "lon"    # D

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->lon:D

    .line 48
    return-void
.end method

.method public setMapType(I)V
    .locals 0
    .param p1, "mapType"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->mapType:I

    .line 24
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->province:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/unisound/ant/device/bean/GpsInfo;->region:Ljava/lang/String;

    .line 88
    return-void
.end method
