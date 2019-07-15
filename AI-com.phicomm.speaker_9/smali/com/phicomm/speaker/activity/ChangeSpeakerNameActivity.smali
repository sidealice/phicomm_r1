.class public Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ChangeSpeakerNameActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/d;

.field private b:Ljava/lang/String;

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

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f0f0224

    .line 45
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->e(I)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->g(I)V

    const v0, 0x7f0f020e

    .line 47
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->f(I)V

    const v0, 0x7f06006f

    .line 48
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->h(I)V

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "nickname"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->b:Ljava/lang/String;

    const/16 v0, 0x14

    .line 58
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/phicomm/speaker/f/h;->a(ILandroid/widget/EditText;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/f/h;->a(Landroid/widget/EditText;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    new-instance v2, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$1;-><init>(Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    .line 85
    :cond_1
    new-instance v0, Lcom/phicomm/speaker/presenter/d;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$2;-><init>(Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/d;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/d;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->a:Lcom/phicomm/speaker/presenter/d;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0026

    .line 40
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/x;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0f0249

    .line 111
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->a:Lcom/phicomm/speaker/presenter/d;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const p1, 0x7f0f0248

    .line 107
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->j()V

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
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mIvDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
