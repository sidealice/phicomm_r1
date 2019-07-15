.class public Lcom/zhy/a/a/b/a;
.super Ljava/lang/Object;
.source "WrapperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/a/a/b/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/a/a/b/a$a;)V
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 22
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object p0

    .line 23
    instance-of p1, p0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    .line 25
    check-cast p0, Landroid/support/v7/widget/GridLayoutManager;

    .line 26
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->b()Landroid/support/v7/widget/GridLayoutManager$c;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/zhy/a/a/b/a$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/zhy/a/a/b/a$1;-><init>(Lcom/zhy/a/a/b/a$a;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$c;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 36
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    .line 42
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    instance-of v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(Z)V

    :cond_0
    return-void
.end method
