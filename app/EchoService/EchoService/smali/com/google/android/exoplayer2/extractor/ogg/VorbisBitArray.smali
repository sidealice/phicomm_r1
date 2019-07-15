.class final Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private final byteLimit:I

.field private byteOffset:I

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    .line 41
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteLimit:I

    .line 42
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 127
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 58
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 59
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 60
    return v0

    .line 58
    .end local v0    # "returnValue":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 7
    .param p1, "numBits"    # I

    .prologue
    .line 70
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 71
    .local v2, "tempByteOffset":I
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v4, v4, 0x8

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 72
    .local v0, "bitsRead":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tempByteOffset":I
    .local v3, "tempByteOffset":I
    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    shr-int/2addr v4, v5

    const/16 v5, 0xff

    rsub-int/lit8 v6, v0, 0x8

    shr-int/2addr v5, v6

    and-int v1, v4, v5

    .line 73
    .local v1, "returnValue":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 74
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "tempByteOffset":I
    .restart local v2    # "tempByteOffset":I
    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v1, v4

    .line 75
    add-int/lit8 v0, v0, 0x8

    move v3, v2

    .end local v2    # "tempByteOffset":I
    .restart local v3    # "tempByteOffset":I
    goto :goto_0

    .line 77
    :cond_0
    const/4 v4, -0x1

    rsub-int/lit8 v5, p1, 0x20

    ushr-int/2addr v4, v5

    and-int/2addr v1, v4

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 79
    return v1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 49
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 50
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 111
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->assertValidOffset()V

    .line 114
    return-void
.end method

.method public skipBits(I)V
    .locals 3
    .param p1, "numBits"    # I

    .prologue
    .line 88
    div-int/lit8 v0, p1, 0x8

    .line 89
    .local v0, "numBytes":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 90
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v2, v0, 0x8

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 91
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 92
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 93
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->assertValidOffset()V

    .line 96
    return-void
.end method
