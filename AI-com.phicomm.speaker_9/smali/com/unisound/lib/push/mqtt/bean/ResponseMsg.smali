.class public Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;
.super Ljava/lang/Object;


# instance fields
.field private clientId:Ljava/lang/String;

.field private eventType:I

.field private msgId:Ljava/lang/String;

.field private sendStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->eventType:I

    return v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->sendStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->eventType:I

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setSendStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ResponseMsg;->sendStatus:Ljava/lang/String;

    return-void
.end method
