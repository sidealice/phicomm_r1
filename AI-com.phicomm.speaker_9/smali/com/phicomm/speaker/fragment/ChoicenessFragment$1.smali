.class Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;
.super Lcom/phicomm/speaker/presenter/b/q;
.source "ChoicenessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/ChoicenessFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CustumDetailBean;)V
    .locals 3

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/a;

    invoke-direct {v1}, Lcom/phicomm/speaker/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/o;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/phicomm/speaker/a/o;-><init>(ILcom/phicomm/speaker/bean/CustumDetailBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/QuesAndAnsBean;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "0"

    const-string v0, ""

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->a(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 101
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    goto/16 :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->setNewData(Ljava/util/List;)V

    .line 111
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getHas_next_page()I

    move-result p1

    if-ne v1, p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)I

    .line 113
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->loadMoreComplete()V

    goto :goto_0

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->loadMoreEnd()V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->addData(Ljava/util/Collection;)V

    .line 120
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/QuesAndAnsBean;->getHas_next_page()I

    move-result p1

    if-ne v1, p1, :cond_5

    .line 121
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->c(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)I

    .line 122
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->loadMoreComplete()V

    goto :goto_0

    .line 124
    :cond_5
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->loadMoreEnd()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->a(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment$1;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->b(Lcom/phicomm/speaker/fragment/ChoicenessFragment;)Lcom/phicomm/speaker/adapter/ChoicenessAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/ChoicenessAdapter;->loadMoreFail()V

    :goto_0
    return-void
.end method
