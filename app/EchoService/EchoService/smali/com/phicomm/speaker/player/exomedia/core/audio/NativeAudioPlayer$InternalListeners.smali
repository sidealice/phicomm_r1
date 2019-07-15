.class public Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;
.super Ljava/lang/Object;
.source "NativeAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->onBufferingUpdate(I)V

    .line 235
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;

    iput p2, v0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->currentBufferPercent:I

    .line 236
    return-void
.end method
