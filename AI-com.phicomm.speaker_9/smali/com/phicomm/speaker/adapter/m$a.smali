.class Lcom/phicomm/speaker/adapter/m$a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "SmartHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/phicomm/speaker/adapter/m;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/m;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m$a;->f:Lcom/phicomm/speaker/adapter/m;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f09012a

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m$a;->a:Landroid/widget/ImageView;

    const p1, 0x7f09017f

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m$a;->b:Landroid/view/View;

    const p1, 0x7f090283

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m$a;->c:Landroid/widget/TextView;

    const p1, 0x7f090281

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m$a;->d:Landroid/widget/TextView;

    const p1, 0x7f090311

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m$a;->e:Landroid/view/View;

    return-void
.end method
