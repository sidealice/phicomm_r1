.class public Lcom/phicomm/speaker/activity/ChangeNicknameActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ChangeNicknameActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field a:Lcom/phicomm/speaker/presenter/s;

.field mEtNickname:Landroid/support/v7/widget/AppCompatEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090099
    .end annotation
.end field

.field mIvDelete:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x7f0f0221

    .line 50
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->e(I)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->g(I)V

    const v0, 0x7f0f020e

    .line 52
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->f(I)V

    const v0, 0x7f06006f

    .line 53
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->h(I)V

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    const-string v1, ""

    const/16 v2, 0x14

    invoke-static {v2, v0, v1}, Lcom/phicomm/speaker/f/h;->a(ILandroid/widget/EditText;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/f/h;->a(Landroid/widget/EditText;)V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$1;-><init>(Lcom/phicomm/speaker/activity/ChangeNicknameActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    .line 86
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$2;-><init>(Lcom/phicomm/speaker/activity/ChangeNicknameActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->a:Lcom/phicomm/speaker/presenter/s;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0026

    .line 45
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/x;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0f0180

    .line 109
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 112
    :cond_1
    new-instance p1, Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-direct {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setNickname(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/s;->a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V

    return-void

    :cond_2
    :goto_0
    const p1, 0x7f0f017f

    .line 105
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->j()V

    return-void
.end method

.method public iv_delete()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900f1
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mIvDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
