.class public Lcom/phicomm/speaker/fragment/ChoicenessFragment;
.super Lcom/phicomm/speaker/base/a;
.source "ChoicenessFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

.field private d:Lcom/phicomm/speaker/presenter/r;

.field devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090088
    .end annotation
.end field

.field private e:I

.field private f:I

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->f:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    return p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)I
    .locals 2

    .line 37
    iget v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    return v0
.end method

.method private e()V
    .locals 2

    .line 81
    new-instance v0, Lcom/phicomm/speaker/presenter/r;

    new-instance v1, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;-><init>(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/r;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/q;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->d:Lcom/phicomm/speaker/presenter/r;

    return-void
.end method


# virtual methods
.method public AddChoicenessEvent(Lcom/phicomm/speaker/a/a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 147
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/CustumDetailBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/bean/CustumDetailBean;->setIs_add(Z)V

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    iget v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->f:I

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public DeleteUnionChoicenessEvent(Lcom/phicomm/speaker/a/l;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/l;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {v2}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {v2}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/l;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {v4}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v4}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getCus_sel_id()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 156
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/bean/CustumDetailBean;->setIs_add(Z)V

    .line 157
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0095

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(I)V

    return-void
.end method

.method final synthetic a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 67
    iput p3, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->f:I

    .line 68
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->a(Landroid/app/Activity;Lcom/phicomm/speaker/bean/CustumDetailBean;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->g()V

    return-void
.end method

.method final synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->isIs_add()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iput p3, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->f:I

    .line 63
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->d:Lcom/phicomm/speaker/presenter/r;

    iget-object p2, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getCus_sel_id()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/presenter/r;->a(J)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->c()V

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    new-instance v1, Lcom/phicomm/speaker/fragment/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/a;-><init>(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    new-instance v1, Lcom/phicomm/speaker/fragment/b;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/b;-><init>(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    new-instance v1, Lcom/phicomm/speaker/fragment/c;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/c;-><init>(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)V

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroid/support/v7/widget/RecyclerView;)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->disableLoadMoreIfNotFullPage()V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    new-instance v1, Lcom/phicomm/speaker/views/recyclerview/b;

    invoke-direct {v1}, Lcom/phicomm/speaker/views/recyclerview/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c:Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 75
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e()V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->d:Lcom/phicomm/speaker/presenter/r;

    iget v1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/presenter/r;->a(ZI)V

    return-void
.end method

.method final synthetic d()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->d:Lcom/phicomm/speaker/presenter/r;

    iget v1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/presenter/r;->a(ZI)V

    return-void
.end method

.method public dev_none_content()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090088
        }
    .end annotation

    const/4 v0, 0x1

    .line 166
    iput v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    .line 167
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->d:Lcom/phicomm/speaker/presenter/r;

    iget v2, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/phicomm/speaker/presenter/r;->a(ZI)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDestroyView()V

    .line 173
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method
