.class public Lcom/phicomm/speaker/activity/BindingPhoneActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "BindingPhoneActivity.java"


# instance fields
.field mTvBindingPhone:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090254
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f0042

    .line 36
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/BindingPhoneActivity;->e(I)V

    .line 37
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/activity/BindingPhoneActivity;->mTvBindingPhone:Landroid/widget/TextView;

    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/manager/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0023

    .line 31
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/BindingPhoneActivity;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 57
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/h;->a()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/BindingPhoneActivity;->finish()V

    :cond_0
    return-void
.end method

.method public tv_change_phone_number()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09025c
        }
    .end annotation

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/BindingPhoneActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
