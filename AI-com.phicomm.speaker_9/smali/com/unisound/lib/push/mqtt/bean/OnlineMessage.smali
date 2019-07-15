.class public Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;
.super Lcom/unisound/lib/push/mqtt/bean/SupMessage;


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientInfo:Lcom/unisound/lib/push/mqtt/bean/ClientInfo;

.field private eventType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/bean/SupMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Lcom/unisound/lib/push/mqtt/bean/ClientInfo;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->clientInfo:Lcom/unisound/lib/push/mqtt/bean/ClientInfo;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->eventType:I

    return v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientInfo(Lcom/unisound/lib/push/mqtt/bean/ClientInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->clientInfo:Lcom/unisound/lib/push/mqtt/bean/ClientInfo;

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/lib/push/mqtt/bean/OnlineMessage;->eventType:I

    return-void
.end method
