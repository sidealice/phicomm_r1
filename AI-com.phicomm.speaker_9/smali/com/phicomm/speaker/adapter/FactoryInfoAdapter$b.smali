.class Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "FactoryInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;Landroid/view/View;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;->c:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    .line 134
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900ce

    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;->a:Landroid/widget/TextView;

    const p1, 0x7f090087

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;->b:Landroid/widget/TextView;

    return-void
.end method
