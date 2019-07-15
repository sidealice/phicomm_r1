.class public Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/alibaba/sdk/android/feedback/R$layout;->ali_feedback_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;->setContentView(I)V

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->errorMsg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u51fa\u9519\u4e86\uff01\u8bf7\u7a0d\u540e\u518d\u8bd5"

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/alibaba/sdk/android/feedback/R$id;->error_view_refresh_btn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/impl/b;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/impl/b;-><init>(Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
