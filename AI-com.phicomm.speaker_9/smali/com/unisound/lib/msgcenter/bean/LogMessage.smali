.class public Lcom/unisound/lib/msgcenter/bean/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createTime:J

.field private feedBackType:Ljava/lang/String;

.field private isLocalRec:Z

.field private isUserEdited:Z

.field private logId:Ljava/lang/String;

.field private messageType:I

.field private receivedTime:Ljava/lang/String;

.field private recongniseResult:Ljava/lang/String;

.field private recordUrl:Ljava/lang/String;

.field private serviceData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private ttsAnswer:Ljava/lang/String;

.field private ttsAnswerExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isLocalRec:Z

    .line 17
    iput-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isUserEdited:Z

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->createTime:J

    return-wide v0
.end method

.method public getFeedBackType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->feedBackType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->logId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->messageType:I

    return v0
.end method

.method public getReceivedTime()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->receivedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecongniseResult()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->recongniseResult:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordUrl()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->recordUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->serviceData:Ljava/lang/Object;

    return-object v0
.end method

.method public getTtsAnswer()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->ttsAnswer:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsAnswerExtra()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->ttsAnswerExtra:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalRec()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isLocalRec:Z

    return v0
.end method

.method public isUserEdited()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isUserEdited:Z

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 235
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->createTime:J

    return-void
.end method

.method public setFeedBackType(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->feedBackType:Ljava/lang/String;

    return-void
.end method

.method public setLocalRec(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isLocalRec:Z

    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->logId:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->messageType:I

    return-void
.end method

.method public setReceivedTime(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->receivedTime:Ljava/lang/String;

    return-void
.end method

.method public setRecongniseResult(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->recongniseResult:Ljava/lang/String;

    return-void
.end method

.method public setRecordUrl(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->recordUrl:Ljava/lang/String;

    return-void
.end method

.method public setServiceData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->serviceData:Ljava/lang/Object;

    return-void
.end method

.method public setTtsAnswer(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->ttsAnswer:Ljava/lang/String;

    return-void
.end method

.method public setTtsAnswerExtra(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->ttsAnswerExtra:Ljava/lang/String;

    return-void
.end method

.method public setUserEdited(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isUserEdited:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogMessage{logId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->logId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->messageType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ttsAnswer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->ttsAnswer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ttsAnswerExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->ttsAnswerExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recongniseResult=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->recongniseResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recordUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->recordUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", receivedTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->receivedTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isLocalRec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isLocalRec:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUserEdited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isUserEdited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", createTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", serviceData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->serviceData:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", feedBackType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/LogMessage;->feedBackType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
