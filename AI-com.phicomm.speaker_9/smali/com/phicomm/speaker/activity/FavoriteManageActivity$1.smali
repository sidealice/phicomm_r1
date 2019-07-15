.class Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;
.super Lcom/phicomm/speaker/presenter/b/i;
.source "FavoriteManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;Z)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->c()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "collectMusicList"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "favoriteType"

    iget-object v3, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v3}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/adapter/a;->c(Ljava/util/List;)V

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->finish()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;Z)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->d()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "collectMusicList"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "favoriteType"

    iget-object v3, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v3}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->setResult(ILandroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/adapter/a;->d(Ljava/util/List;)V

    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->finish()V

    :goto_1
    return-void
.end method
