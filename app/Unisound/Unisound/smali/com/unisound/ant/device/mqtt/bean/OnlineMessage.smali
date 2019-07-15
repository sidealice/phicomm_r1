.class public Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;
.super Lcom/unisound/ant/device/mqtt/bean/SupMessage;
.source "OnlineMessage.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientInfo:Lcom/unisound/ant/device/mqtt/bean/ClientInfo;

.field private eventType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/bean/SupMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Lcom/unisound/ant/device/mqtt/bean/ClientInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->clientInfo:Lcom/unisound/ant/device/mqtt/bean/ClientInfo;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->eventType:I

    return v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->clientId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setClientInfo(Lcom/unisound/ant/device/mqtt/bean/ClientInfo;)V
    .locals 0
    .param p1, "clientInfo"    # Lcom/unisound/ant/device/mqtt/bean/ClientInfo;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->clientInfo:Lcom/unisound/ant/device/mqtt/bean/ClientInfo;

    .line 35
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->eventType:I

    .line 27
    return-void
.end method
