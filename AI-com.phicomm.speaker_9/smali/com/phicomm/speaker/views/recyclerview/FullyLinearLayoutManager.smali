.class public Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "FullyLinearLayoutManager.java"


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 29
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x2

    .line 29
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x2

    .line 29
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;III[I)V
    .locals 4

    const/4 p2, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    .line 92
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->D()I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->F()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$h;->width:I

    .line 91
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 95
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->E()I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->G()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$h;->height:I

    .line 94
    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 97
    invoke-virtual {v0, p3, p4}, Landroid/view/View;->measure(II)V

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    const/4 p2, 0x1

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    .line 100
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 11

    .line 33
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 34
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 35
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 36
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    const/4 v1, 0x0

    move v8, v1

    move v9, v8

    move v10, v9

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->I()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 42
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 43
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    .line 41
    invoke-direct/range {v2 .. v7}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;III[I)V

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->i()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    aget v2, v2, v1

    add-int/2addr v9, v2

    if-nez v8, :cond_1

    .line 49
    iget-object v2, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    aget v10, v2, v3

    goto :goto_1

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    aget v2, v2, v3

    add-int/2addr v10, v2

    if-nez v8, :cond_1

    .line 54
    iget-object v2, p0, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->a:[I

    aget v9, v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    if-eq p2, p1, :cond_3

    goto :goto_2

    :cond_3
    move v9, p3

    :goto_2
    if-eq v0, p1, :cond_4

    goto :goto_3

    :cond_4
    move v10, p4

    .line 78
    :goto_3
    invoke-virtual {p0, v9, v10}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;->g(II)V

    return-void
.end method
