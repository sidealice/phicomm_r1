.class public Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "AboutActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/AboutActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/AboutActivity;Landroid/view/View;)V
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

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mTvVersion\' and method \'tv_version\'"

    const v1, 0x7f090304

    .line 25
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvVersion\'"

    .line 26
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/AboutActivity;->mTvVersion:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->b:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;Lcom/phicomm/speaker/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvNew\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/AboutActivity;->mTvNew:Landroid/widget/TextView;

    const-string v0, "method \'getInstructionDetail\'"

    const v1, 0x7f09006d

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->c:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;Lcom/phicomm/speaker/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'ib_update\'"

    const v1, 0x7f09006f

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->d:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;Lcom/phicomm/speaker/activity/AboutActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/AboutActivity;

    .line 56
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 58
    iput-object v1, v0, Lcom/phicomm/speaker/activity/AboutActivity;->mTvVersion:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/phicomm/speaker/activity/AboutActivity;->mTvNew:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->b:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->c:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/phicomm/speaker/activity/AboutActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
