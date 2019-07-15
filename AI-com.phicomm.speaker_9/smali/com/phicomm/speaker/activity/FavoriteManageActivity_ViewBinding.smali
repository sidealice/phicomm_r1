.class public Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "FavoriteManageActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/FavoriteManageActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'rvFavoriteList\'"

    .line 26
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'tvDelete\' and method \'clickDelete\'"

    const v1, 0x7f09027f

    .line 27
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvDelete\'"

    .line 28
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->tvDelete:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->b:Landroid/view/View;

    .line 30
    new-instance v1, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'clickSelectAll\'"

    const v1, 0x7f090252

    .line 36
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->c:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'clickClose\'"

    const v1, 0x7f0902a1

    .line 44
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->d:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    .line 57
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 59
    iput-object v1, v0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    .line 60
    iput-object v1, v0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->tvDelete:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->b:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->c:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
