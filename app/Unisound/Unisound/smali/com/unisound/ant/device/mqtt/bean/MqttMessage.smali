.class public Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;
    }
.end annotation


# instance fields
.field private costTime:I

.field private message:Ljava/lang/String;

.field private result:Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

.field private returnCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCostTime()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->costTime:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->result:Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    return-object v0
.end method

.method public getReturnCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->returnCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCostTime(I)V
    .locals 0
    .param p1, "costTime"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->costTime:I

    .line 21
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->message:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setResult(Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->result:Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    .line 45
    return-void
.end method

.method public setReturnCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnCode"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->returnCode:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttMessage{costTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->costTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->returnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->result:Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
