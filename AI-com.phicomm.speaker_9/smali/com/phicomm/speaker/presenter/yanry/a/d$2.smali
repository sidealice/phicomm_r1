.class Lcom/phicomm/speaker/presenter/yanry/a/d$2;
.super Lcom/phicomm/speaker/e/c/b;
.source "FmEpisodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/d;-><init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/widget/ListView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/audio/bean/AudioCurrentList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field final synthetic b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic c:Lcom/phicomm/speaker/presenter/yanry/a/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/d;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/d;->a(Lcom/phicomm/speaker/presenter/yanry/a/d;)Lcom/phicomm/speaker/model/common/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->d()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    .line 92
    :cond_1
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    return-void
.end method

.method public a(ILcom/unisound/lib/audio/bean/AudioCurrentList;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    .line 65
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    :cond_0
    if-eqz p2, :cond_3

    .line 69
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCurrentList;->getResult()Ljava/util/List;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/d;->a(Lcom/phicomm/speaker/presenter/yanry/a/d;)Lcom/phicomm/speaker/model/common/e;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCurrentList;->getPageCount()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/model/common/e;->a(Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_2

    .line 72
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/a/d;->b(Lcom/phicomm/speaker/presenter/yanry/a/d;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 73
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-static {p2, v0}, Lcom/phicomm/speaker/presenter/yanry/a/d;->a(Lcom/phicomm/speaker/presenter/yanry/a/d;Z)Z

    .line 74
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/a/d;->c(Lcom/phicomm/speaker/presenter/yanry/a/d;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/a/d;->c(Lcom/phicomm/speaker/presenter/yanry/a/d;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/a/d;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const-string p1, "receive empty result!"

    .line 79
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Lcom/unisound/lib/audio/bean/AudioCurrentList;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/d$2;->a(ILcom/unisound/lib/audio/bean/AudioCurrentList;)V

    return-void
.end method
