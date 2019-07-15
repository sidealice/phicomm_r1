.class public Lcom/phicomm/speaker/fragment/FmFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FmFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/fragment/FmFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/fragment/FmFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/fragment/FmFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FmFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FmFragment;

    const-string v0, "field \'tvMessage\'"

    .line 21
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/phicomm/speaker/fragment/FmFragment;->tvMessage:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FmFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FmFragment;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 30
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FmFragment;->tvMessage:Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FmFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FmFragment;

    return-void
.end method
