.class public Lcom/phicomm/speaker/model/common/c;
.super Landroid/support/v7/widget/RecyclerView$f;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$f;-><init>()V

    .line 19
    iput p1, p0, Lcom/phicomm/speaker/model/common/c;->d:I

    .line 20
    iput p2, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    .line 21
    iput p3, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    .line 22
    iput-boolean p4, p0, Lcom/phicomm/speaker/model/common/c;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 27
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Lcom/phicomm/speaker/model/common/c;->d:I

    sub-int/2addr p2, p3

    if-ltz p2, :cond_2

    .line 29
    iget p3, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    rem-int p3, p2, p3

    .line 31
    iget-boolean p4, p0, Lcom/phicomm/speaker/model/common/c;->c:Z

    if-eqz p4, :cond_1

    .line 32
    iget p4, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    iget v0, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    mul-int/2addr v0, p3

    iget v1, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    div-int/2addr v0, v1

    sub-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    .line 33
    iget p4, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    mul-int/2addr p3, p4

    iget p4, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    div-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 35
    iget p3, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    if-ge p2, p3, :cond_0

    .line 36
    iget p2, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 38
    :cond_0
    iget p2, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 40
    :cond_1
    iget p4, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    mul-int/2addr p4, p3

    iget v0, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    div-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 41
    iget p4, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    add-int/lit8 p3, p3, 0x1

    iget v0, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    mul-int/2addr p3, v0

    iget v0, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    div-int/2addr p3, v0

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 42
    iget p3, p0, Lcom/phicomm/speaker/model/common/c;->a:I

    if-lt p2, p3, :cond_2

    .line 43
    iget p2, p0, Lcom/phicomm/speaker/model/common/c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
