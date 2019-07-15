.class public Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;
.super Ljava/lang/Object;
.source "NativeSurfaceVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p3, p4}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onSurfaceSizeChanged(II)V

    .line 321
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onSurfaceReady(Landroid/view/Surface;)V

    .line 316
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 325
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 326
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeSurfaceVideoView;->suspend()V

    .line 327
    return-void
.end method
