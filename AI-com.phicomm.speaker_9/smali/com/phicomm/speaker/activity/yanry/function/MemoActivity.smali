.class public Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "MemoActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/yanry/a/e;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c2
    .end annotation
.end field

.field refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c8
    .end annotation
.end field

.field requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setCustomLoadingView(Lcom/phicomm/speaker/presenter/b/f;)V

    .line 44
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a/e;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/yanry/a/e;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Z)Z

    const v0, 0x7f0f0127

    .line 46
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->e(I)V

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0039

    .line 38
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->j()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2766

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->c()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->b()Z

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 62
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/phicomm/speaker/e/b/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/e;->a()Lcom/unisound/lib/msgcenter/bean/LogMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getMessageType()I

    move-result p1

    const/16 v0, 0x4e31

    if-ne p1, v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a()V

    :cond_0
    return-void
.end method

.method public onNetworkStatusChangeEvent(Lcom/phicomm/speaker/a/y;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a()V

    :cond_0
    return-void
.end method
