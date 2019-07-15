.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .prologue
    .line 411
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysLoaded()V

    .line 415
    return-void
.end method
