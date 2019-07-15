.class public abstract Lcom/phicomm/speaker/b/a;
.super Ljava/lang/Object;
.source "AbstractOnRecyclerItemClick.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/b/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/support/v4/view/GestureDetectorCompat;


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    .line 20
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/phicomm/speaker/b/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/b/a$a;-><init>(Lcom/phicomm/speaker/b/a;Lcom/phicomm/speaker/b/a$1;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/phicomm/speaker/b/a;->b:Landroid/support/v4/view/GestureDetectorCompat;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/b/a;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/phicomm/speaker/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/view/MotionEvent;)V
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/view/MotionEvent;)V
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/phicomm/speaker/b/a;->b:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/phicomm/speaker/b/a;->b:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
