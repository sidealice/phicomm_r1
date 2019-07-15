.class public abstract Lcom/phicomm/speaker/model/common/a/d;
.super Lcom/phicomm/speaker/model/common/a/e;
.source "ListRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/phicomm/speaker/model/common/a/e;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/Object;)Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/model/common/a/f;",
            "TT;)",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/phicomm/speaker/model/common/a/f;I)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/model/common/a/d;->a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 22
    iget-object p1, p1, Lcom/phicomm/speaker/model/common/a/f;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/d;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 11
    check-cast p1, Lcom/phicomm/speaker/model/common/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/model/common/a/d;->a(Lcom/phicomm/speaker/model/common/a/f;I)V

    return-void
.end method
