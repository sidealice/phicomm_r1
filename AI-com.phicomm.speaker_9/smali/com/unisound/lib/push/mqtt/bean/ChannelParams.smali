.class public Lcom/unisound/lib/push/mqtt/bean/ChannelParams;
.super Ljava/lang/Object;


# instance fields
.field private appKey:Ljava/lang/String;

.field private appOsType:I

.field private appSecret:Ljava/lang/String;

.field private isUserLogin:Z

.field private tcDeviceId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field public udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->tcDeviceId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->isUserLogin:Z

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppOsType()I
    .locals 1

    iget v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->appOsType:I

    return v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getTcDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->tcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public isUserLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->isUserLogin:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setAppOsType(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->appOsType:I

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->appSecret:Ljava/lang/String;

    return-void
.end method

.method public setTcDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->tcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->token:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->udid:Ljava/lang/String;

    return-void
.end method

.method public setUserLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->isUserLogin:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
