.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "isom"

    .line 36
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso2"

    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso3"

    .line 38
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iso4"

    .line 39
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iso5"

    .line 40
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iso6"

    .line 41
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avc1"

    .line 42
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hvc1"

    .line 43
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hev1"

    .line 44
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mp41"

    .line 45
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mp42"

    .line 46
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3g2a"

    .line 47
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3g2b"

    .line 48
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3gr6"

    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "3gs6"

    .line 50
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "3ge6"

    .line 51
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "3gg6"

    .line 52
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M4V "

    .line 53
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "M4A "

    .line 54
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "f4v "

    .line 55
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "kddi"

    .line 56
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "M4VP"

    .line 57
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "qt  "

    .line 58
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "MSNV"

    .line 59
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6
    .param p0, "brand"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    ushr-int/lit8 v3, p0, 0x8

    const-string v4, "3gp"

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget v0, v4, v3

    .line 183
    .local v0, "compatibleBrand":I
    if-eq v0, p0, :cond_0

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "compatibleBrand":I
    :cond_2
    move v1, v2

    .line 187
    goto :goto_0
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 24
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "fragmented"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v18

    .line 93
    .local v18, "inputLength":J
    const-wide/16 v20, -0x1

    cmp-long v20, v18, v20

    if-eqz v20, :cond_0

    const-wide/16 v20, 0x1000

    cmp-long v20, v18, v20

    if-lez v20, :cond_1

    :cond_0
    const-wide/16 v18, 0x1000

    .end local v18    # "inputLength":J
    :cond_1
    move-wide/from16 v0, v18

    long-to-int v11, v0

    .line 96
    .local v11, "bytesToSearch":I
    new-instance v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v20, 0x40

    move/from16 v0, v20

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 97
    .local v9, "buffer":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v10, 0x0

    .line 98
    .local v10, "bytesSearched":I
    const/4 v14, 0x0

    .line 99
    .local v14, "foundGoodFileType":Z
    const/16 v17, 0x0

    .line 100
    .local v17, "isFragmented":Z
    :cond_2
    :goto_0
    if-ge v10, v11, :cond_7

    .line 102
    const/16 v15, 0x8

    .line 103
    .local v15, "headerSize":I
    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 104
    iget-object v0, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v15}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 106
    .local v6, "atomSize":J
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 107
    .local v5, "atomType":I
    const-wide/16 v20, 0x1

    cmp-long v20, v6, v20

    if-nez v20, :cond_4

    .line 109
    const/16 v15, 0x10

    .line 110
    iget-object v0, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v20, v0

    const/16 v21, 0x8

    const/16 v22, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 112
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 121
    :cond_3
    :goto_1
    int-to-long v0, v15

    move-wide/from16 v20, v0

    cmp-long v20, v6, v20

    if-gez v20, :cond_5

    .line 123
    const/16 v20, 0x0

    .line 171
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v15    # "headerSize":I
    :goto_2
    return v20

    .line 113
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v15    # "headerSize":I
    :cond_4
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_3

    .line 115
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    .line 116
    .local v12, "endPosition":J
    const-wide/16 v20, -0x1

    cmp-long v20, v12, v20

    if-eqz v20, :cond_3

    .line 117
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v20, v12, v20

    int-to-long v0, v15

    move-wide/from16 v22, v0

    add-long v6, v20, v22

    goto :goto_1

    .line 125
    .end local v12    # "endPosition":J
    :cond_5
    add-int/2addr v10, v15

    .line 127
    sget v20, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    move/from16 v0, v20

    if-eq v5, v0, :cond_2

    .line 132
    sget v20, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    move/from16 v0, v20

    if-eq v5, v0, :cond_6

    sget v20, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    move/from16 v0, v20

    if-ne v5, v0, :cond_8

    .line 134
    :cond_6
    const/16 v17, 0x1

    .line 171
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v15    # "headerSize":I
    :cond_7
    if-eqz v14, :cond_e

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    const/16 v20, 0x1

    goto :goto_2

    .line 138
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v15    # "headerSize":I
    :cond_8
    int-to-long v0, v10

    move-wide/from16 v20, v0

    add-long v20, v20, v6

    int-to-long v0, v15

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    int-to-long v0, v11

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_7

    .line 143
    int-to-long v0, v15

    move-wide/from16 v20, v0

    sub-long v20, v6, v20

    move-wide/from16 v0, v20

    long-to-int v4, v0

    .line 144
    .local v4, "atomDataSize":I
    add-int/2addr v10, v4

    .line 145
    sget v20, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    move/from16 v0, v20

    if-ne v5, v0, :cond_d

    .line 147
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v4, v0, :cond_9

    .line 148
    const/16 v20, 0x0

    goto :goto_2

    .line 150
    :cond_9
    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 151
    iget-object v0, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    div-int/lit8 v8, v4, 0x4

    .line 153
    .local v8, "brandsCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    .line 154
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 156
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 153
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 157
    :cond_b
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 158
    const/4 v14, 0x1

    .line 162
    :cond_c
    if-nez v14, :cond_2

    .line 164
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 166
    .end local v8    # "brandsCount":I
    .end local v16    # "i":I
    :cond_d
    if-eqz v4, :cond_2

    .line 168
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto/16 :goto_0

    .line 171
    .end local v4    # "atomDataSize":I
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v15    # "headerSize":I
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_2
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
