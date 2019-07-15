.class public Lcom/zhy/a/a/c/b;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "LoadMoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/a/a/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Landroid/support/v7/widget/RecyclerView$t;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$a;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Lcom/zhy/a/a/c/b$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    .line 117
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-eqz v0, :cond_0

    .line 122
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(Z)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/zhy/a/a/c/b;->b:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zhy/a/a/c/b;->c:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private a(I)Z
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/zhy/a/a/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/zhy/a/a/c/b;I)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/zhy/a/a/c/b;->a(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/zhy/a/a/c/b;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/zhy/a/a/c/b;->b:Landroid/view/View;

    return-object p0
.end method

.method public getItemCount()I
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/zhy/a/a/c/b;->a()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/zhy/a/a/c/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7ffffffd

    return p1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    new-instance v1, Lcom/zhy/a/a/c/b$1;

    invoke-direct {v1, p0}, Lcom/zhy/a/a/c/b$1;-><init>(Lcom/zhy/a/a/c/b;)V

    invoke-static {v0, p1, v1}, Lcom/zhy/a/a/b/a;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/a/a/b/a$a;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 1

    .line 71
    invoke-direct {p0, p2}, Lcom/zhy/a/a/c/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/zhy/a/a/c/b;->d:Lcom/zhy/a/a/c/b$a;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/zhy/a/a/c/b;->d:Lcom/zhy/a/a/c/b$a;

    invoke-interface {p1}, Lcom/zhy/a/a/c/b$a;->a()V

    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 1

    const v0, 0x7ffffffd

    if-ne p2, v0, :cond_1

    .line 56
    iget-object p2, p0, Lcom/zhy/a/a/c/b;->b:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/zhy/a/a/c/b;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/zhy/a/a/a/a;->a(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/a/a/a/a;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/zhy/a/a/c/b;->c:I

    invoke-static {p2, p1, v0}, Lcom/zhy/a/a/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/zhy/a/a/a/a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/zhy/a/a/c/b;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 109
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->getLayoutPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zhy/a/a/c/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/zhy/a/a/c/b;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    :cond_0
    return-void
.end method
