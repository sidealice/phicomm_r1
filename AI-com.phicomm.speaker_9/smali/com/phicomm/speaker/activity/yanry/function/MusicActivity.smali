.class public Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "MusicActivity.java"


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/yanry/a/h;

.field private b:Lcom/phicomm/speaker/presenter/g;

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

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fe
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;)Lcom/phicomm/speaker/presenter/g;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->b:Lcom/phicomm/speaker/presenter/g;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;Lcom/phicomm/speaker/presenter/g;)Lcom/phicomm/speaker/presenter/g;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->b:Lcom/phicomm/speaker/presenter/g;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->tvTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0128

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 48
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;Landroid/content/Context;Lcom/phicomm/speaker/views/widget/RequestLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/a/h;->b()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b003b

    .line 40
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/a/h;->c()V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->b:Lcom/phicomm/speaker/presenter/g;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->b:Lcom/phicomm/speaker/presenter/g;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/g;->b()V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
