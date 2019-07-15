.class public Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;
.super Ljava/lang/Object;


# instance fields
.field private clientId:Ljava/lang/String;

.field private connectUrl:Ljava/lang/String;

.field private passWord:Ljava/lang/String;

.field private publish:Ljava/lang/String;

.field private subscribe:[Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->connectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->publish:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribe()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->subscribe:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setConnectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->connectUrl:Ljava/lang/String;

    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->passWord:Ljava/lang/String;

    return-void
.end method

.method public setPublish(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->publish:Ljava/lang/String;

    return-void
.end method

.method public setSubscribe([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->subscribe:[Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttClientParam{connectUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->connectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->passWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subscribe="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->subscribe:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", publish=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/bean/MqttClientParam;->publish:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
