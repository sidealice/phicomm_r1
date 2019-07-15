.class public Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;
.super Ljava/lang/Object;
.source "ExoVideoDelegate.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;
.implements Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->onBufferingUpdate(I)V

    .line 222
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 217
    return-void
.end method
