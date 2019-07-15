.class public Lcom/unisound/lib/bind/BaseDeviceProfileInfo;
.super Ljava/lang/Object;
.source "BaseDeviceProfileInfo.java"


# instance fields
.field private aiChip:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private capabilites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAiChip()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->aiChip:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->capabilites:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAiChip(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->aiChip:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setCapabilites(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->capabilites:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;->udid:Ljava/lang/String;

    return-void
.end method
