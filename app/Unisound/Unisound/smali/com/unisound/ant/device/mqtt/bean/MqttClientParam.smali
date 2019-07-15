.class public Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;
.super Ljava/lang/Object;
.source "MqttClientParam.java"


# instance fields
.field private clientid:Ljava/lang/String;

.field private connectUrl:Ljava/lang/String;

.field private passWord:Ljava/lang/String;

.field private publish:Ljava/lang/String;

.field private subscribe:[Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->clientid:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->connectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->publish:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribe()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->subscribe:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setClientid(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientid"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->clientid:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setConnectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectUrl"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->connectUrl:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "passWord"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->passWord:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPublish(Ljava/lang/String;)V
    .locals 0
    .param p1, "publish"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->publish:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSubscribe([Ljava/lang/String;)V
    .locals 0
    .param p1, "subscribe"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->subscribe:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->userName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttClientParam{connectUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->connectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->clientid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passWord=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->passWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscribe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->subscribe:[Ljava/lang/String;

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publish=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->publish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method
