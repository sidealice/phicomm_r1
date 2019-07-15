.class Lcom/phicomm/speaker/adapter/s$a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "VoiceCommandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/LinearLayout;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/phicomm/speaker/adapter/s;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/s;Landroid/view/View;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s$a;->f:Lcom/phicomm/speaker/adapter/s;

    .line 86
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f09016c

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s$a;->d:Landroid/widget/LinearLayout;

    const p1, 0x7f090101

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s$a;->a:Landroid/widget/ImageView;

    const p1, 0x7f0902fe

    .line 89
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s$a;->b:Landroid/widget/TextView;

    const p1, 0x7f090275

    .line 90
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s$a;->c:Landroid/widget/TextView;

    const p1, 0x7f090311

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s$a;->e:Landroid/view/View;

    return-void
.end method
