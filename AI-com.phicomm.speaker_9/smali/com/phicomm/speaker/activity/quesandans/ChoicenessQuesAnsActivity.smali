.class public Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ChoicenessQuesAnsActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

.field answerRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c4
    .end annotation
.end field

.field private b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

.field private d:Lcom/phicomm/speaker/presenter/r;

.field private e:Lcom/phicomm/speaker/bean/CustumDetailBean;

.field mTvAdd:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090249
    .end annotation
.end field

.field questionRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/phicomm/speaker/bean/CustumDetailBean;)V
    .locals 2

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "custumDetailBean"

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 81
    new-instance v0, Lcom/phicomm/speaker/presenter/r;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;-><init>(Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/r;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/q;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->d:Lcom/phicomm/speaker/presenter/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x7f0f0060

    .line 55
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e(I)V

    .line 56
    new-instance v0, Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 59
    new-instance v0, Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/adapter/AnswerAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->d()V

    .line 63
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "custumDetailBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/CustumDetailBean;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getQuestion_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getQuestion_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->addData(Ljava/util/Collection;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getAnswer_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getAnswer_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->addData(Ljava/util/Collection;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CustumDetailBean;->isIs_add()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    const v1, 0x7f0f001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b002a

    .line 50
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->j()V

    return-void
.end method

.method public tv_add()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090249
        }
    .end annotation

    const v0, 0x7f0f001f

    .line 129
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->d:Lcom/phicomm/speaker/presenter/r;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getCus_sel_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/r;->a(J)V

    :cond_0
    return-void
.end method
