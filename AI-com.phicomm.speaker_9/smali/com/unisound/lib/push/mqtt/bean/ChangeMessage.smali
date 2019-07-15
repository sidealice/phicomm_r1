.class public Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;
.super Lcom/unisound/lib/push/mqtt/bean/SupMessage;


# instance fields
.field private msgId:Ljava/lang/String;

.field private msgType:Ljava/lang/String;

.field private ts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/bean/SupMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->ts:J

    return-wide v0
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->msgType:Ljava/lang/String;

    return-void
.end method

.method public setTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisound/lib/push/mqtt/bean/ChangeMessage;->ts:J

    return-void
.end method
