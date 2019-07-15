.class public Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "VoiceCommandActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/VoiceCommandActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;Landroid/view/View;)V
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

    const-string v0, "field \'refreshLayout\'"

    .line 23
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0901c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const-string v0, "field \'mRecyclerView\'"

    .line 24
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'devNoneContent\' and method \'devNoneContent\'"

    const v1, 0x7f09008a

    .line 25
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'devNoneContent\'"

    .line 26
    const-class v2, Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/DefaultExceptionView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 27
    iput-object p2, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding;->b:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding;Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    .line 39
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 42
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 43
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
