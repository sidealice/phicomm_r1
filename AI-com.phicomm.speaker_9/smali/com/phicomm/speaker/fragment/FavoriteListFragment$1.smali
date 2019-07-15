.class Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;
.super Lcom/phicomm/speaker/presenter/b/i;
.source "FavoriteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/a;->c(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 188
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Z)V

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 185
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Z)V

    .line 190
    :goto_1
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/a;->d(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 210
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Z)V

    goto :goto_1

    .line 206
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 207
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Z)V

    .line 212
    :goto_1
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->f(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/presenter/g;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-virtual {v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/g;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->e(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Z)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->e(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 219
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Z)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    return-void
.end method
