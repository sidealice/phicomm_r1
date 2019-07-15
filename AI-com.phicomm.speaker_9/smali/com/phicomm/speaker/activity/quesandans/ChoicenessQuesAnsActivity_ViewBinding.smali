.class public Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "ChoicenessQuesAnsActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'questionRecyclerView\'"

    .line 22
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'answerRecyclerView\'"

    .line 23
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'mTvAdd\' and method \'tv_add\'"

    const v1, 0x7f090249

    .line 24
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mTvAdd\'"

    .line 25
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    .line 26
    iput-object p2, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding;->b:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding;Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    .line 38
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    iput-object v1, v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
