.class public abstract Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndices:[I

.field private output:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .locals 0
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I

    .prologue
    .line 43
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 45
    return-void
.end method


# virtual methods
.method public final getFirstSampleIndex(I)I
    .locals 1
    .param p1, "trackIndex"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final getOutput()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->getWriteIndices()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    .line 56
    return-void
.end method
