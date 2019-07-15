.class Lcom/phicomm/speaker/adapter/k$a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "NoneFavoriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/phicomm/speaker/adapter/k;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/k;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/k$a;->c:Lcom/phicomm/speaker/adapter/k;

    .line 65
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902be

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/k$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0902bf

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/k$a;->b:Landroid/widget/TextView;

    return-void
.end method
