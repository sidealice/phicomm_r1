.class public Lcom/phicomm/speaker/activity/yanry/function/MusicActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "MusicActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'tvTitle\'"

    .line 20
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "field \'recyclerView\'"

    .line 21
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'requestLayout\'"

    .line 22
    const-class v1, Lcom/phicomm/speaker/views/widget/RequestLayout;

    const v2, 0x7f0901ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/widget/RequestLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const-string v0, "field \'refreshLayout\'"

    .line 23
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0901c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    .line 29
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->tvTitle:Landroid/widget/TextView;

    .line 32
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 33
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 34
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    return-void
.end method
