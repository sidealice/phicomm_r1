.class Lcom/phicomm/speaker/adapter/p$a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "SupportDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/phicomm/speaker/adapter/p;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/p;Landroid/view/View;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/p$a;->c:Lcom/phicomm/speaker/adapter/p;

    .line 64
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900f2

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/p$a;->a:Landroid/widget/ImageView;

    const p1, 0x7f090283

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/p$a;->b:Landroid/widget/TextView;

    return-void
.end method
