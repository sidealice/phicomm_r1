.class public Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FavoriteListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/fragment/FavoriteListFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Landroid/view/View;)V
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    const-string v0, "field \'tvHint\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090292

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvHint:Landroid/widget/TextView;

    const-string v0, "field \'llManage\' and method \'clickManage\'"

    const v1, 0x7f090169

    .line 29
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'llManage\'"

    .line 30
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->llManage:Landroid/widget/LinearLayout;

    .line 31
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;->b:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding$1;-><init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'ivManage\'"

    .line 38
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090109

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->ivManage:Landroid/widget/ImageView;

    const-string v0, "field \'tvManage\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvManage:Landroid/widget/TextView;

    const-string v0, "field \'rvFavoriteList\'"

    .line 40
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 49
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvHint:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->llManage:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->ivManage:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvManage:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;->b:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    return-void
.end method
