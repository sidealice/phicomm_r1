.class Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 93
    iget-object v2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getScale()F

    move-result v2

    invoke-static {}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c()F

    move-result v3

    cmpg-float v2, v2, v3

    const-wide/16 v3, 0x10

    if-gez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    new-instance v5, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;

    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    .line 95
    invoke-static {}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c()F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;-><init>(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;FFF)V

    .line 94
    invoke-virtual {v2, v5, v3, v4}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;Z)Z

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    new-instance v5, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;

    iget-object v6, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    iget-object v7, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    .line 99
    invoke-static {v7}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->b(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;-><init>(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;FFF)V

    .line 98
    invoke-virtual {v2, v5, v3, v4}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$1;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;Z)Z

    :goto_0
    return v1
.end method
