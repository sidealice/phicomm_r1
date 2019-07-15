.class abstract Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# static fields
.field private static final STATE_END_OF_INPUT:I = 0x3

.field private static final STATE_READ_HEADERS:I = 0x0

.field private static final STATE_READ_PAYLOAD:I = 0x2

.field private static final STATE_SKIP_HEADERS:I = 0x1


# instance fields
.field private currentGranule:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private formatSet:Z

.field private lengthOfReadPacket:J

.field private final oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

.field private oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

.field private payloadStartPosition:J

.field private sampleRate:I

.field private seekMapSet:Z

.field private setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field private state:I

.field private targetGranule:J

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 61
    return-void
.end method

.method private readHeaders(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 122
    const/4 v10, 0x1

    .line 123
    .local v10, "readingHeaders":Z
    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 126
    const/4 v1, -0x1

    .line 157
    :goto_1
    return v1

    .line 128
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v10

    .line 131
    if-eqz v10, :cond_0

    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    .line 137
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 153
    :goto_2
    iput-object v11, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 154
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->trimPayload()V

    .line 157
    const/4 v1, 0x0

    goto :goto_1

    .line 144
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 145
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {v1, v11}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_2

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPageHeader()Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    move-result-object v0

    .line 148
    .local v0, "firstPayloadPageHeader":Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v7, v6

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v6, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(JJLcom/google/android/exoplayer2/extractor/ogg/StreamReader;IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_2
.end method

.method private readPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v10

    .line 163
    .local v10, "position":J
    const-wide/16 v4, 0x0

    cmp-long v1, v10, v4

    if-ltz v1, :cond_0

    .line 164
    iput-wide v10, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 165
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    .line 166
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v1, v10, v4

    if-gez v1, :cond_1

    .line 167
    const-wide/16 v4, 0x2

    add-long/2addr v4, v10

    neg-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 169
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v12

    .line 171
    .local v12, "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 175
    .end local v12    # "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 177
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v0

    .line 178
    .local v0, "payload":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    .line 179
    .local v8, "granulesInPacket":J
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-ltz v1, :cond_4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v8

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    .line 181
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v2

    .line 182
    .local v2, "timeUs":J
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-interface {v1, v0, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 184
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 186
    .end local v2    # "timeUs":J
    :cond_4
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 191
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    .end local v0    # "payload":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v8    # "granulesInPacket":J
    :cond_5
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 189
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected convertGranuleToTime(J)J
    .locals 5
    .param p1, "granule"    # J

    .prologue
    .line 201
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected convertTimeToGranule(J)J
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 67
    return-void
.end method

.method protected onSeekEnd(J)V
    .locals 1
    .param p1, "currentGranule"    # J

    .prologue
    .line 240
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 241
    return-void
.end method

.method protected abstract preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
.end method

.method final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 108
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 110
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected reset(Z)V
    .locals 4
    .param p1, "headerData"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 77
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 82
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 83
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 84
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_0
.end method

.method final seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->reset()V

    .line 91
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 92
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v0, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->startSeek(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_1
.end method
