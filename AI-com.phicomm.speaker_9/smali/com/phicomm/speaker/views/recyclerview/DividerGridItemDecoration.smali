.class public Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$f;
.source "DividerGridItemDecoration.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$f;-><init>()V

    .line 26
    sget-object v0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->a:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object p1

    .line 43
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result p1

    goto :goto_0

    .line 46
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 48
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;III)Z
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object p1

    .line 96
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    add-int/2addr p2, v1

    .line 98
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v1

    .line 101
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 102
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O()I

    move-result p1

    if-ne p1, v1, :cond_1

    add-int/2addr p2, v1

    .line 106
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v1

    .line 110
    :cond_1
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;III)Z
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object p1

    .line 123
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_2

    return v1

    .line 129
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 130
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 131
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 134
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_2

    return v1

    :cond_1
    add-int/2addr p2, v1

    .line 142
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .line 153
    invoke-direct {p0, p3}, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 154
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    .line 156
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b(Landroid/support/v7/widget/RecyclerView;III)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 157
    iget-object p2, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1, v3, v3, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->a(Landroid/support/v7/widget/RecyclerView;III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 160
    iget-object p2, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p2, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 163
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 162
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->c(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->d(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 9

    .line 54
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 56
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$h;

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    sub-int/2addr v4, v5

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v3, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v3, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr v6, v7

    .line 63
    iget-object v7, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v6

    .line 64
    iget-object v8, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    iget-object v6, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    sub-int/2addr v2, v3

    .line 69
    iget-object v3, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 70
    iget-object v6, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget-object v2, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 7

    .line 77
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$h;

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    sub-int/2addr v4, v5

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v3, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr v5, v6

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr v2, v3

    .line 86
    iget-object v3, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 88
    iget-object v6, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    iget-object v2, p0, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
