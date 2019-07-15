.class public Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;
.super Ljava/lang/Object;
.source "FeedBackQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/bean/FeedBackQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnswerListBean"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private seq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->seq:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setSeq(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->seq:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnswerListBean{seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
