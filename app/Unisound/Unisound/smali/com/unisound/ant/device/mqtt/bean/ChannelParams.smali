.class public Lcom/unisound/ant/device/mqtt/bean/ChannelParams;
.super Ljava/lang/Object;
.source "ChannelParams.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field public connAccessId:Ljava/lang/String;

.field public mHBOwnerId:Ljava/lang/String;

.field public mHBServerIp:Ljava/lang/String;

.field public mHBServerPort:I

.field public mSRDeviceId:Ljava/lang/String;

.field public mSROwnerId:Ljava/lang/String;

.field public mSRServerIp:Ljava/lang/String;

.field public mSRServerPort:I

.field private tcDeviceId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field public udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "udid"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v1, "10.10.11.2"

    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSRServerIp:Ljava/lang/String;

    .line 27
    const/16 v1, 0x1f9a

    iput v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSRServerPort:I

    .line 34
    const-string v1, "kDzBV2xaZnShsidc6FD+swkDpKV54renxqDEH+OmemY="

    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->tcDeviceId:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "phone"

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 41
    .local v0, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    .line 43
    .end local v0    # "phoneManager":Landroid/telephony/TelephonyManager;
    :cond_0
    iput-object p2, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->udid:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mHBOwnerId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSRDeviceId:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSROwnerId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getConnAccessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->connAccessId:Ljava/lang/String;

    return-object v0
.end method

.method public getTcDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->tcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, ""

    .line 98
    :goto_0
    return-object v1

    .line 94
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->appKey:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->appSecret:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setConnAccessId(Ljava/lang/String;)V
    .locals 0
    .param p1, "connAccessId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->connAccessId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTcDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcDeviceId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->tcDeviceId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->udid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelParams{mHBServerIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mHBServerIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHBServerPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mHBServerPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", udid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHBOwnerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mHBOwnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSRServerIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSRServerIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSRServerPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSRServerPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSRDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSRDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSROwnerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->mSROwnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connAccessId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->connAccessId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tcDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->tcDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
