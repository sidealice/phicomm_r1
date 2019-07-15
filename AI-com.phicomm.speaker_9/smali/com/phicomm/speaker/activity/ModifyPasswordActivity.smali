.class public Lcom/phicomm/speaker/activity/ModifyPasswordActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ModifyPasswordActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field a:Lcom/phicomm/speaker/presenter/s;

.field mMetNewPassword:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field mMetOldPassword:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090186
    .end annotation
.end field

.field mTvSave:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f0f0166

    .line 52
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->e(I)V

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetOldPassword:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetNewPassword:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mTvSave:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-static {v0, v3, v1, v3, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V

    .line 55
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;-><init>(Lcom/phicomm/speaker/activity/ModifyPasswordActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->a:Lcom/phicomm/speaker/presenter/s;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0046

    .line 47
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->j()V

    return-void
.end method

.method public tv_save()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902d1
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetOldPassword:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getAllContent()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetNewPassword:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getAllContent()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/phicomm/speaker/f/x;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-virtual {v2, v0, v1}, Lcom/phicomm/speaker/presenter/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
