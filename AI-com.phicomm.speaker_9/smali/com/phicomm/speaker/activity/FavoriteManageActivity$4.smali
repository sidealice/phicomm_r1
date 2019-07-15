.class Lcom/phicomm/speaker/activity/FavoriteManageActivity$4;
.super Ljava/lang/Object;
.source "FavoriteManageActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/adapter/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d()V
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

    .line 122
    iput-object p1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$4;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$4;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$4;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/a;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b(Lcom/phicomm/speaker/activity/FavoriteManageActivity;Z)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$4;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v0, v2}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;Z)V

    return-void
.end method
