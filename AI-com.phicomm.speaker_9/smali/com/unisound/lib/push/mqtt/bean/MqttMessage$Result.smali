.class public Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/push/mqtt/bean/MqttMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private connection:Lcom/unisound/lib/push/mqtt/bean/MqttConnection;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lcom/unisound/lib/push/mqtt/bean/MqttConnection;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->connection:Lcom/unisound/lib/push/mqtt/bean/MqttConnection;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->totalCount:I

    return v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setConnection(Lcom/unisound/lib/push/mqtt/bean/MqttConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->connection:Lcom/unisound/lib/push/mqtt/bean/MqttConnection;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->list:Ljava/util/List;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->totalCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->connection:Lcom/unisound/lib/push/mqtt/bean/MqttConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
