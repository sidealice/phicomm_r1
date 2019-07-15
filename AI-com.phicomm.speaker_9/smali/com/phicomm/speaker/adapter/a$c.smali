.class Lcom/phicomm/speaker/adapter/a$c;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "FavoriteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/phicomm/speaker/adapter/a;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/a;Landroid/view/View;)V
    .locals 1

    .line 564
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a$c;->d:Lcom/phicomm/speaker/adapter/a;

    .line 565
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902b2

    .line 566
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a$c;->a:Landroid/widget/TextView;

    const v0, 0x7f090121

    .line 567
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a$c;->b:Landroid/widget/ImageView;

    const v0, 0x7f090251

    .line 568
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/a$c;->c:Landroid/widget/TextView;

    .line 569
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/a$c;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/a;->c(Lcom/phicomm/speaker/adapter/a;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 570
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/a;->a(Lcom/phicomm/speaker/adapter/a;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 571
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/a$c;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/a$c;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/a;->d(Lcom/phicomm/speaker/adapter/a;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/a$c;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/a;->e(Lcom/phicomm/speaker/adapter/a;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_0
    return-void
.end method
