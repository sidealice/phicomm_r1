.class public Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private connection:Lcom/unisound/ant/device/mqtt/bean/MqttConnection;

.field private msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lcom/unisound/ant/device/mqtt/bean/MqttConnection;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->connection:Lcom/unisound/ant/device/mqtt/bean/MqttConnection;

    return-object v0
.end method

.method public getMsgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->msgList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->totalCount:I

    return v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->clientId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setConnection(Lcom/unisound/ant/device/mqtt/bean/MqttConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/unisound/ant/device/mqtt/bean/MqttConnection;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->connection:Lcom/unisound/ant/device/mqtt/bean/MqttConnection;

    .line 69
    return-void
.end method

.method public setMsgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->msgList:Ljava/util/List;

    .line 85
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->totalCount:I

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->connection:Lcom/unisound/ant/device/mqtt/bean/MqttConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->msgList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
