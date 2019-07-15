.class Lcom/phicomm/speaker/adapter/n$b;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "SpeakerIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/n;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/n;Landroid/view/View;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n$b;->a:Lcom/phicomm/speaker/adapter/n;

    .line 128
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901ec

    .line 129
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n$b;->b:Landroid/view/View;

    const p1, 0x7f09012e

    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n$b;->c:Landroid/widget/ImageView;

    const p1, 0x7f090131

    .line 131
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n$b;->d:Landroid/widget/ImageView;

    const p1, 0x7f0902e9

    .line 132
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n$b;->e:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/n$b;)Landroid/view/View;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/n$b;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/ImageView;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/n$b;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/TextView;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/n$b;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/ImageView;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/n$b;->d:Landroid/widget/ImageView;

    return-object p0
.end method
