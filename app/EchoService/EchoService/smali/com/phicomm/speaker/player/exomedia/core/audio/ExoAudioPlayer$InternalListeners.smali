.class public Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;
.super Ljava/lang/Object;
.source "ExoAudioPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;
.implements Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->onBufferingUpdate(I)V

    .line 236
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 231
    return-void
.end method
