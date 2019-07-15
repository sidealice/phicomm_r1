.class public Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;
.super Landroid/support/v7/widget/StaggeredGridLayoutManager;
.source "FullyStaggeredGridLayoutManager.java"


# instance fields
.field private i:[I

.field private j:[I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    const/4 p1, 0x2

    .line 22
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->i:[I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;III[I)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->I()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->c(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 108
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->D()I

    move-result v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->F()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 109
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->E()I

    move-result v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->G()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->height:I

    invoke-static {p4, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 111
    invoke-virtual {p2, p3, p4}, Landroid/view/View;->measure(II)V

    const/4 p3, 0x0

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    add-int/2addr p4, v1

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr p4, v1

    aput p4, p5, p3

    const/4 p3, 0x1

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    add-int/2addr p4, v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr p4, v0

    aput p4, p5, p3

    .line 115
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private b([I)I
    .locals 4

    const/4 v0, 0x0

    .line 124
    aget v1, p1, v0

    .line 125
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private c([I)I
    .locals 4

    const/4 v0, 0x0

    .line 138
    aget v1, p1, v0

    move v2, v0

    .line 139
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 140
    aget v3, p1, v0

    if-ge v3, v1, :cond_0

    .line 141
    aget v1, p1, v0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 16

    move-object/from16 v6, p0

    .line 34
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 35
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 37
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 38
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->I()I

    move-result v11

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->i()I

    move-result v0

    .line 48
    new-array v0, v0, [I

    iput-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->j:[I

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    const/4 v14, 0x1

    if-ge v13, v11, :cond_1

    .line 52
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 53
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->i:[I

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v13

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;III[I)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->O()I

    move-result v0

    if-ne v0, v14, :cond_0

    .line 57
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->j:[I

    iget-object v1, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->j:[I

    invoke-direct {v6, v1}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->c([I)I

    move-result v1

    aget v2, v0, v1

    iget-object v3, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->i:[I

    aget v3, v3, v14

    add-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->j:[I

    iget-object v1, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->j:[I

    invoke-direct {v6, v1}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->c([I)I

    move-result v1

    aget v2, v0, v1

    iget-object v3, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->i:[I

    aget v3, v3, v12

    add-int/2addr v2, v3

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->O()I

    move-result v0

    if-ne v0, v14, :cond_2

    .line 63
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->j:[I

    invoke-direct {v6, v0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->b([I)I

    move-result v0

    goto :goto_2

    .line 65
    :cond_2
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->j:[I

    invoke-direct {v6, v0}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->b([I)I

    move-result v0

    move v15, v12

    move v12, v0

    move v0, v15

    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v7, v2, :cond_4

    if-eqz v7, :cond_4

    if-eq v7, v1, :cond_3

    goto :goto_3

    :cond_3
    move v12, v8

    :cond_4
    :goto_3
    if-eq v9, v2, :cond_5

    if-eqz v9, :cond_5

    if-eq v9, v1, :cond_6

    :cond_5
    move v10, v0

    .line 94
    :cond_6
    invoke-virtual {v6, v12, v10}, Lcom/phicomm/speaker/views/recyclerview/FullyStaggeredGridLayoutManager;->g(II)V

    return-void
.end method
