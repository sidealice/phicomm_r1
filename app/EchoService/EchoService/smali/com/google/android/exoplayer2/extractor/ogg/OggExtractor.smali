.class public Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

.field private streamReaderInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 1
    .param p0, "scratch"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 120
    return-object p0
.end method

.method private sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    .line 98
    .local v0, "header":Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    invoke-virtual {v0, p1, v4}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v3

    .line 102
    :cond_1
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v6, 0x8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 103
    .local v1, "length":I
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 104
    .local v2, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget-object v5, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 106
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    :goto_1
    move v3, v4

    .line 115
    goto :goto_0

    .line 108
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_1

    .line 110
    :cond_3
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 64
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    if-nez v1, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Failed to determine bitstream type"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 87
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 89
    .local v0, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 90
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 91
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    .line 93
    .end local v0    # "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v1

    return v1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seek(JJ)V

    .line 71
    :cond_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 2
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lcom/google/android/exoplayer2/ParserException;
    const/4 v1, 0x0

    goto :goto_0
.end method
