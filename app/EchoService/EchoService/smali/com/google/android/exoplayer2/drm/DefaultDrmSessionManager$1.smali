.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

.field final synthetic val$error:Ljava/lang/IllegalStateException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/IllegalStateException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 387
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;->val$error:Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 390
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;->val$error:Ljava/lang/IllegalStateException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    .line 391
    return-void
.end method
