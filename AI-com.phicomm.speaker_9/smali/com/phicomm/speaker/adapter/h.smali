.class public Lcom/phicomm/speaker/adapter/h;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "LyricsLoadingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Landroid/support/v7/widget/RecyclerView$t;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View$OnClickListener;

.field private c:I


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 38
    iput p1, p0, Lcom/phicomm/speaker/adapter/h;->c:I

    .line 39
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/h;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0f0188

    .line 57
    iput p1, p0, Lcom/phicomm/speaker/adapter/h;->a:I

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f0131

    .line 53
    iput p1, p0, Lcom/phicomm/speaker/adapter/h;->a:I

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0136

    .line 50
    iput p1, p0, Lcom/phicomm/speaker/adapter/h;->a:I

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/h;->notifyDataSetChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 1

    .line 77
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 78
    iget p2, p0, Lcom/phicomm/speaker/adapter/h;->a:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget p2, p0, Lcom/phicomm/speaker/adapter/h;->a:I

    const v0, 0x7f0f0131

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 65
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/h;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/phicomm/speaker/adapter/h;->c:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 68
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0188

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p1, Lcom/phicomm/speaker/adapter/h$a;

    invoke-direct {p1, p0, p2}, Lcom/phicomm/speaker/adapter/h$a;-><init>(Lcom/phicomm/speaker/adapter/h;Landroid/view/View;)V

    return-object p1
.end method
