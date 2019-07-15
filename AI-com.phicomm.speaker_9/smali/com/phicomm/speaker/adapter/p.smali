.class public Lcom/phicomm/speaker/adapter/p;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SupportDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/p$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SupportDeviceBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SupportDeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/p;->a:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/p$a;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00b6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/phicomm/speaker/adapter/p$a;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/p$a;-><init>(Lcom/phicomm/speaker/adapter/p;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/phicomm/speaker/adapter/p$a;I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/p;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/SupportDeviceBean;

    if-eqz p2, :cond_0

    .line 41
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/p$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/p;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p2, Lcom/phicomm/speaker/bean/SupportDeviceBean;->iconResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/p$a;->b:Landroid/widget/TextView;

    iget p2, p2, Lcom/phicomm/speaker/bean/SupportDeviceBean;->nameResId:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/phicomm/speaker/adapter/p$a;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/p;->a(Lcom/phicomm/speaker/adapter/p$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/p;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/p$a;

    move-result-object p1

    return-object p1
.end method
