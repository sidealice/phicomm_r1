.class public Lcom/phicomm/speaker/bean/CustumDetailBean;
.super Ljava/lang/Object;
.source "CustumDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private answer_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;"
        }
    .end annotation
.end field

.field private cus_sel_id:J

.field private is_add:Z

.field private question_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswerContents(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/CustumBean;

    .line 83
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getAnswer_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    return-object v0
.end method

.method public getCus_sel_id()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->cus_sel_id:J

    return-wide v0
.end method

.method public getFirstAnswerContent()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFirstQuestionContent()Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getQuestionContents(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/CustumBean;

    .line 70
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getQuestion_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    return-object v0
.end method

.method public isIs_add()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->is_add:Z

    return v0
.end method

.method public setAnswer_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->answer_list:Ljava/util/List;

    return-void
.end method

.method public setCus_sel_id(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->cus_sel_id:J

    return-void
.end method

.method public setIs_add(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->is_add:Z

    return-void
.end method

.method public setQuestion_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CustumDetailBean;->question_list:Ljava/util/List;

    return-void
.end method
