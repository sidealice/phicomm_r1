.class final Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private final language:Ljava/lang/String;

.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private sampleData:[B

.field private final sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sampleSize:I

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 64
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    .line 65
    return-void
.end method

.method private buildTrackOutput(J)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 11
    .param p1, "subsampleOffsetUs"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 169
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v3, 0x3

    invoke-interface {v2, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 170
    .local v0, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    const-string v2, "text/vtt"

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    move-object v3, v1

    move-object v7, v1

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 173
    return-object v0
.end method

.method private processSample()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v24, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 122
    .local v24, "webvttData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :try_start_0
    invoke-static/range {v24 .. v24}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const-wide/16 v22, 0x0

    .line 129
    .local v22, "vttTimestampUs":J
    const-wide/16 v20, 0x0

    .line 133
    .local v20, "tsTimestampUs":J
    :cond_0
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 134
    const-string v8, "X-TIMESTAMP-MAP"

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 135
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 136
    .local v16, "localTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    .line 137
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 123
    .end local v13    # "line":Ljava/lang/String;
    .end local v16    # "localTimestampMatcher":Ljava/util/regex/Matcher;
    .end local v20    # "tsTimestampUs":J
    .end local v22    # "vttTimestampUs":J
    :catch_0
    move-exception v12

    .line 124
    .local v12, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v8, v12}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 139
    .end local v12    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v16    # "localTimestampMatcher":Ljava/util/regex/Matcher;
    .restart local v20    # "tsTimestampUs":J
    .restart local v22    # "vttTimestampUs":J
    :cond_1
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 140
    .local v17, "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_2

    .line 141
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 143
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v22

    .line 144
    const/4 v8, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v20

    .line 145
    goto :goto_0

    .line 149
    .end local v16    # "localTimestampMatcher":Ljava/util/regex/Matcher;
    .end local v17    # "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-static/range {v24 .. v24}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->findNextCueHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 150
    .local v4, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    if-nez v4, :cond_4

    .line 152
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 166
    :goto_1
    return-void

    .line 156
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v14

    .line 157
    .local v14, "firstCueTimeUs":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    add-long v10, v14, v20

    sub-long v10, v10, v22

    .line 158
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToPts(J)J

    move-result-wide v10

    .line 157
    invoke-virtual {v8, v10, v11}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    .line 159
    .local v6, "sampleTimeUs":J
    sub-long v18, v6, v14

    .line 161
    .local v18, "subsampleOffsetUs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    .line 163
    .local v5, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 164
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v8, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 165
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 79
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 95
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 98
    .local v1, "currentFileSize":I
    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    array-length v4, v4

    if-ne v2, v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    if-eq v1, v3, :cond_2

    move v2, v1

    :goto_0
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    sub-int/2addr v5, v6

    invoke-interface {p1, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 105
    .local v0, "bytesRead":I
    if-eq v0, v3, :cond_3

    .line 106
    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    .line 107
    if-eq v1, v3, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    if-eq v2, v1, :cond_3

    .line 108
    :cond_1
    const/4 v2, 0x0

    .line 114
    :goto_1
    return v2

    .line 99
    .end local v0    # "bytesRead":I
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v2

    goto :goto_0

    .line 113
    .restart local v0    # "bytesRead":I
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->processSample()V

    move v2, v3

    .line 114
    goto :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
