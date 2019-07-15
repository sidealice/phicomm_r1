.class public Lcom/phicomm/speaker/fragment/ReminderFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ReminderFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/fragment/ReminderFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/fragment/ReminderFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/fragment/ReminderFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/ReminderFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    const-string v0, "field \'requestLayout\'"

    .line 23
    const-class v1, Lcom/phicomm/speaker/views/widget/RequestLayout;

    const v2, 0x7f0901ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/widget/RequestLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/ReminderFragment;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const-string v0, "field \'refreshLayout\'"

    .line 24
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0901c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/ReminderFragment;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const-string v0, "field \'recyclerView\'"

    .line 25
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/phicomm/speaker/fragment/ReminderFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ReminderFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 34
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/ReminderFragment;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 35
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/ReminderFragment;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 36
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/ReminderFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 38
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/ReminderFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    return-void
.end method
