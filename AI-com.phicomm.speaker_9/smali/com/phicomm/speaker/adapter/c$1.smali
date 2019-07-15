.class Lcom/phicomm/speaker/adapter/c$1;
.super Ljava/lang/Object;
.source "HeaderAndFooterWrapper.java"

# interfaces
.implements Lcom/zhy/a/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/c;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/c;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/c$1;->a:Lcom/phicomm/speaker/adapter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$c;I)I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c$1;->a:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0, p3}, Lcom/phicomm/speaker/adapter/c;->getItemViewType(I)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/c$1;->a:Lcom/phicomm/speaker/adapter/c;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/c;->a(Lcom/phicomm/speaker/adapter/c;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result p1

    return p1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/c$1;->a:Lcom/phicomm/speaker/adapter/c;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/c;->b(Lcom/phicomm/speaker/adapter/c;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 85
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
