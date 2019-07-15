.class public Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "SmartHomeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/SmartHomeActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/SmartHomeActivity;Landroid/view/View;)V
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

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'refreshLayout\'"

    .line 24
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0901c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const-string v0, "field \'mRecyclerView\'"

    .line 25
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'devNoneContent\' and method \'devNoneContent\'"

    const v1, 0x7f09008a

    .line 26
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'devNoneContent\'"

    .line 27
    const-class v3, Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/DefaultExceptionView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 28
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding;->b:Landroid/view/View;

    .line 29
    new-instance v1, Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding;Lcom/phicomm/speaker/activity/SmartHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'scrollView\'"

    .line 35
    const-class v1, Landroid/widget/ScrollView;

    const v2, 0x7f0901fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->scrollView:Landroid/widget/ScrollView;

    const-string v0, "field \'supportRecyclerView\'"

    .line 36
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->supportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/SmartHomeActivity;

    .line 42
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 44
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 45
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 46
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 47
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->scrollView:Landroid/widget/ScrollView;

    .line 48
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->supportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
