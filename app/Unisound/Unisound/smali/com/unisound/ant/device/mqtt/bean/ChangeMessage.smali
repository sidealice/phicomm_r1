.class public Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;
.super Lcom/unisound/ant/device/mqtt/bean/SupMessage;
.source "ChangeMessage.java"


# instance fields
.field private msgId:Ljava/lang/String;

.field private msgType:Ljava/lang/String;

.field private ts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/bean/SupMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->ts:J

    return-wide v0
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->msgId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgType"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->msgType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTs(J)V
    .locals 1
    .param p1, "ts"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->ts:J

    .line 27
    return-void
.end method
