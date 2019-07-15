.class final Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "SimpleSubtitleOutputBuffer.java"


# instance fields
.field private final owner:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;)V
    .locals 0
    .param p1, "owner"    # Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    .line 31
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    .line 36
    return-void
.end method
