.class Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field final synthetic val$listener:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->this$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->val$listener:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 6
    .param p1, "md"    # Landroid/media/MediaDrm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sessionId"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "hasNewUsableKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, "keyInfo":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "exoKeyInfo":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaDrm$KeyStatus;

    .line 98
    .local v1, "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    new-instance v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v4

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;-><init>(I[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v1    # "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->val$listener:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->this$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    invoke-interface {v2, v3, p2, v0, p4}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLjava/util/List;Z)V

    .line 102
    return-void
.end method
