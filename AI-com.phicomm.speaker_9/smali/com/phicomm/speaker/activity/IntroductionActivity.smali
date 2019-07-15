.class public Lcom/phicomm/speaker/activity/IntroductionActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "IntroductionActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/a;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 47
    new-instance v0, Lcom/phicomm/speaker/presenter/a;

    new-instance v1, Lcom/phicomm/speaker/activity/IntroductionActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/IntroductionActivity$1;-><init>(Lcom/phicomm/speaker/activity/IntroductionActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/a;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/IntroductionActivity;->a:Lcom/phicomm/speaker/presenter/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, 0x7f0f00d8

    .line 34
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/IntroductionActivity;->e(I)V

    const v0, 0x7f0901f0

    .line 35
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/IntroductionActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/IntroductionActivity;->d()V

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/activity/IntroductionActivity;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/a;->c()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/IntroductionActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0041

    .line 29
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/IntroductionActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/IntroductionActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/activity/IntroductionActivity;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/a;->d()V

    .line 43
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
