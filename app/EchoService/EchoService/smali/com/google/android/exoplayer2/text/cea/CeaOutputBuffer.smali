.class public final Lcom/google/android/exoplayer2/text/cea/CeaOutputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "CeaOutputBuffer.java"


# instance fields
.field private final owner:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;)V
    .locals 0
    .param p1, "owner"    # Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaOutputBuffer;->owner:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    .line 33
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaOutputBuffer;->owner:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    .line 38
    return-void
.end method
