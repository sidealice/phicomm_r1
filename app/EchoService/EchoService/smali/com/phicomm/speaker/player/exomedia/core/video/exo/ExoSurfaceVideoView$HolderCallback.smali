.class public Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;
.super Ljava/lang/Object;
.source "ExoSurfaceVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 187
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->onSurfaceReady(Landroid/view/Surface;)V

    .line 182
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoSurfaceVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->onSurfaceDestroyed()V

    .line 192
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 193
    return-void
.end method
