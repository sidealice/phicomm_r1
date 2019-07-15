.class public Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "FmAlbumActivity.java"


# instance fields
.field requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field

.field tabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090222
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fe
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090318
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;->tvTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    new-instance v0, Lcom/phicomm/speaker/model/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/model/a/a;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V

    .line 37
    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/a/c;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-direct {v1, v2, v0}, Lcom/phicomm/speaker/presenter/yanry/a/c;-><init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/model/a/a;)V

    invoke-virtual {v1}, Lcom/phicomm/speaker/presenter/yanry/a/c;->a()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0037

    .line 30
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
