.class Lcom/phicomm/speaker/presenter/yanry/a/g$1;
.super Lcom/phicomm/speaker/model/common/e;
.source "ReminderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/g;-><init>(Lcom/phicomm/speaker/fragment/ReminderFragment;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a/g;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$1;->b:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$1;->b:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/presenter/yanry/a/g;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    return-void
.end method
