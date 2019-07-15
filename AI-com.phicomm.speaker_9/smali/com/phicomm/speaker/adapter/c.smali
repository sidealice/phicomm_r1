.class public Lcom/phicomm/speaker/adapter/c;
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

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 20
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/c;->a:Landroid/support/v4/util/SparseArrayCompat;

    .line 21
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/c;->c:Landroid/support/v7/widget/RecyclerView$a;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/c;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/c;->a:Landroid/support/v4/util/SparseArrayCompat;

    return-object p0
.end method

.method private a(I)Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/adapter/c;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    return-object p0
.end method

.method private b(I)Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/c;->d()I

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

.method private d()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/c;->c()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/c;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/c;->d()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->c:Landroid/support/v7/widget/RecyclerView$a;

    new-instance v1, Lcom/phicomm/speaker/adapter/c$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/adapter/c$1;-><init>(Lcom/phicomm/speaker/adapter/c;)V

    invoke-static {v0, p1, v1}, Lcom/zhy/a/a/b/a;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/a/a/b/a$a;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 2

    .line 59
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/adapter/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/adapter/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/zhy/a/a/a/a;->a(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/a/a/a/a;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/zhy/a/a/a/a;->a(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/a/a/a/a;

    move-result-object p1

    return-object p1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c;->c:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->getLayoutPosition()I

    move-result v0

    .line 96
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    invoke-static {p1}, Lcom/zhy/a/a/b/a;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    :cond_1
    return-void
.end method
