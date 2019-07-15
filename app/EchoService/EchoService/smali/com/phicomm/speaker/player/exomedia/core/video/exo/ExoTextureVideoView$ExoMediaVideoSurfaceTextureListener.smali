.class public Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;
.super Ljava/lang/Object;
.source "ExoTextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExoMediaVideoSurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;

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
    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->onSurfaceReady(Landroid/view/Surface;)V

    .line 183
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->onSurfaceDestroyed()V

    .line 188
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 201
    return-void
.end method
