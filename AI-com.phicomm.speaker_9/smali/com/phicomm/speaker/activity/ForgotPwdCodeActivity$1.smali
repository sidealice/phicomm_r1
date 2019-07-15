.class Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;
.super Ljava/lang/Object;
.source "ForgotPwdCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)I

    move-result v0

    const v1, 0x7f06006f

    if-gtz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    const-string v3, "S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    const v3, 0x7f0f00de

    :goto_0
    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    const v3, 0x7f0f00dd

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    .line 58
    invoke-virtual {v1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 57
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " S  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;I)I

    .line 64
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)I

    move-result v1

    const-string v2, "FORGOT_PWD_CODE_TIME"

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(ILjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->c(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
