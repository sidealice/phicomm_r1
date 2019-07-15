.class Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;
.super Ljava/lang/Object;
.source "ResizingSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    iget-object v1, v1, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 364
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 366
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 367
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 372
    return-void
.end method
