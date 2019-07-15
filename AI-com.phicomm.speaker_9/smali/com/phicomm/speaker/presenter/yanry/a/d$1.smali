.class Lcom/phicomm/speaker/presenter/yanry/a/d$1;
.super Lcom/phicomm/speaker/model/common/e;
.source "FmEpisodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/d;-><init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/widget/ListView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic d:Lcom/phicomm/speaker/presenter/yanry/a/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/d;Landroid/widget/ListView;Landroid/view/View;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/d;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->c:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->b:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$1;->c:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    return-void
.end method
