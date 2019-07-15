.class public Lcom/phicomm/speaker/bean/FeedBackQuestion;
.super Ljava/lang/Object;
.source "FeedBackQuestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;
    }
.end annotation


# instance fields
.field private answer:I

.field private answer_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;",
            ">;"
        }
    .end annotation
.end field

.field private question:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswer()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->answer:I

    return v0
.end method

.method public getAnswer_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->answer_list:Ljava/util/List;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->question:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->answer:I

    return-void
.end method

.method public setAnswer_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->answer_list:Ljava/util/List;

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->question:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeedBackQuestion{question=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->answer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", answer_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/FeedBackQuestion;->answer_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
