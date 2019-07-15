.class public Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;
.super Lcom/phicomm/speaker/base/a;
.source "MyQuestionAnswerFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

.field private d:Lcom/phicomm/speaker/presenter/r;

.field devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090088
    .end annotation
.end field

.field private e:J

.field private f:I

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e:J

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->f:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e:J

    return-wide p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 71
    new-instance v0, Lcom/phicomm/speaker/presenter/r;

    new-instance v1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;-><init>(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/r;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/q;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->d:Lcom/phicomm/speaker/presenter/r;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0095

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(I)V

    return-void
.end method

.method final synthetic a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 56
    iput p3, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->f:I

    .line 57
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/CustumDetailBean;

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Landroid/app/Activity;ILcom/phicomm/speaker/bean/CustumDetailBean;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->g()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 52
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->c()V

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    new-instance v1, Lcom/phicomm/speaker/fragment/f;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/f;-><init>(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    new-instance v1, Lcom/phicomm/speaker/fragment/g;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/g;-><init>(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)V

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->disableLoadMoreIfNotFullPage()V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    new-instance v1, Lcom/phicomm/speaker/views/recyclerview/b;

    invoke-direct {v1}, Lcom/phicomm/speaker/views/recyclerview/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 65
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e()V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->d:Lcom/phicomm/speaker/presenter/r;

    iget-wide v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/phicomm/speaker/presenter/r;->a(ZJ)V

    return-void
.end method

.method final synthetic d()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->d:Lcom/phicomm/speaker/presenter/r;

    iget-wide v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e:J

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/phicomm/speaker/presenter/r;->a(ZJ)V

    return-void
.end method

.method public dev_none_content()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090088
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->getTvHint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0f0131

    .line 157
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 158
    iput-wide v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e:J

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->d:Lcom/phicomm/speaker/presenter/r;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/r;->a(ZJ)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDestroyView()V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onHandleUserQandAEvent(Lcom/phicomm/speaker/a/o;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 125
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/o;->a()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    iget v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->f:I

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->remove(I)V

    .line 143
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setTvHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->f:I

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/o;->b()Lcom/phicomm/speaker/bean/CustumDetailBean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    iget v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->f:I

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->c:Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/o;->b()Lcom/phicomm/speaker/bean/CustumDetailBean;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->addData(ILjava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 130
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
