.class public Lcom/unisound/ant/device/service/DeviceRequest;
.super Ljava/lang/Object;
.source "DeviceRequest.java"


# instance fields
.field agentProfile:Lcom/unisound/ant/device/profile/AgentProfileInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "agentProfile"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agentProfile"
    .end annotation
.end field

.field appkey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "appkey"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appkey"
    .end annotation
.end field

.field deviceId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field deviceProfile:Lcom/unisound/ant/device/profile/DeviceProfileInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceProfile"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceProfile"
    .end annotation
.end field

.field dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dialogProfile"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialogProfile"
    .end annotation
.end field

.field enviromentProfile:Lcom/unisound/ant/device/profile/EnvironmentProfileInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "enviromentProfile"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enviromentProfile"
    .end annotation
.end field

.field messageType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "messageType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageType"
    .end annotation
.end field

.field reqId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "reqId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reqId"
    .end annotation
.end field

.field serviceProfile:Lcom/unisound/ant/device/profile/DstServiceProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "serviceProfile"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviceProfile"
    .end annotation
.end field

.field userProfile:Lcom/unisound/ant/device/profile/UserProfileInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userProfile"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userProfile"
    .end annotation
.end field

.field version:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "version"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgentProfile()Lcom/unisound/ant/device/profile/AgentProfileInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->agentProfile:Lcom/unisound/ant/device/profile/AgentProfileInfo;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/unisound/ant/device/profile/DeviceProfileInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->deviceProfile:Lcom/unisound/ant/device/profile/DeviceProfileInfo;

    return-object v0
.end method

.method public getDialogProfile()Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    return-object v0
.end method

.method public getEnviromentProfile()Lcom/unisound/ant/device/profile/EnvironmentProfileInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->enviromentProfile:Lcom/unisound/ant/device/profile/EnvironmentProfileInfo;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProfile()Lcom/unisound/ant/device/profile/DstServiceProfile;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->serviceProfile:Lcom/unisound/ant/device/profile/DstServiceProfile;

    return-object v0
.end method

.method public getUserProfile()Lcom/unisound/ant/device/profile/UserProfileInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->userProfile:Lcom/unisound/ant/device/profile/UserProfileInfo;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unisound/ant/device/service/DeviceRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAgentProfile(Lcom/unisound/ant/device/profile/AgentProfileInfo;)V
    .locals 0
    .param p1, "agentProfile"    # Lcom/unisound/ant/device/profile/AgentProfileInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->agentProfile:Lcom/unisound/ant/device/profile/AgentProfileInfo;

    .line 114
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->appkey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->deviceId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setDeviceProfile(Lcom/unisound/ant/device/profile/DeviceProfileInfo;)V
    .locals 0
    .param p1, "deviceProfile"    # Lcom/unisound/ant/device/profile/DeviceProfileInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->deviceProfile:Lcom/unisound/ant/device/profile/DeviceProfileInfo;

    .line 81
    return-void
.end method

.method public setDialogProfile(Lcom/unisound/ant/device/sessionlayer/DialogProfile;)V
    .locals 0
    .param p1, "dialogProfile"    # Lcom/unisound/ant/device/sessionlayer/DialogProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .line 97
    return-void
.end method

.method public setEnviromentProfile(Lcom/unisound/ant/device/profile/EnvironmentProfileInfo;)V
    .locals 0
    .param p1, "enviromentProfile"    # Lcom/unisound/ant/device/profile/EnvironmentProfileInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->enviromentProfile:Lcom/unisound/ant/device/profile/EnvironmentProfileInfo;

    .line 106
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->messageType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->reqId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setServiceProfile(Lcom/unisound/ant/device/profile/DstServiceProfile;)V
    .locals 0
    .param p1, "serviceProfile"    # Lcom/unisound/ant/device/profile/DstServiceProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->serviceProfile:Lcom/unisound/ant/device/profile/DstServiceProfile;

    .line 89
    return-void
.end method

.method public setUserProfile(Lcom/unisound/ant/device/profile/UserProfileInfo;)V
    .locals 0
    .param p1, "userProfile"    # Lcom/unisound/ant/device/profile/UserProfileInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->userProfile:Lcom/unisound/ant/device/profile/UserProfileInfo;

    .line 122
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    iput-object p1, p0, Lcom/unisound/ant/device/service/DeviceRequest;->version:Ljava/lang/String;

    .line 57
    return-void
.end method
