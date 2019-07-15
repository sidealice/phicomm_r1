.class public Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "PlayListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/player/PlayListActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/player/PlayListActivity;Landroid/view/View;)V
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

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'llRoot\'"

    .line 28
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09016c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llRoot:Landroid/widget/LinearLayout;

    const-string v0, "field \'llContent\'"

    .line 29
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090163

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llContent:Landroid/widget/LinearLayout;

    const-string v0, "field \'pmvMode\'"

    .line 30
    const-class v1, Lcom/phicomm/speaker/views/PlayModeView;

    const v2, 0x7f0901af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/PlayModeView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    const-string v0, "field \'tvListExplain\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09029c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->tvListExplain:Landroid/widget/TextView;

    const-string v0, "field \'lvMusic\'"

    .line 32
    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f09017d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvMusic:Landroid/widget/ListView;

    const-string v0, "field \'devLoadListFailed\' and method \'clickLoadListFailedLayout\'"

    const v1, 0x7f090089

    .line 33
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'devLoadListFailed\'"

    .line 34
    const-class v3, Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/DefaultExceptionView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 35
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;->b:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'llClose\'"

    .line 42
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090162

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llClose:Landroid/widget/LinearLayout;

    const-string v0, "field \'lvLoading\'"

    .line 43
    const-class v1, Lcom/phicomm/speaker/views/LoadingView;

    const v2, 0x7f09017c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/LoadingView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvLoading:Lcom/phicomm/speaker/views/LoadingView;

    const-string v0, "method \'clickCloseBtn\'"

    const v1, 0x7f090273

    .line 44
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;->c:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/PlayListActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;

    .line 57
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 59
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llRoot:Landroid/widget/LinearLayout;

    .line 60
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llContent:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    .line 62
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->tvListExplain:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvMusic:Landroid/widget/ListView;

    .line 64
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 65
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llClose:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvLoading:Lcom/phicomm/speaker/views/LoadingView;

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;->b:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
