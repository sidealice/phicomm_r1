.class public Lcom/unisound/lib/msgcenter/service/ActionResponse;
.super Ljava/lang/Object;
.source "ActionResponse.java"


# static fields
.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_OK:I


# instance fields
.field private actionResponseId:Ljava/lang/String;

.field private actionStatus:I

.field private actionTimestamp:Ljava/lang/String;

.field private detailInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionResponseId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionResponseId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionStatus()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionStatus:I

    return v0
.end method

.method public getActionTimestamp()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->detailInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setActionResponseId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionResponseId:Ljava/lang/String;

    return-void
.end method

.method public setActionStatus(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionStatus:I

    return-void
.end method

.method public setActionTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionTimestamp:Ljava/lang/String;

    return-void
.end method

.method public setDetailInfo(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->detailInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionResponse{actionResponseId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionResponseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionTimestamp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->actionStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", detailInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/service/ActionResponse;->detailInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
