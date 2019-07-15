.class public Lcom/unisound/lib/push/mqtt/bean/MqttMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;
    }
.end annotation


# static fields
.field public static final MSG_TYPE_HISTORY:Ljava/lang/String; = "history"

.field public static final MSG_TYPE_PUSH:Ljava/lang/String; = "push"

.field public static final MSG_TYPE_UNREAD:Ljava/lang/String; = "unread"


# instance fields
.field private costTime:I

.field private message:Ljava/lang/String;

.field private result:Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

.field private returnCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCostTime()I
    .locals 1

    iget v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->costTime:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->result:Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

    return-object v0
.end method

.method public getReturnCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->returnCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCostTime(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->costTime:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->result:Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

    return-void
.end method

.method public setReturnCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->returnCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttMessage{costTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->costTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", returnCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->returnCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/push/mqtt/bean/MqttMessage;->result:Lcom/unisound/lib/push/mqtt/bean/MqttMessage$Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
