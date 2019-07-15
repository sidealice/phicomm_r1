.class Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;
.super Lcom/phicomm/speaker/presenter/b/q;
.source "MyQuestionAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/QuesAndAnsBean;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "0"

    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->a(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-nez v4, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setTvHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    const v1, 0x7f0f00e7

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setTvHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object v1, v1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object v1, v1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {v1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->setNewData(Ljava/util/List;)V

    .line 103
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {v2}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {v3}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getCus_sel_id()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->a(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;J)J

    .line 104
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getHas_next_page()I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->loadMoreComplete()V

    goto :goto_0

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->loadMoreEnd()V

    goto :goto_0

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {v1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->addData(Ljava/util/Collection;)V

    .line 112
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {v2}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {v3}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getCus_sel_id()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->a(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;J)J

    .line 113
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getHas_next_page()I

    move-result p1

    if-ne v0, p1, :cond_5

    .line 114
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->loadMoreComplete()V

    goto :goto_0

    .line 116
    :cond_5
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->loadMoreEnd()V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 74
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->a(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment$1;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->b(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/MyQuestionAnswerAdapter;->loadMoreFail()V

    :goto_0
    return-void
.end method
