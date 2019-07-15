.class Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;
.super Ljava/lang/Object;
.source "FavoriteManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Ljava/lang/String;)V
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

    .line 151
    iput-object p1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->c(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/presenter/j;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->h()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->c(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/presenter/j;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;->a:Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->i()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->b([Ljava/lang/String;)V

    :goto_0
    return-void
.end method
