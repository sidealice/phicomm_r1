.class public Lcom/phicomm/speaker/adapter/e;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "LoadErrorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/e$a;,
        Lcom/phicomm/speaker/adapter/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/e$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Lcom/phicomm/speaker/adapter/e$a;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/e;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/e$b;
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00e7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 30
    new-instance p2, Lcom/phicomm/speaker/adapter/f;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/adapter/f;-><init>(Lcom/phicomm/speaker/adapter/e;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    new-instance p2, Lcom/phicomm/speaker/adapter/e$b;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/e$b;-><init>(Lcom/phicomm/speaker/adapter/e;Lcom/phicomm/speaker/views/DefaultExceptionView;)V

    return-object p2
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/e;->c:Lcom/phicomm/speaker/adapter/e$a;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/e;->c:Lcom/phicomm/speaker/adapter/e$a;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/adapter/e$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/e$a;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/e;->c:Lcom/phicomm/speaker/adapter/e$a;

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/e$b;I)V
    .locals 1

    .line 40
    iget-object p2, p1, Lcom/phicomm/speaker/adapter/e$b;->a:Lcom/phicomm/speaker/views/DefaultExceptionView;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/e;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setIvHint(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/e$b;->a:Lcom/phicomm/speaker/views/DefaultExceptionView;

    iget-object p2, p0, Lcom/phicomm/speaker/adapter/e;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setTvHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/phicomm/speaker/adapter/e$b;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/e;->a(Lcom/phicomm/speaker/adapter/e$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/e;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/e$b;

    move-result-object p1

    return-object p1
.end method
