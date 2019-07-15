.class public Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
.super Ljava/lang/Object;
.source "PhicommMessage.java"


# instance fields
.field private data:Landroid/os/Parcelable;

.field private msgId:I

.field private replyType:I

.field private subReplyType:I

.field private subType:I

.field private type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 25
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 26
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 30
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 31
    iput p3, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 32
    return-void
.end method

.method public constructor <init>(IIILandroid/os/Parcelable;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 36
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 37
    iput p3, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 38
    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    .line 39
    return-void
.end method

.method public constructor <init>(IIILandroid/os/Parcelable;II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;
    .param p5, "replyType"    # I
    .param p6, "subReplyType"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 44
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 45
    iput p3, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 46
    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    .line 47
    iput p5, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    .line 48
    iput p6, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    .line 49
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    return v0
.end method

.method public getReplyType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    return v0
.end method

.method public getSubReplyType()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    return v0
.end method

.method public setData(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    .line 81
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 73
    return-void
.end method

.method public setReplyType(I)V
    .locals 0
    .param p1, "replyType"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    .line 89
    return-void
.end method

.method public setSubReplyType(I)V
    .locals 0
    .param p1, "subReplyType"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    .line 97
    return-void
.end method

.method public setSubType(I)V
    .locals 0
    .param p1, "subType"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 65
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhicommMessage{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subReplyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
