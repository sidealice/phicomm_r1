.class public Lcom/phicomm/speaker/model/common/a/f;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "RecyclerViewHolder.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    .line 22
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/model/common/a/f;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/model/common/a/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/model/common/a/f;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/phicomm/speaker/model/common/a/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b(I)Landroid/widget/TextView;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public c(I)Landroid/widget/ImageView;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method
