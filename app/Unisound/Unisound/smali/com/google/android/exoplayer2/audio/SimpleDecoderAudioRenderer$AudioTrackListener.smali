.class final Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;
.super Ljava/lang/Object;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioTrackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;-><init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioSessionId(I)V

    .line 614
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 620
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$202(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Z)Z

    .line 621
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    .line 627
    return-void
.end method
