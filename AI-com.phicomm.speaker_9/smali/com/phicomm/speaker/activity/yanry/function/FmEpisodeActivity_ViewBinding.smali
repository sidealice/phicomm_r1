.class public Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "FmEpisodeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;Landroid/view/View;)V
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

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'requestLayout\'"

    .line 22
    const-class v1, Lcom/phicomm/speaker/views/widget/RequestLayout;

    const v2, 0x7f0901ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/widget/RequestLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const-string v0, "field \'refreshLayout\'"

    .line 23
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0901c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const-string v0, "field \'recyclerView\'"

    .line 24
    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0901c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->recyclerView:Landroid/widget/ListView;

    const-string v0, "field \'ivCover\'"

    .line 25
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->ivCover:Landroid/widget/ImageView;

    const-string v0, "field \'tvTitle\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09024d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvSubtitle\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->tvSubtitle:Landroid/widget/TextView;

    const-string v0, "field \'cbOrder\'"

    .line 28
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f090057

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->cbOrder:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    .line 34
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 36
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 37
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 38
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->recyclerView:Landroid/widget/ListView;

    .line 39
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->ivCover:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->tvTitle:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->tvSubtitle:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->cbOrder:Landroid/widget/CheckBox;

    return-void
.end method
