.class public Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "MySpeakerActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/MySpeakerActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;Landroid/view/View;)V
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

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mRecyclerView\'"

    .line 22
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'mEmptyLl\'"

    .line 23
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901d6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mEmptyLl:Landroid/widget/LinearLayout;

    const-string v0, "field \'mFailLl\' and method \'reTryRequest\'"

    const v1, 0x7f0901d7

    .line 24
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mFailLl\'"

    .line 25
    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mFailLl:Landroid/widget/LinearLayout;

    .line 26
    iput-object p2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding;->b:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding;Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/MySpeakerActivity;

    .line 38
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mEmptyLl:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mFailLl:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
