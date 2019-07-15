.class public Lcom/phicomm/speaker/adapter/k;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "NoneFavoriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/k;->b:Landroid/content/Context;

    .line 28
    iput p2, p0, Lcom/phicomm/speaker/adapter/k;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/k$a;
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00ec

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/phicomm/speaker/adapter/k$a;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/k$a;-><init>(Lcom/phicomm/speaker/adapter/k;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/phicomm/speaker/adapter/k$a;I)V
    .locals 3

    .line 43
    iget p2, p0, Lcom/phicomm/speaker/adapter/k;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    iget-object p2, p1, Lcom/phicomm/speaker/adapter/k$a;->a:Landroid/widget/TextView;

    const v2, 0x7f0f0187

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/k$a;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/phicomm/speaker/adapter/k;->b:Landroid/content/Context;

    const v2, 0x7f0f0067

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/k;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object p2, p1, Lcom/phicomm/speaker/adapter/k$a;->a:Landroid/widget/TextView;

    const v2, 0x7f0f0186

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/k$a;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/phicomm/speaker/adapter/k;->b:Landroid/content/Context;

    const v2, 0x7f0f0066

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/k;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/k;->c:Ljava/lang/String;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/phicomm/speaker/adapter/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/k;->a(Lcom/phicomm/speaker/adapter/k$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/k;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/k$a;

    move-result-object p1

    return-object p1
.end method
