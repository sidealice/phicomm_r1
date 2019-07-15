.class Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;
.super Ljava/lang/Object;
.source "ResizingTextureView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalLayoutMatrixListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;

    iget-object v1, v1, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->getCurrentScaleType()Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;->setScaleType(Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;)V

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingTextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
