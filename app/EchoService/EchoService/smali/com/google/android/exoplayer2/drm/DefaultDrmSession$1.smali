.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V
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
    .line 310
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysRestored()V

    .line 314
    return-void
.end method
