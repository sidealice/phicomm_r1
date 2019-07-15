.class public final Lcom/google/android/exoplayer2/util/FlacStreamInfo;
.super Ljava/lang/Object;
.source "FlacStreamInfo.java"


# instance fields
.field public final bitsPerSample:I

.field public final channels:I

.field public final maxBlockSize:I

.field public final maxFrameSize:I

.field public final minBlockSize:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final totalSamples:J


# direct methods
.method public constructor <init>(IIIIIIIJ)V
    .locals 0
    .param p1, "minBlockSize"    # I
    .param p2, "maxBlockSize"    # I
    .param p3, "minFrameSize"    # I
    .param p4, "maxFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "channels"    # I
    .param p7, "bitsPerSample"    # I
    .param p8, "totalSamples"    # J

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->minBlockSize:I

    .line 58
    iput p2, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->maxBlockSize:I

    .line 59
    iput p3, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->minFrameSize:I

    .line 60
    iput p4, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->maxFrameSize:I

    .line 61
    iput p5, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    .line 62
    iput p6, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->channels:I

    .line 63
    iput p7, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->bitsPerSample:I

    .line 64
    iput-wide p8, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->totalSamples:J

    .line 65
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v6, 0x20

    const/16 v3, 0x18

    const/16 v2, 0x10

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 42
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 43
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->minBlockSize:I

    .line 44
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->maxBlockSize:I

    .line 45
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->minFrameSize:I

    .line 46
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->maxFrameSize:I

    .line 47
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    .line 48
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->channels:I

    .line 49
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->bitsPerSample:I

    .line 50
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    .line 51
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->totalSamples:J

    .line 53
    return-void
.end method


# virtual methods
.method public bitRate()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->bitsPerSample:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public durationUs()J
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->totalSamples:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public maxDecodedFrameSize()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->maxBlockSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->channels:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    return v0
.end method
