.class Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;
.super Ljava/lang/Object;
.source "ForgotPwdCodeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a()V
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

    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    .line 93
    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    .line 94
    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 92
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
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
