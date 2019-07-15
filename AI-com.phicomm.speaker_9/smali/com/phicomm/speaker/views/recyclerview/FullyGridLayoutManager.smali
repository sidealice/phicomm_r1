.class public Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "FullyGridLayoutManager.java"


# instance fields
.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->z:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->z:[I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;III[I)V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->I()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 p2, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    .line 95
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->D()I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->F()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$h;->width:I

    .line 94
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 97
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->E()I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->G()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$h;->height:I

    .line 96
    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 98
    invoke-virtual {v0, p3, p4}, Landroid/view/View;->measure(II)V

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    const/4 p2, 0x1

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    .line 101
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 17

    move-object/from16 v6, p0

    .line 27
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 28
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 29
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 30
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->I()I

    move-result v11

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->c()I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_0
    if-ge v14, v11, :cond_4

    .line 38
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 39
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v6, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->z:[I

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v14

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;III[I)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->i()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 43
    rem-int v0, v14, v12

    if-nez v0, :cond_0

    .line 44
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->z:[I

    aget v0, v0, v13

    add-int/2addr v15, v0

    :cond_0
    if-nez v14, :cond_3

    .line 47
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->z:[I

    aget v16, v0, v1

    goto :goto_1

    .line 50
    :cond_1
    rem-int v0, v14, v12

    if-nez v0, :cond_2

    .line 51
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->z:[I

    aget v0, v0, v1

    add-int v16, v16, v0

    :cond_2
    if-nez v14, :cond_3

    .line 54
    iget-object v0, v6, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->z:[I

    aget v15, v0, v13

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    if-eq v7, v1, :cond_5

    if-eqz v7, :cond_5

    if-eq v7, v0, :cond_6

    :cond_5
    move v9, v15

    :cond_6
    if-eq v8, v1, :cond_7

    if-eqz v8, :cond_7

    if-eq v8, v0, :cond_8

    :cond_7
    move/from16 v10, v16

    .line 83
    :cond_8
    invoke-virtual {v6, v9, v10}, Lcom/phicomm/speaker/views/recyclerview/FullyGridLayoutManager;->g(II)V

    return-void
.end method
