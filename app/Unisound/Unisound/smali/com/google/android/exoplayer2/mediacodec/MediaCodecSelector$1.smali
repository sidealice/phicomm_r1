.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector$1;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method
