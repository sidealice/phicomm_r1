.class public Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;
.super Ljava/lang/Object;
.source "TxNewsPlayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadDetail"
.end annotation


# instance fields
.field private docid:Ljava/lang/String;

.field private usr_play_timelen:I

.field private voice_timelen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->docid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsr_play_timelen()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->usr_play_timelen:I

    return v0
.end method

.method public getVoice_timelen()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->voice_timelen:I

    return v0
.end method

.method public setDocid(Ljava/lang/String;)V
    .locals 0
    .param p1, "docid"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->docid:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUsr_play_timelen(I)V
    .locals 0
    .param p1, "usr_play_timelen"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->usr_play_timelen:I

    .line 72
    return-void
.end method

.method public setVoice_timelen(I)V
    .locals 0
    .param p1, "voice_timelen"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->voice_timelen:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadDetail{docid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->docid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voice_timelen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->voice_timelen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usr_play_timelen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->usr_play_timelen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
