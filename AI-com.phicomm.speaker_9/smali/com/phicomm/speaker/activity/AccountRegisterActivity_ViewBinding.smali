.class public Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "AccountRegisterActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/AccountRegisterActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/AccountRegisterActivity;Landroid/view/View;)V
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

    const-string v0, "field \'mMyEtPwd\'"

    .line 22
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f09019a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mTvSubmit\' and method \'tv_submit\'"

    const v1, 0x7f0902f7

    .line 23
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mTvSubmit\'"

    .line 24
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->mTvSubmit:Landroid/widget/TextView;

    .line 25
    iput-object p2, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding;->b:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding;Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    .line 37
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    .line 40
    iput-object v1, v0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->mTvSubmit:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iput-object v1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
