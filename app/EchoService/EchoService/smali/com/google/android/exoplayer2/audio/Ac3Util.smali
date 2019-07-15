.class public final Lcom/google/android/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x3

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 119
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 124
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 111
    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    .line 115
    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 119
    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 124
    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    .prologue
    .line 269
    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 5
    .param p0, "fscod"    # I
    .param p1, "frmsizecod"    # I

    .prologue
    .line 287
    div-int/lit8 v1, p1, 0x2

    .line 288
    .local v1, "halfFrmsizecod":I
    if-ltz p0, :cond_0

    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v3, v3

    if-ge p0, v3, :cond_0

    if-ltz p1, :cond_0

    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 291
    :cond_0
    const/4 v3, -0x1

    .line 301
    :goto_0
    return v3

    .line 293
    :cond_1
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v2, v3, p0

    .line 294
    .local v2, "sampleRate":I
    const v3, 0xac44

    if-ne v2, v3, :cond_2

    .line 295
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    aget v3, v3, v1

    rem-int/lit8 v4, p1, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 297
    :cond_2
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v0, v3, v1

    .line 298
    .local v0, "bitrate":I
    const/16 v3, 0x7d00

    if-ne v2, v3, :cond_3

    .line 299
    mul-int/lit8 v3, v0, 0x6

    goto :goto_0

    .line 301
    :cond_3
    mul-int/lit8 v3, v0, 0x4

    goto :goto_0
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 13
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v11, v0, 0x6

    .line 140
    .local v11, "fscod":I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v11

    .line 141
    .local v6, "sampleRate":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 142
    .local v12, "nextByte":I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v12, 0x38

    shr-int/lit8 v1, v1, 0x3

    aget v5, v0, v1

    .line 143
    .local v5, "channelCount":I
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_0

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 146
    :cond_0
    const-string v1, "audio/ac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
    .locals 17
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v13

    .line 197
    .local v13, "initialPosition":I
    const/16 v1, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 198
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/16 v8, 0x10

    if-ne v1, v8, :cond_0

    const/4 v14, 0x1

    .line 199
    .local v14, "isEac3":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 201
    const/4 v3, -0x1

    .line 206
    .local v3, "streamType":I
    if-eqz v14, :cond_2

    .line 207
    const-string v2, "audio/eac3"

    .line 208
    .local v2, "mimeType":Ljava/lang/String;
    const/16 v1, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 209
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 210
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 211
    const/16 v1, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v6, v1, 0x2

    .line 212
    .local v6, "frameSize":I
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 214
    .local v12, "fscod":I
    const/4 v1, 0x3

    if-ne v12, v1, :cond_1

    .line 215
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    aget v5, v1, v8

    .line 216
    .local v5, "sampleRate":I
    const/4 v10, 0x6

    .line 222
    .local v10, "audioBlocks":I
    :goto_1
    mul-int/lit16 v7, v10, 0x100

    .line 223
    .local v7, "sampleCount":I
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 244
    .end local v10    # "audioBlocks":I
    .local v9, "acmod":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v15

    .line 245
    .local v15, "lfeon":Z
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v8, v1, v9

    if-eqz v15, :cond_6

    const/4 v1, 0x1

    :goto_3
    add-int v4, v8, v1

    .line 246
    .local v4, "channelCount":I
    new-instance v1, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V

    return-object v1

    .line 198
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "streamType":I
    .end local v4    # "channelCount":I
    .end local v5    # "sampleRate":I
    .end local v6    # "frameSize":I
    .end local v7    # "sampleCount":I
    .end local v9    # "acmod":I
    .end local v12    # "fscod":I
    .end local v14    # "isEac3":Z
    .end local v15    # "lfeon":Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 218
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "streamType":I
    .restart local v6    # "frameSize":I
    .restart local v12    # "fscod":I
    .restart local v14    # "isEac3":Z
    :cond_1
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 219
    .local v16, "numblkscod":I
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v10, v1, v16

    .line 220
    .restart local v10    # "audioBlocks":I
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v5, v1, v12

    .restart local v5    # "sampleRate":I
    goto :goto_1

    .line 225
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v5    # "sampleRate":I
    .end local v6    # "frameSize":I
    .end local v10    # "audioBlocks":I
    .end local v12    # "fscod":I
    .end local v16    # "numblkscod":I
    :cond_2
    const-string v2, "audio/ac3"

    .line 226
    .restart local v2    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 227
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 228
    .restart local v12    # "fscod":I
    const/4 v1, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 229
    .local v11, "frmsizecod":I
    invoke-static {v12, v11}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v6

    .line 230
    .restart local v6    # "frameSize":I
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 231
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 232
    .restart local v9    # "acmod":I
    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eq v9, v1, :cond_3

    .line 233
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 235
    :cond_3
    and-int/lit8 v1, v9, 0x4

    if-eqz v1, :cond_4

    .line 236
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 238
    :cond_4
    const/4 v1, 0x2

    if-ne v9, v1, :cond_5

    .line 239
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 241
    :cond_5
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v5, v1, v12

    .line 242
    .restart local v5    # "sampleRate":I
    const/16 v7, 0x600

    .restart local v7    # "sampleCount":I
    goto :goto_2

    .line 245
    .end local v11    # "frmsizecod":I
    .restart local v15    # "lfeon":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x4

    .line 257
    array-length v2, p0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 258
    const/4 v2, -0x1

    .line 262
    :goto_0
    return v2

    .line 260
    :cond_0
    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 261
    .local v1, "fscod":I
    aget-byte v2, p0, v4

    and-int/lit8 v0, v2, 0x3f

    .line 262
    .local v0, "frmsizecod":I
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v2

    goto :goto_0
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 15
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .prologue
    .line 162
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v11, v0, 0x6

    .line 166
    .local v11, "fscod":I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v11

    .line 167
    .local v6, "sampleRate":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 168
    .local v13, "nextByte":I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v13, 0xe

    shr-int/lit8 v1, v1, 0x1

    aget v5, v0, v1

    .line 169
    .local v5, "channelCount":I
    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_0

    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 175
    and-int/lit8 v0, v13, 0x1e

    shr-int/lit8 v14, v0, 0x1

    .line 176
    .local v14, "numDepSub":I
    if-lez v14, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 180
    .local v12, "lowByteChanLoc":I
    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_1

    .line 181
    add-int/lit8 v5, v5, 0x2

    .line 184
    .end local v12    # "lowByteChanLoc":I
    :cond_1
    const-string v1, "audio/eac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v0, v1, 0x6

    .line 282
    .local v0, "fscod":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x6

    .line 283
    :goto_0
    mul-int/lit16 v1, v1, 0x100

    return v1

    .line 282
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 283
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    goto :goto_0
.end method
