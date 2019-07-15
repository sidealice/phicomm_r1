.class Lcom/phicomm/speaker/b/a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AbstractOnRecyclerItemClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/b/a;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/b/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/b/a;Lcom/phicomm/speaker/b/a$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/b/a$a;-><init>(Lcom/phicomm/speaker/b/a;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    invoke-static {v0}, Lcom/phicomm/speaker/b/a;->a(Lcom/phicomm/speaker/b/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    invoke-static {v1}, Lcom/phicomm/speaker/b/a;->a(Lcom/phicomm/speaker/b/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    iget-object v3, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    invoke-static {v3}, Lcom/phicomm/speaker/b/a;->a(Lcom/phicomm/speaker/b/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/phicomm/speaker/b/a;->b(Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    invoke-static {v0}, Lcom/phicomm/speaker/b/a;->a(Lcom/phicomm/speaker/b/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    invoke-static {v1}, Lcom/phicomm/speaker/b/a;->a(Lcom/phicomm/speaker/b/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    iget-object v3, p0, Lcom/phicomm/speaker/b/a$a;->a:Lcom/phicomm/speaker/b/a;

    invoke-static {v3}, Lcom/phicomm/speaker/b/a;->a(Lcom/phicomm/speaker/b/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/phicomm/speaker/b/a;->a(Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
