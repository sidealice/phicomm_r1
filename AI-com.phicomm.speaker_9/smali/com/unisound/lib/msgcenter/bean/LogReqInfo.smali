.class public Lcom/unisound/lib/msgcenter/bean/LogReqInfo;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "LogReqInfo.java"


# instance fields
.field private editedResult:Ljava/lang/String;

.field private feedBackType:Ljava/lang/String;

.field private isCorrect:Z

.field private isUserEdited:Z

.field private logId:Ljava/lang/String;

.field private originResult:Ljava/lang/String;

.field private pageNo:I

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditedResult()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->editedResult:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedBackType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->feedBackType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->logId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginResult()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->originResult:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->pageNo:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->pageSize:I

    return v0
.end method

.method public isCorrect()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->isCorrect:Z

    return v0
.end method

.method public isUserEdited()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->isUserEdited:Z

    return v0
.end method

.method public setCorrect(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->isCorrect:Z

    return-void
.end method

.method public setEditedResult(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->editedResult:Ljava/lang/String;

    return-void
.end method

.method public setFeedBackType(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->feedBackType:Ljava/lang/String;

    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->logId:Ljava/lang/String;

    return-void
.end method

.method public setOriginResult(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->originResult:Ljava/lang/String;

    return-void
.end method

.method public setPageNo(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->pageNo:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->pageSize:I

    return-void
.end method

.method public setUserEdited(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->isUserEdited:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogReqInfo{pageNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->pageNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->logId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isCorrect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->isCorrect:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUserEdited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->isUserEdited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", originResult=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->originResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", editedResult=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->editedResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", feedBackType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->feedBackType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
