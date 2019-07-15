.class Lcom/phicomm/speaker/activity/IntroductionActivity$1;
.super Lcom/phicomm/speaker/presenter/b/a;
.source "IntroductionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/IntroductionActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/IntroductionActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/phicomm/speaker/activity/IntroductionActivity$1;->a:Lcom/phicomm/speaker/activity/IntroductionActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/IntroductionBean;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/activity/IntroductionActivity$1;->a:Lcom/phicomm/speaker/activity/IntroductionActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/IntroductionActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/adapter/d;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/IntroductionActivity$1;->a:Lcom/phicomm/speaker/activity/IntroductionActivity;

    invoke-direct {v1, v2, p1}, Lcom/phicomm/speaker/adapter/d;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/bean/IntroductionBean;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 51
    iget-object p1, p0, Lcom/phicomm/speaker/activity/IntroductionActivity$1;->a:Lcom/phicomm/speaker/activity/IntroductionActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/IntroductionActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/IntroductionActivity$1;->a:Lcom/phicomm/speaker/activity/IntroductionActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
