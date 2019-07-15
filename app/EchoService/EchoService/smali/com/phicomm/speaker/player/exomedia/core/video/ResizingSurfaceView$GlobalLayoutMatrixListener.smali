.class Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;
.super Ljava/lang/Object;
.source "ResizingSurfaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalLayoutMatrixListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    iget-object v1, v1, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->getCurrentScaleType()Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->setScaleType(Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;)V

    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
