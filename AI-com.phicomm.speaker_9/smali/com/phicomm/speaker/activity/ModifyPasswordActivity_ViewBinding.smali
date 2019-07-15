.class public Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "ModifyPasswordActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/ModifyPasswordActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/ModifyPasswordActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mMetOldPassword\'"

    .line 22
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f090186

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetOldPassword:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mMetNewPassword\'"

    .line 23
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f090184

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetNewPassword:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mTvSave\' and method \'tv_save\'"

    const v1, 0x7f0902d1

    .line 24
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mTvSave\'"

    .line 25
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mTvSave:Landroid/widget/TextView;

    .line 26
    iput-object p2, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding;->b:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding;Lcom/phicomm/speaker/activity/ModifyPasswordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;

    .line 38
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetOldPassword:Lcom/phicomm/speaker/views/MyEditText;

    .line 41
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mMetNewPassword:Lcom/phicomm/speaker/views/MyEditText;

    .line 42
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->mTvSave:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
