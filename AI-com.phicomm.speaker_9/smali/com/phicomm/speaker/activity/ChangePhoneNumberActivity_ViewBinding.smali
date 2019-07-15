.class public Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "ChangePhoneNumberActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mMetPhoneNumber\'"

    .line 24
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f090185

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mMetVerificationCode\'"

    .line 25
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f090187

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mTvGetVerificationCode\' and method \'tv_get_verification_code\'"

    const v1, 0x7f090290

    .line 26
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvGetVerificationCode\'"

    .line 27
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;->b:Landroid/view/View;

    .line 29
    new-instance v1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvNextStep\' and method \'tv_next_step\'"

    const v1, 0x7f0902b7

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mTvNextStep\'"

    .line 36
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvNextStep:Landroid/widget/TextView;

    .line 37
    iput-object p2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;->c:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    .line 49
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 51
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    .line 52
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    .line 53
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvNextStep:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;->b:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
