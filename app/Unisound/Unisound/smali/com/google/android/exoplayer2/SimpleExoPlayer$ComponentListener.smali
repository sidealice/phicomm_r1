.class final Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextRenderer$Output;
.implements Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/SimpleExoPlayer$1;

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 782
    :cond_0
    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I

    .line 808
    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 765
    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 787
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 790
    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    .line 773
    :cond_0
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioTrackUnderrun(IJJ)V

    .line 798
    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    .line 817
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 723
    :cond_0
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 826
    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;->onRenderedFirstFrame()V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    .line 746
    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 850
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 859
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 860
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 855
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 866
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 708
    :cond_0
    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 755
    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 699
    :cond_0
    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 716
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;->onVideoSizeChanged(IIIF)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    .line 736
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 838
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 833
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 843
    return-void
.end method
