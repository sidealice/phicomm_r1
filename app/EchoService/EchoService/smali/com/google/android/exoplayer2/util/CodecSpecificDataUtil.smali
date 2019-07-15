.class public final Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field private static final AUDIO_OBJECT_TYPE_ER_BSAC:I = 0x16

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_OBJECT_TYPE_PS:I = 0x1d

.field private static final AUDIO_OBJECT_TYPE_SBR:I = 0x5

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 33
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    .line 51
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacAudioSpecificConfig(III)[B
    .locals 4
    .param p0, "audioObjectType"    # I
    .param p1, "sampleRateIndex"    # I
    .param p2, "channelConfig"    # I

    .prologue
    .line 201
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 202
    .local v0, "specificConfig":[B
    const/4 v1, 0x0

    shl-int/lit8 v2, p0, 0x3

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 203
    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 204
    return-object v0
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 6
    .param p0, "sampleRate"    # I
    .param p1, "numChannels"    # I

    .prologue
    const/4 v4, -0x1

    .line 172
    const/4 v2, -0x1

    .line 173
    .local v2, "sampleRateIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 174
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v3, v3, v1

    if-ne p0, v3, :cond_0

    .line 175
    move v2, v1

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, -0x1

    .line 179
    .local v0, "channelConfig":I
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 180
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v3, v3, v1

    if-ne p1, v3, :cond_2

    .line 181
    move v0, v1

    .line 179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    :cond_3
    if-eq p0, v4, :cond_4

    if-ne v0, v4, :cond_5

    .line 185
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid sample rate or number of channels: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_5
    const/4 v3, 0x2

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v3

    return-object v3
.end method

.method public static buildNalUnit([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 216
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    add-int/2addr v1, p2

    new-array v0, v1, [B

    .line 217
    .local v0, "nalUnit":[B
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    return-object v0
.end method

.method private static findNalStartCode([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 263
    array-length v2, p0

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    sub-int v0, v2, v3

    .line 264
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 265
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 264
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getAacAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 2
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .prologue
    .line 298
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 299
    .local v0, "audioObjectType":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 300
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    .line 302
    :cond_0
    return v0
.end method

.method private static getAacSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .prologue
    .line 314
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 315
    .local v0, "frequencyIndex":I
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 316
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 321
    .local v1, "samplingFrequency":I
    :goto_0
    return v1

    .line 318
    .end local v1    # "samplingFrequency":I
    :cond_0
    const/16 v2, 0xd

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 319
    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v1, v2, v0

    .restart local v1    # "samplingFrequency":I
    goto :goto_0

    .line 318
    .end local v1    # "samplingFrequency":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isNalStartCode([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 280
    array-length v2, p0

    sub-int/2addr v2, p1

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    if-gt v2, v3, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 284
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseAacAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;
    .locals 8
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "forceReadToEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableBitArray;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 108
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 109
    .local v0, "audioObjectType":I
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v4

    .line 110
    .local v4, "sampleRate":I
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 111
    .local v1, "channelConfiguration":I
    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_1

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v4

    .line 118
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 119
    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    .line 121
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    .line 126
    packed-switch v0, :pswitch_data_0

    .line 142
    :pswitch_0
    new-instance v5, Lcom/google/android/exoplayer2/ParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported audio object type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :pswitch_1
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V

    .line 144
    packed-switch v0, :pswitch_data_1

    .line 159
    :cond_2
    :pswitch_2
    sget-object v5, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v2, v5, v1

    .line 160
    .local v2, "channelCount":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 151
    .end local v2    # "channelCount":I
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 152
    .local v3, "epConfig":I
    if-eq v3, v6, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 153
    :cond_3
    new-instance v5, Lcom/google/android/exoplayer2/ParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported epConfig: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    .end local v3    # "epConfig":I
    .restart local v2    # "channelCount":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 144
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 2
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V
    .locals 6
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "audioObjectType"    # I
    .param p2, "channelConfiguration"    # I

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 326
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 328
    .local v0, "dependsOnCoreDecoder":Z
    if-eqz v0, :cond_0

    .line 329
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 332
    .local v1, "extensionFlag":Z
    if-nez p2, :cond_1

    .line 333
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 335
    :cond_1
    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    if-ne p1, v5, :cond_3

    .line 336
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 338
    :cond_3
    if-eqz v1, :cond_7

    .line 339
    const/16 v2, 0x16

    if-ne p1, v2, :cond_4

    .line 340
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 342
    :cond_4
    const/16 v2, 0x11

    if-eq p1, v2, :cond_5

    const/16 v2, 0x13

    if-eq p1, v2, :cond_5

    if-eq p1, v5, :cond_5

    const/16 v2, 0x17

    if-ne p1, v2, :cond_6

    .line 346
    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 348
    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 350
    :cond_7
    return-void
.end method

.method public static splitNalUnits([B)[[B
    .locals 9
    .param p0, "data"    # [B

    .prologue
    const/4 v8, 0x0

    .line 234
    invoke-static {p0, v8}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v7

    if-nez v7, :cond_0

    .line 236
    const/4 v7, 0x0

    check-cast v7, [[B

    .line 252
    :goto_0
    return-object v7

    .line 238
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v6, "starts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 241
    .local v3, "nalUnitIndex":I
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v7, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v7, v7

    add-int/2addr v7, v3

    invoke-static {p0, v7}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v3

    .line 243
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    .line 244
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [[B

    .line 245
    .local v4, "split":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 246
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 247
    .local v5, "startIndex":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    .local v0, "endIndex":I
    :goto_2
    sub-int v7, v0, v5

    new-array v2, v7, [B

    .line 249
    .local v2, "nal":[B
    array-length v7, v2

    invoke-static {p0, v5, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    aput-object v2, v4, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "endIndex":I
    .end local v2    # "nal":[B
    :cond_2
    array-length v0, p0

    goto :goto_2

    .end local v5    # "startIndex":I
    :cond_3
    move-object v7, v4

    .line 252
    goto :goto_0
.end method
