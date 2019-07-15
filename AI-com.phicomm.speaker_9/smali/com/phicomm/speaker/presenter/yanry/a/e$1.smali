.class Lcom/phicomm/speaker/presenter/yanry/a/e$1;
.super Lcom/phicomm/speaker/model/common/e;
.source "MemoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/e;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$1;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$1;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/presenter/yanry/a/e;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$1;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/presenter/yanry/a/e;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
