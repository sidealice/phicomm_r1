.class public Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChoicenessFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/fragment/ChoicenessFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/fragment/ChoicenessFragment;Landroid/view/View;)V
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    const-string v0, "field \'mRecyclerView\'"

    .line 26
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901c3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'devLoadFailed\' and method \'dev_none_content\'"

    const v1, 0x7f090088

    .line 27
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'devLoadFailed\'"

    .line 28
    const-class v2, Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/DefaultExceptionView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 29
    iput-object p2, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;->b:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding$1;-><init>(Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;Lcom/phicomm/speaker/fragment/ChoicenessFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 44
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;->b:Landroid/view/View;

    .line 50
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/ChoicenessFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    return-void
.end method
