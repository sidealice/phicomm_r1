.class Lcom/phicomm/speaker/presenter/yanry/a/a$1;
.super Lcom/phicomm/speaker/e/c/b;
.source "FmAlbumPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/a;-><init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/audio/bean/AudioSecondList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field final synthetic b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field final synthetic d:Lcom/phicomm/speaker/presenter/yanry/a/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/a;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const-string v0, "get list fail: %s"

    const/4 v1, 0x1

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/a;->b(Lcom/phicomm/speaker/presenter/yanry/a/a;)I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    return-void
.end method

.method public a(ILcom/unisound/lib/audio/bean/AudioSecondList;)V
    .locals 9

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    :cond_0
    if-eqz p2, :cond_3

    .line 55
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioSecondList;->getResult()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioSecondList;->getPageCount()I

    move-result p2

    const-string v1, "receive result(%s): size = %s, pageCount = %s."

    const/4 v2, 0x3

    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x2

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/a;->a(Lcom/phicomm/speaker/presenter/yanry/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 60
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/a/a;->a(Lcom/phicomm/speaker/presenter/yanry/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/a/a;->b(Lcom/phicomm/speaker/presenter/yanry/a/a;)I

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0f015d

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 63
    invoke-virtual {v7}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f00a7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;

    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getAlbum_title()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    .line 62
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/presenter/yanry/a/a;->a(Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/a/a;->notifyDataSetChanged()V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 68
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->d:Lcom/phicomm/speaker/presenter/yanry/a/a;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/a;->c(Lcom/phicomm/speaker/presenter/yanry/a/a;)I

    move-result p1

    if-ne p2, p1, :cond_3

    const-string p1, "no more list, reach page count: %s."

    .line 69
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "receive empty result!"

    .line 72
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/unisound/lib/audio/bean/AudioSecondList;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/a$1;->a(ILcom/unisound/lib/audio/bean/AudioSecondList;)V

    return-void
.end method
