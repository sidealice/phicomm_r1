.class public abstract Lcom/phicomm/speaker/adapter/a/a/c;
.super Lcom/phicomm/speaker/adapter/a/a/a;
.source "SpeakerBaseData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a/a/a;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->h:Z

    .line 18
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->i:Z

    .line 23
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getLogId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getMessageType()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->b:I

    .line 25
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getTtsAnswer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getTtsAnswerExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getRecongniseResult()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->e:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getRecordUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->f:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getReceivedTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->g:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isLocalRec()Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->h:Z

    .line 31
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->isUserEdited()Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->i:Z

    .line 32
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->j:J

    .line 33
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getFeedBackType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/a/c;->k:Ljava/lang/String;

    .line 34
    iget-wide v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->j:J

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/adapter/a/a/c;->a(J)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->b:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakerBaseData{logId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ttsAnswer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ttsAnswerExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recongniseResult=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recordUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", receivedTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isLocalRec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUserEdited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->i:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", createTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", feedBackType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a/a/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
