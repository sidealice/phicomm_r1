.class public Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;
.super Ljava/lang/Object;
.source "ResponseMsg.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private eventType:I

.field private msgId:Ljava/lang/String;

.field private sendStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->eventType:I

    return v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->sendStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->clientId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->eventType:I

    .line 20
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->msgId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSendStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendStatus"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ResponseMsg;->sendStatus:Ljava/lang/String;

    .line 36
    return-void
.end method
