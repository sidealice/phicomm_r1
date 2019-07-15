.class Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;
.super Ljava/lang/Object;
.source "AddSimilarQuestionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 127
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
