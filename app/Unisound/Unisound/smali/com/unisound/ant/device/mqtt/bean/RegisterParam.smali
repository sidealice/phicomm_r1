.class public Lcom/unisound/ant/device/mqtt/bean/RegisterParam;
.super Ljava/lang/Object;
.source "RegisterParam.java"


# static fields
.field public static final ENCODING_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final dataVersion:Ljava/lang/String; = "v1"

.field public static final subsystemId:I = 0x4


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private tcDeviceId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "extras params"

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->extras:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->appKey:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->appSecret:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string v1, "v1"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->extras:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubsystemId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    :try_start_0
    const-string v1, "4"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTcDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->tcDeviceId:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, ""

    .line 110
    :goto_0
    return-object v1

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->token:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const-string v1, ""

    goto :goto_0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->udid:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->appKey:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->appSecret:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->extras:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTcDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcDeviceId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->tcDeviceId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->token:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->udid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterParam{appKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tcDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->tcDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", udid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->token:Ljava/lang/String;

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
