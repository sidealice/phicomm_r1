.class Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationInfoParser;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parser(Lcom/baidu/location/c;)Lcom/unisound/vui/common/location/bean/LocationInfo;
    .locals 1
    .param p0, "bdLocation"    # Lcom/baidu/location/c;

    .prologue
    new-instance v0, Lcom/unisound/vui/common/location/bean/LocationInfo;

    invoke-direct {v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationInfoParser;->transportToUniLocationInfo(Lcom/unisound/vui/common/location/bean/LocationInfo;Lcom/baidu/location/c;)V

    return-object v0
.end method

.method private static transportToUniLocationInfo(Lcom/unisound/vui/common/location/bean/LocationInfo;Lcom/baidu/location/c;)V
    .locals 2
    .param p0, "uniLocatonInfo"    # Lcom/unisound/vui/common/location/bean/LocationInfo;
    .param p1, "bdLocation"    # Lcom/baidu/location/c;

    .prologue
    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setType(I)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->d()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->e()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/unisound/vui/common/location/bean/LocationInfo;->setLongitude(D)V

    return-void
.end method
