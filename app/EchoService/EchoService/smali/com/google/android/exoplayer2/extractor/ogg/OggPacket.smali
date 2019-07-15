.class final Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private currentSegmentIndex:I

.field private final packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

.field private populated:Z

.field private segmentCount:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 31
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method

.method private calculatePacketSize(I)I
    .locals 5
    .param p1, "startSegmentIndex"    # I

    .prologue
    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "size":I
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, v3, :cond_1

    .line 146
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, p1

    aget v0, v2, v3

    .line 147
    .local v0, "segmentLength":I
    add-int/2addr v1, v0

    .line 148
    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    .line 153
    .end local v0    # "segmentLength":I
    :cond_1
    return v1
.end method


# virtual methods
.method public getPageHeader()Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    return-object v0
.end method

.method public getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-object v0
.end method

.method public populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 61
    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 63
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-eqz v3, :cond_0

    .line 64
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    .line 65
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 68
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-nez v3, :cond_9

    .line 69
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    if-gez v3, :cond_4

    .line 71
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    :goto_2
    return v5

    :cond_1
    move v3, v5

    .line 61
    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x0

    .line 75
    .local v1, "segmentIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 76
    .local v0, "bytesToSkip":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_3

    .line 79
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 80
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v1, v3

    .line 82
    :cond_3
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 83
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 86
    .end local v0    # "bytesToSkip":I
    .end local v1    # "segmentIndex":I
    :cond_4
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    .line 87
    .local v2, "size":I
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int v1, v3, v6

    .line 88
    .restart local v1    # "segmentIndex":I
    if-lez v2, :cond_6

    .line 89
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v3, v6, :cond_5

    .line 90
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 92
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    invoke-interface {p1, v3, v6, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 93
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 94
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v6, v1, -0x1

    aget v3, v3, v6

    const/16 v6, 0xff

    if-eq v3, v6, :cond_8

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    .line 97
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v1, v3, :cond_7

    const/4 v1, -0x1

    .end local v1    # "segmentIndex":I
    :cond_7
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto/16 :goto_1

    .restart local v1    # "segmentIndex":I
    :cond_8
    move v3, v5

    .line 94
    goto :goto_3

    .end local v1    # "segmentIndex":I
    .end local v2    # "size":I
    :cond_9
    move v5, v4

    .line 100
    goto/16 :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    .line 46
    return-void
.end method

.method public trimPayload()V
    .locals 4

    .prologue
    const v3, 0xfe01

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-ne v0, v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 133
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 132
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    goto :goto_0
.end method
