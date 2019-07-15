.class public abstract Lcom/phicomm/speaker/model/common/a/e;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/model/common/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/model/common/a/f;
    .locals 2

    .line 20
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/model/common/a/e;->b(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/model/common/a/e;->a(I)I

    move-result p2

    if-lez p2, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    :cond_0
    new-instance p1, Lcom/phicomm/speaker/model/common/a/f;

    invoke-direct {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method protected abstract b(I)Landroid/view/View;
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/model/common/a/e;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/model/common/a/f;

    move-result-object p1

    return-object p1
.end method
