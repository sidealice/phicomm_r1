.class Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;
.super Lcom/phicomm/speaker/presenter/b/q;
.source "CreateUserDefinedQuesAnsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/bean/CustumDetailBean;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->setQuestion_list(Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/bean/CustumDetailBean;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->c(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/adapter/AnswerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->setAnswer_list(Ljava/util/List;)V

    .line 152
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/o;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/bean/CustumDetailBean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/phicomm/speaker/a/o;-><init>(ILcom/phicomm/speaker/bean/CustumDetailBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->finish()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/CustumDetailBean;)V
    .locals 3

    .line 138
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/o;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/phicomm/speaker/a/o;-><init>(ILcom/phicomm/speaker/bean/CustumDetailBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->finish()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;)V
    .locals 5

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/o;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/o;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;->getCus_sel_id()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/l;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;->getCus_sel_id()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/a/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->finish()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
