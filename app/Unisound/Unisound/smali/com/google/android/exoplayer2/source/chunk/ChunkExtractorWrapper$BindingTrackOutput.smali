.class final Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field private final id:I

.field private final manifestFormat:Lcom/google/android/exoplayer2/Format;

.field public sampleFormat:Lcom/google/android/exoplayer2/Format;

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final type:I


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "manifestFormat"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->id:I

    .line 153
    iput p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->type:I

    .line 154
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplayer2/Format;

    .line 155
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V
    .locals 2
    .param p1, "trackOutputProvider"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->id:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->type:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->copyWithManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 174
    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 185
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 191
    return-void
.end method
