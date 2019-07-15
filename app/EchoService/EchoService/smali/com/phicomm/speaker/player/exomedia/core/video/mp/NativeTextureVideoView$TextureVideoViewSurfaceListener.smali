.class public Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;
.super Ljava/lang/Object;
.source "NativeTextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextureVideoViewSurfaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onSurfaceReady(Landroid/view/Surface;)V

    .line 322
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 332
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;->suspend()V

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onSurfaceSizeChanged(II)V

    .line 327
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 339
    return-void
.end method
