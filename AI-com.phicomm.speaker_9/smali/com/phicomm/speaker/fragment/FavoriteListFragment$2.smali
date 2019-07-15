.class Lcom/phicomm/speaker/fragment/FavoriteListFragment$2;
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

    .line 229
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$2;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    .line 232
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$2;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$2;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment$2;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-virtual {v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
