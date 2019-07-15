.class Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;
.super Lcom/phicomm/speaker/b/a;
.source "CreateUserDefinedQuesAnsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-direct {p0, p2}, Lcom/phicomm/speaker/b/a;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method final synthetic a(ILandroid/view/View;)V
    .locals 0

    .line 192
    iget-object p2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->remove(I)V

    .line 193
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    .line 186
    invoke-static {p2}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x2

    .line 184
    invoke-static {p1, p4, p4, p2, p3}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Landroid/app/Activity;IILjava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 2

    .line 191
    new-instance p1, Lcom/phicomm/speaker/popup/c;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/e;

    invoke-direct {v1, p0, p3}, Lcom/phicomm/speaker/activity/quesandans/e;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;I)V

    invoke-direct {p1, v0, v1}, Lcom/phicomm/speaker/popup/c;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p3, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-static {p3, p1, p2, p4}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;Lcom/phicomm/speaker/popup/c;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method
