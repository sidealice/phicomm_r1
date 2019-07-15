.class public Lcom/unisound/ant/device/service/ActionResponse;
.super Ljava/lang/Object;
.source "ActionResponse.java"


# instance fields
.field private actionResponseId:Ljava/lang/String;

.field private actionStatus:I

.field private actionTimestamp:Ljava/lang/String;

.field private detailInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionResponseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionResponseId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionStatus()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionStatus:I

    return v0
.end method

.method public getActionTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unisound/ant/device/service/ActionResponse;->detailInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setActionResponseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionResponseId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionResponseId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setActionStatus(I)V
    .locals 0
    .param p1, "actionStatus"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionStatus:I

    .line 35
    return-void
.end method

.method public setActionTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionTimestamp"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionTimestamp:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setDetailInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailInfo"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unisound/ant/device/service/ActionResponse;->detailInfo:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionResponse{actionResponseId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionResponseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionTimestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/service/ActionResponse;->actionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detailInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/service/ActionResponse;->detailInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
