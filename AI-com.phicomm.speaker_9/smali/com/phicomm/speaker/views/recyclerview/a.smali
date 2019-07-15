.class public Lcom/phicomm/speaker/views/recyclerview/a;
.super Landroid/support/v7/widget/RecyclerView$f;
.source "MyDecoration.java"


# static fields
.field public static final a:[I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/views/recyclerview/a;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$f;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/phicomm/speaker/views/recyclerview/a;->e:F

    .line 34
    iput v0, p0, Lcom/phicomm/speaker/views/recyclerview/a;->f:F

    .line 38
    iput v0, p0, Lcom/phicomm/speaker/views/recyclerview/a;->g:F

    .line 42
    iput v0, p0, Lcom/phicomm/speaker/views/recyclerview/a;->h:F

    .line 52
    sget-object v0, Lcom/phicomm/speaker/views/recyclerview/a;->a:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/a;->d:Landroid/content/Context;

    const/4 p1, 0x0

    .line 54
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/views/recyclerview/a;->a(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 78
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 80
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 83
    :cond_0
    iput p1, p0, Lcom/phicomm/speaker/views/recyclerview/a;->c:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 142
    iget p2, p0, Lcom/phicomm/speaker/views/recyclerview/a;->c:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 144
    iget-object p2, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 88
    iget v0, p0, Lcom/phicomm/speaker/views/recyclerview/a;->c:I

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/views/recyclerview/a;->d(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/views/recyclerview/a;->c(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    :goto_0
    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .line 99
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    .line 100
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 101
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 103
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$h;

    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr v3, v4

    .line 108
    iget-object v4, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 109
    iget-object v5, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/phicomm/speaker/views/recyclerview/a;->d:Landroid/content/Context;

    iget v7, p0, Lcom/phicomm/speaker/views/recyclerview/a;->e:F

    invoke-static {v6, v7}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v6, p3

    iget-object v7, p0, Lcom/phicomm/speaker/views/recyclerview/a;->d:Landroid/content/Context;

    iget v8, p0, Lcom/phicomm/speaker/views/recyclerview/a;->f:F

    .line 110
    invoke-static {v7, v8}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int v7, v0, v7

    .line 109
    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    iget-object v3, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .line 120
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result p3

    .line 121
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 122
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 125
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$h;

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr v3, v4

    .line 130
    iget-object v4, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 131
    iget-object v5, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/phicomm/speaker/views/recyclerview/a;->d:Landroid/content/Context;

    iget v7, p0, Lcom/phicomm/speaker/views/recyclerview/a;->g:F

    invoke-static {v6, v7}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v6, p3

    iget-object v7, p0, Lcom/phicomm/speaker/views/recyclerview/a;->d:Landroid/content/Context;

    iget v8, p0, Lcom/phicomm/speaker/views/recyclerview/a;->h:F

    .line 132
    invoke-static {v7, v8}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int v7, v0, v7

    .line 131
    invoke-virtual {v5, v3, v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    iget-object v3, p0, Lcom/phicomm/speaker/views/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
