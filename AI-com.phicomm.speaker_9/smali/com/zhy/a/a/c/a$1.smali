.class Lcom/zhy/a/a/c/a$1;
.super Ljava/lang/Object;
.source "HeaderAndFooterWrapper.java"

# interfaces
.implements Lcom/zhy/a/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/a/a/c/a;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhy/a/a/c/a;


# direct methods
.method constructor <init>(Lcom/zhy/a/a/c/a;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$c;I)I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0, p3}, Lcom/zhy/a/a/c/a;->getItemViewType(I)I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-static {v1}, Lcom/zhy/a/a/c/a;->a(Lcom/zhy/a/a/c/a;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result p1

    return p1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-static {v1}, Lcom/zhy/a/a/c/a;->b(Lcom/zhy/a/a/c/a;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 103
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
