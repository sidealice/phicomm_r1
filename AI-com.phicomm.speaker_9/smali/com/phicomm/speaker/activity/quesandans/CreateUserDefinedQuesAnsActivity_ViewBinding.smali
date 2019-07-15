.class public Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "CreateUserDefinedQuesAnsActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mScrollView\'"

    .line 27
    const-class v1, Landroid/support/v4/widget/NestedScrollView;

    const v2, 0x7f0901fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    const-string v0, "field \'questionRecyclerView\'"

    .line 28
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'answerRecyclerView\'"

    .line 29
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'tvAddSimilarQuestion\' and method \'tv_add_similar_question\'"

    const v1, 0x7f09024b

    .line 30
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvAddSimilarQuestion\'"

    .line 31
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarQuestion:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->b:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'tvAddSimilarAnswer\' and method \'tv_add_similar_answer\'"

    const v1, 0x7f09024a

    .line 39
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvAddSimilarAnswer\'"

    .line 40
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarAnswer:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->c:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvDelete\' and method \'tv_delete\'"

    const v1, 0x7f09027f

    .line 48
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mTvDelete\'"

    .line 49
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->mTvDelete:Landroid/widget/TextView;

    .line 50
    iput-object p2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->d:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    .line 62
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 64
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 65
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 66
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 67
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarQuestion:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarAnswer:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->mTvDelete:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->b:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->c:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
