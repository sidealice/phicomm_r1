.class public final Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;


# instance fields
.field private formatDeclared:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8
    .param p1, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const-string v1, "application/x-scte35"

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    .line 52
    invoke-static {v7, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 54
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    .line 57
    .local v5, "sampleSize":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 5
    .param p1, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    const/4 v4, 0x0

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 39
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 40
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-scte35"

    const/4 v3, -0x1

    invoke-static {v1, v2, v4, v3, v4}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 43
    return-void
.end method
