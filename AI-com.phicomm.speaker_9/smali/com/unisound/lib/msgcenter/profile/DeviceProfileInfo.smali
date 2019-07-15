.class public Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;
.super Ljava/lang/Object;
.source "DeviceProfileInfo.java"


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

.field private deviceModel:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private generalInfo:Lcom/unisound/lib/msgcenter/bean/GeneralInfo;

.field private pUdid:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAiChip()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->aiChip:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->appKey:Ljava/lang/String;

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

    .line 118
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->capabilites:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneralInfo()Lcom/unisound/lib/msgcenter/bean/GeneralInfo;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->generalInfo:Lcom/unisound/lib/msgcenter/bean/GeneralInfo;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getpUdid()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->pUdid:Ljava/lang/String;

    return-object v0
.end method

.method public setAiChip(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->aiChip:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->appKey:Ljava/lang/String;

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

    .line 127
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->capabilites:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setGeneralInfo(Lcom/unisound/lib/msgcenter/bean/GeneralInfo;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->generalInfo:Lcom/unisound/lib/msgcenter/bean/GeneralInfo;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->udid:Ljava/lang/String;

    return-void
.end method

.method public setpUdid(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DeviceProfileInfo;->pUdid:Ljava/lang/String;

    return-void
.end method
