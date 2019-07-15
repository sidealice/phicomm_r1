.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1d

    .line 67
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    .line 72
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const-string v0, "ISO-8859-1"

    .line 77
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    .line 85
    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 86
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    .line 87
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    .line 89
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 90
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 24

    move/from16 v0, p0

    .line 448
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x39a

    const/16 v6, 0x39b

    const/16 v7, 0x3a0

    const/16 v8, 0x386

    const-wide/16 v9, 0x384

    const/16 v11, 0x39c

    const/4 v12, 0x6

    const/16 v13, 0x385

    const/16 v14, 0x384

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-ne v0, v13, :cond_6

    .line 454
    new-array v0, v12, [I

    add-int/lit8 v19, p3, 0x1

    .line 456
    aget v2, p1, p3

    move v15, v2

    move/from16 v20, v18

    move/from16 v2, v19

    const-wide/16 v21, 0x0

    move/from16 v19, v20

    .line 457
    :goto_0
    aget v4, p1, v18

    if-ge v2, v4, :cond_4

    if-nez v19, :cond_4

    add-int/lit8 v4, v20, 0x1

    .line 458
    aput v15, v0, v20

    mul-long v21, v21, v9

    int-to-long v9, v15

    add-long v15, v21, v9

    add-int/lit8 v9, v2, 0x1

    .line 461
    aget v2, p1, v2

    if-eq v2, v14, :cond_3

    if-eq v2, v13, :cond_3

    if-eq v2, v8, :cond_3

    if-eq v2, v11, :cond_3

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_3

    if-ne v2, v5, :cond_0

    goto :goto_2

    .line 473
    :cond_0
    rem-int/lit8 v10, v4, 0x5

    if-nez v10, :cond_2

    if-lez v4, :cond_2

    move/from16 v4, v18

    :goto_1
    if-ge v4, v12, :cond_1

    rsub-int/lit8 v10, v4, 0x5

    const/16 v20, 0x8

    mul-int v10, v10, v20

    shr-long v5, v15, v10

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 477
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x39a

    const/16 v6, 0x39b

    goto :goto_1

    :cond_1
    move v15, v2

    move v2, v9

    move/from16 v20, v18

    const-wide/16 v9, 0x384

    const-wide/16 v21, 0x0

    goto :goto_0

    :cond_2
    move/from16 v20, v4

    move-wide/from16 v21, v15

    const/16 v5, 0x39a

    const/16 v6, 0x39b

    move v15, v2

    move v2, v9

    const-wide/16 v9, 0x384

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v5, v9, -0x1

    move/from16 v20, v4

    move-wide/from16 v21, v15

    move/from16 v19, v17

    const/16 v6, 0x39b

    const-wide/16 v9, 0x384

    move v15, v2

    move v2, v5

    const/16 v5, 0x39a

    goto :goto_0

    .line 486
    :cond_4
    aget v1, p1, v18

    if-ne v2, v1, :cond_5

    if-ge v15, v14, :cond_5

    add-int/lit8 v1, v20, 0x1

    .line 487
    aput v15, v0, v20

    goto :goto_3

    :cond_5
    move/from16 v1, v20

    :goto_3
    move/from16 v4, v18

    :goto_4
    if-ge v4, v1, :cond_f

    .line 494
    aget v5, v0, v4

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    if-ne v0, v11, :cond_e

    move/from16 v2, p3

    move/from16 v0, v18

    move v4, v0

    const-wide/16 v5, 0x0

    .line 503
    :goto_5
    aget v9, p1, v18

    if-ge v2, v9, :cond_f

    if-nez v0, :cond_f

    add-int/lit8 v9, v2, 0x1

    .line 504
    aget v2, p1, v2

    if-ge v2, v14, :cond_7

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v15, 0x384

    mul-long/2addr v5, v15

    int-to-long v11, v2

    add-long v19, v5, v11

    move v2, v9

    move-wide/from16 v5, v19

    const/16 v10, 0x39c

    const/16 v11, 0x39b

    const/16 v12, 0x39a

    goto :goto_7

    :cond_7
    const-wide/16 v15, 0x384

    if-eq v2, v14, :cond_9

    if-eq v2, v13, :cond_9

    if-eq v2, v8, :cond_9

    const/16 v10, 0x39c

    if-eq v2, v10, :cond_a

    if-eq v2, v7, :cond_a

    const/16 v11, 0x39b

    if-eq v2, v11, :cond_b

    const/16 v12, 0x39a

    if-ne v2, v12, :cond_8

    goto :goto_6

    :cond_8
    move v2, v9

    goto :goto_7

    :cond_9
    const/16 v10, 0x39c

    :cond_a
    const/16 v11, 0x39b

    :cond_b
    const/16 v12, 0x39a

    :goto_6
    add-int/lit8 v9, v9, -0x1

    move v2, v9

    move/from16 v0, v17

    .line 521
    :goto_7
    rem-int/lit8 v9, v4, 0x5

    if-nez v9, :cond_d

    if-lez v4, :cond_d

    move/from16 v4, v18

    const/4 v9, 0x6

    :goto_8
    if-ge v4, v9, :cond_c

    rsub-int/lit8 v19, v4, 0x5

    const/16 v20, 0x8

    mul-int v19, v19, v20

    shr-long v7, v5, v19

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 525
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x3a0

    const/16 v8, 0x386

    goto :goto_8

    :cond_c
    const/16 v20, 0x8

    move/from16 v4, v18

    const-wide/16 v5, 0x0

    goto :goto_9

    :cond_d
    const/4 v9, 0x6

    const/16 v20, 0x8

    :goto_9
    move v12, v9

    move v11, v10

    const/16 v7, 0x3a0

    const/16 v8, 0x386

    goto :goto_5

    :cond_e
    move/from16 v2, p3

    .line 532
    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    array-length v3, p0

    mul-int/2addr v3, v1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 104
    aget v2, p0, v2

    .line 105
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_0
    const/4 v5, 0x0

    .line 106
    aget v5, p0, v5

    if-ge v1, v5, :cond_2

    const/16 v5, 0x391

    if-eq v2, v5, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    add-int/lit8 v1, v1, -0x1

    .line 146
    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_2

    .line 135
    :pswitch_0
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    .line 122
    aget v1, p0, v1

    .line 123
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 119
    :pswitch_5
    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_2

    .line 113
    :pswitch_6
    invoke-static {v2, p0, v3, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_2

    .line 109
    :pswitch_7
    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 116
    aget v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    .line 149
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 150
    aget v1, p0, v1

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 155
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3

    .line 156
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 158
    :cond_3
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 630
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_0

    .line 632
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 635
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-eq p1, v0, :cond_1

    .line 636
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 638
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 165
    aget v2, p0, v1

    if-le v0, v2, :cond_0

    .line 167
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v0, 0x2

    .line 169
    new-array v2, v0, [I

    move v3, p1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 171
    aget v4, p0, v3

    aput v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static {p0, v3, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 180
    aget p1, p0, v0

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne p1, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 182
    aget p1, p0, v1

    sub-int/2addr p1, v0

    new-array p1, p1, [I

    move v2, v1

    move v5, v2

    .line 186
    :goto_1
    aget v6, p0, v1

    if-ge v0, v6, :cond_4

    if-nez v2, :cond_4

    add-int/lit8 v6, v0, 0x1

    .line 187
    aget v0, p0, v0

    const/16 v7, 0x384

    if-ge v0, v7, :cond_2

    add-int/lit8 v7, v5, 0x1

    .line 189
    aput v0, p1, v5

    move v0, v6

    move v5, v7

    goto :goto_1

    :cond_2
    if-eq v0, v3, :cond_3

    .line 198
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 193
    :cond_3
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v6, v6, 0x1

    move v2, v4

    move v0, v6

    goto :goto_1

    .line 203
    :cond_4
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_2

    .line 204
    :cond_5
    aget p0, p0, v0

    if-ne p0, v3, :cond_6

    .line 205
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v0, v0, 0x1

    :cond_6
    :goto_2
    return v0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 15

    move-object/from16 v0, p3

    .line 294
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 295
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v1

    move-object v5, v2

    const/4 v2, 0x0

    move/from16 v1, p2

    :goto_0
    if-ge v2, v1, :cond_1e

    .line 298
    aget v6, p0, v2

    .line 300
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x41

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    const/16 v12, 0x391

    const/16 v13, 0x384

    const/16 v3, 0x1a

    const/16 v11, 0x1d

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    if-ge v6, v11, :cond_0

    .line 409
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v3, v3, v6

    goto :goto_1

    :cond_0
    if-ne v6, v11, :cond_1

    .line 412
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_1
    if-ne v6, v12, :cond_2

    .line 416
    aget v3, p1, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-ne v6, v13, :cond_5

    .line 418
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :pswitch_1
    if-ge v6, v3, :cond_3

    add-int/2addr v8, v6

    int-to-char v3, v8

    :goto_1
    move-object v4, v5

    goto/16 :goto_7

    :cond_3
    if-ne v6, v3, :cond_4

    move-object v4, v5

    goto/16 :goto_5

    :cond_4
    if-ne v6, v13, :cond_5

    .line 400
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_5
    :goto_2
    move-object v4, v5

    goto/16 :goto_6

    :pswitch_2
    if-ge v6, v11, :cond_6

    .line 379
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v3, v3, v6

    goto/16 :goto_7

    :cond_6
    if-ne v6, v11, :cond_7

    .line 382
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_7
    if-ne v6, v12, :cond_8

    .line 384
    aget v3, p1, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_8
    if-ne v6, v13, :cond_1c

    .line 386
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :pswitch_3
    const/16 v7, 0x19

    if-ge v6, v7, :cond_9

    .line 354
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v3, v3, v6

    goto/16 :goto_7

    :cond_9
    if-ne v6, v7, :cond_a

    .line 357
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_3
    move-object v4, v3

    goto/16 :goto_6

    :cond_a
    if-ne v6, v3, :cond_b

    goto :goto_5

    :cond_b
    if-ne v6, v10, :cond_c

    .line 361
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_c
    if-ne v6, v9, :cond_d

    .line 363
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_d
    if-ne v6, v11, :cond_e

    .line 367
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    :cond_e
    if-ne v6, v12, :cond_f

    .line 369
    aget v3, p1, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    if-ne v6, v13, :cond_1c

    .line 371
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :pswitch_4
    if-ge v6, v3, :cond_10

    const/16 v3, 0x61

    add-int/2addr v3, v6

    int-to-char v3, v3

    goto :goto_7

    :cond_10
    if-ne v6, v3, :cond_11

    goto :goto_5

    :cond_11
    if-ne v6, v10, :cond_12

    .line 335
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_4
    move-object v5, v4

    goto :goto_3

    :cond_12
    if-ne v6, v9, :cond_13

    .line 337
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_13
    if-ne v6, v11, :cond_14

    .line 341
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    :cond_14
    if-ne v6, v12, :cond_15

    .line 344
    aget v3, p1, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_15
    if-ne v6, v13, :cond_1c

    .line 346
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :pswitch_5
    if-ge v6, v3, :cond_16

    add-int/2addr v8, v6

    int-to-char v3, v8

    goto :goto_7

    :cond_16
    if-ne v6, v3, :cond_17

    :goto_5
    const/16 v3, 0x20

    goto :goto_7

    :cond_17
    if-ne v6, v10, :cond_18

    .line 310
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_18
    if-ne v6, v9, :cond_19

    .line 312
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_19
    if-ne v6, v11, :cond_1a

    .line 316
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    :cond_1a
    if-ne v6, v12, :cond_1b

    .line 318
    aget v3, p1, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    if-ne v6, v13, :cond_1c

    .line 320
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_3

    :cond_1c
    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_1d

    .line 425
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 548
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 550
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_6

    if-nez v2, :cond_6

    add-int/lit8 v4, p1, 0x1

    .line 551
    aget p1, p0, p1

    .line 552
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v2, v6

    :cond_0
    const/16 v5, 0x384

    if-ge p1, v5, :cond_1

    .line 556
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq p1, v5, :cond_2

    const/16 v5, 0x385

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v2, v6

    .line 569
    :cond_3
    :goto_1
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_4

    const/16 v5, 0x386

    if-eq p1, v5, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-lez v3, :cond_5

    .line 577
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_5
    move p1, v4

    goto :goto_0

    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8

    const/4 v0, 0x0

    .line 224
    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 226
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move v3, v0

    move v4, v3

    .line 230
    :goto_0
    aget v5, p0, v0

    if-ge p1, v5, :cond_3

    if-nez v3, :cond_3

    add-int/lit8 v5, p1, 0x1

    .line 231
    aget p1, p0, p1

    const/16 v6, 0x384

    if-ge p1, v6, :cond_0

    .line 233
    div-int/lit8 v6, p1, 0x1e

    aput v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    .line 234
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v6

    add-int/lit8 v4, v4, 0x2

    :goto_1
    move p1, v5

    goto :goto_0

    :cond_0
    const/16 v7, 0x391

    if-eq p1, v7, :cond_2

    const/16 v7, 0x3a0

    if-eq p1, v7, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    add-int/lit8 p1, v4, 0x1

    .line 240
    aput v6, v1, v4

    move v4, p1

    goto :goto_1

    :cond_1
    :pswitch_1
    add-int/lit8 v5, v5, -0x1

    const/4 p1, 0x1

    move v3, p1

    goto :goto_1

    .line 258
    :cond_2
    aput v7, v1, v4

    add-int/lit8 p1, v5, 0x1

    .line 259
    aget v5, p0, v5

    .line 260
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {v1, v2, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
