.class Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;
.super Lcom/phicomm/speaker/presenter/b/q;
.source "AddSimilarQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d()V
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

    .line 135
    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/SensitiveSentenceBean;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "0"

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/SensitiveSentenceBean;->getWords()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;Ljava/util/List;)V

    .line 173
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const p1, 0x7f0f002a

    .line 183
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 184
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 185
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    const p1, 0x7f0f01f7

    .line 176
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 177
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 178
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/view/View;)V

    goto :goto_2

    .line 151
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "content"

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    const-string v0, "editPosition"

    .line 162
    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->c(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :pswitch_3
    const-string v0, "editPosition"

    .line 157
    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->c(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    :goto_1
    :pswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;->a:Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->finish()V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
