.class Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Landroid/view/Surface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;->val$surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    .line 208
    return-void
.end method
