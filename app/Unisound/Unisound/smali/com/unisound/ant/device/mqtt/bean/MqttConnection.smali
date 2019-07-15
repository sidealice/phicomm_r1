.class public Lcom/unisound/ant/device/mqtt/bean/MqttConnection;
.super Ljava/lang/Object;
.source "MqttConnection.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private keepAlive:I

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ssl:Ljava/lang/String;

.field private sslPassword:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepAlive()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->keepAlive:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSsl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->ssl:Ljava/lang/String;

    return-object v0
.end method

.method public getSslPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->sslPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->ip:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setKeepAlive(I)V
    .locals 0
    .param p1, "keepAlive"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->keepAlive:I

    .line 32
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->password:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->port:I

    .line 48
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->protocol:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSsl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssl"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->ssl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSslPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "sslPassword"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->sslPassword:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->username:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttConnection{ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->keepAlive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocol=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->ssl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sslPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->sslPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->username:Ljava/lang/String;

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
