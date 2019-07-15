.class public Lcom/zhy/a/a/c/a;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "HeaderAndFooterWrapper.java"


# annotations
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
.field private a:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/widget/RecyclerView$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 21
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    .line 22
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 28
    iput-object p1, p0, Lcom/zhy/a/a/c/a;->c:Landroid/support/v7/widget/RecyclerView$a;

    return-void
.end method

.method static synthetic a(Lcom/zhy/a/a/c/a;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    return-object p0
.end method

.method private a(I)Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/zhy/a/a/c/a;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/zhy/a/a/c/a;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    return-object p0
.end method

.method private b(I)Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/zhy/a/a/c/a;->a()I

    move-result v0

    invoke-direct {p0}, Lcom/zhy/a/a/c/a;->c()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/zhy/a/a/c/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhy/a/a/c/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/zhy/a/a/c/a;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Lcom/zhy/a/a/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/zhy/a/a/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/zhy/a/a/c/a;->a()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/zhy/a/a/c/a;->c()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {p0}, Lcom/zhy/a/a/c/a;->a()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->c:Landroid/support/v7/widget/RecyclerView$a;

    new-instance v1, Lcom/zhy/a/a/c/a$1;

    invoke-direct {v1, p0}, Lcom/zhy/a/a/c/a$1;-><init>(Lcom/zhy/a/a/c/a;)V

    invoke-static {v0, p1, v1}, Lcom/zhy/a/a/b/a;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/a/a/b/a$a;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 2

    .line 69
    invoke-direct {p0, p2}, Lcom/zhy/a/a/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p2}, Lcom/zhy/a/a/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {p0}, Lcom/zhy/a/a/c/a;->a()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/zhy/a/a/c/a;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/zhy/a/a/a/a;->a(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/a/a/a/a;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/zhy/a/a/c/a;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/zhy/a/a/a/a;->a(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/a/a/a/a;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/zhy/a/a/c/a;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->getLayoutPosition()I

    move-result v0

    .line 114
    invoke-direct {p0, v0}, Lcom/zhy/a/a/c/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/zhy/a/a/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    invoke-static {p1}, Lcom/zhy/a/a/b/a;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    :cond_1
    return-void
.end method
