.class public Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "SpeakerWifiListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;Landroid/view/View;)V
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

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const-string v0, "field \'refreshLayout\'"

    .line 20
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0901c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const-string v0, "field \'listView\'"

    .line 21
    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f090179

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;

    .line 27
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 30
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 31
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    return-void
.end method
