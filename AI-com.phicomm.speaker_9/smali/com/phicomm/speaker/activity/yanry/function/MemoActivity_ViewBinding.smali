.class public Lcom/phicomm/speaker/activity/yanry/function/MemoActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "MemoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;Landroid/view/View;)V
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

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'requestLayout\'"

    .line 19
    const-class v1, Lcom/phicomm/speaker/views/widget/RequestLayout;

    const v2, 0x7f0901ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/widget/RequestLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const-string v0, "field \'refreshLayout\'"

    .line 20
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0901c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const-string v0, "field \'recyclerView\'"

    .line 21
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;

    .line 27
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 30
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 31
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
