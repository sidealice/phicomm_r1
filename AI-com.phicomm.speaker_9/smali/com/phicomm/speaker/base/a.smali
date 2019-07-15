.class public abstract Lcom/phicomm/speaker/base/a;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lcom/phicomm/speaker/views/LoadingDialog;

.field private c:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {p0}, Lcom/phicomm/speaker/base/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    sget-wide v1, Lcom/phicomm/speaker/views/LoadingDialog;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/phicomm/speaker/views/LoadingDialog;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {p0}, Lcom/phicomm/speaker/base/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    sget-wide v1, Lcom/phicomm/speaker/views/LoadingDialog;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/phicomm/speaker/views/LoadingDialog;->a(IJ)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->b:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/a;->a()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/base/a;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/base/a;->a:Landroid/view/View;

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/base/a;->a:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/base/a;->c:Lbutterknife/Unbinder;

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/a;->c()V

    .line 55
    iget-object p1, p0, Lcom/phicomm/speaker/base/a;->a:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->c:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/base/a;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method
