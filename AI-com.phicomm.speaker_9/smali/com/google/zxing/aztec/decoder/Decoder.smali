.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x20

    .line 46
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, " "

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "A"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "B"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "C"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "D"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "E"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "F"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "G"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "H"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "I"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "J"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "K"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "L"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "M"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "N"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "O"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "P"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "Q"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "R"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "S"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "T"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "U"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "V"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "W"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "X"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "Y"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "Z"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "CTRL_LL"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "CTRL_ML"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "CTRL_DL"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_BS"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v2

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "a"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v5

    const-string v1, "c"

    aput-object v1, v0, v6

    const-string v1, "d"

    aput-object v1, v0, v7

    const-string v1, "e"

    aput-object v1, v0, v8

    const-string v1, "f"

    aput-object v1, v0, v9

    const-string v1, "g"

    aput-object v1, v0, v10

    const-string v1, "h"

    aput-object v1, v0, v11

    const-string v1, "i"

    aput-object v1, v0, v12

    const-string v1, "j"

    aput-object v1, v0, v13

    const-string v1, "k"

    aput-object v1, v0, v14

    const-string v1, "l"

    aput-object v1, v0, v15

    const-string v1, "m"

    aput-object v1, v0, v16

    const-string v1, "n"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "o"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "p"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "q"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "r"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "s"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "t"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "u"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "v"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "w"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "x"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "y"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "z"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "CTRL_US"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "CTRL_ML"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "CTRL_DL"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_BS"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v2

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "\u0001"

    aput-object v1, v0, v4

    const-string v1, "\u0002"

    aput-object v1, v0, v5

    const-string v1, "\u0003"

    aput-object v1, v0, v6

    const-string v1, "\u0004"

    aput-object v1, v0, v7

    const-string v1, "\u0005"

    aput-object v1, v0, v8

    const-string v1, "\u0006"

    aput-object v1, v0, v9

    const-string v1, "\u0007"

    aput-object v1, v0, v10

    const-string v1, "\u0008"

    aput-object v1, v0, v11

    const-string v1, "\t"

    aput-object v1, v0, v12

    const-string v1, "\n"

    aput-object v1, v0, v13

    const-string v1, "\u000b"

    aput-object v1, v0, v14

    const-string v1, "\u000c"

    aput-object v1, v0, v15

    const-string v1, "\r"

    aput-object v1, v0, v16

    const-string v1, "\u001b"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "\u001c"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "\u001d"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "\u001e"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "\u001f"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "@"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "\\"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "^"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "_"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "`"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "|"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "~"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "\u007f"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "CTRL_LL"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "CTRL_UL"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "CTRL_PL"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_BS"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    .line 62
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\r"

    aput-object v1, v0, v3

    const-string v1, "\r\n"

    aput-object v1, v0, v4

    const-string v1, ". "

    aput-object v1, v0, v5

    const-string v1, ", "

    aput-object v1, v0, v6

    const-string v1, ": "

    aput-object v1, v0, v7

    const-string v1, "!"

    aput-object v1, v0, v8

    const-string v1, "\""

    aput-object v1, v0, v9

    const-string v1, "#"

    aput-object v1, v0, v10

    const-string v1, "$"

    aput-object v1, v0, v11

    const-string v1, "%"

    aput-object v1, v0, v12

    const-string v1, "&"

    aput-object v1, v0, v13

    const-string v1, "\'"

    aput-object v1, v0, v14

    const-string v1, "("

    aput-object v1, v0, v15

    const-string v1, ")"

    aput-object v1, v0, v16

    const-string v1, "*"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "+"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, ","

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "-"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "."

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "/"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, ":"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, ";"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "<"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "="

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, ">"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "?"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "["

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "]"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "{"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "}"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_UL"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    const/16 v0, 0x10

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v2

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v5

    const-string v1, "2"

    aput-object v1, v0, v6

    const-string v1, "3"

    aput-object v1, v0, v7

    const-string v1, "4"

    aput-object v1, v0, v8

    const-string v1, "5"

    aput-object v1, v0, v9

    const-string v1, "6"

    aput-object v1, v0, v10

    const-string v1, "7"

    aput-object v1, v0, v11

    const-string v1, "8"

    aput-object v1, v0, v12

    const-string v1, "9"

    aput-object v1, v0, v13

    const-string v1, ","

    aput-object v1, v0, v14

    const-string v1, "."

    aput-object v1, v0, v15

    const-string v1, "CTRL_UL"

    aput-object v1, v0, v16

    const-string v1, "CTRL_US"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v1, 0x6

    .line 204
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 207
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    const/16 v1, 0xa

    .line 210
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    .line 213
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v2

    .line 217
    array-length v3, p1

    div-int/2addr v3, v1

    if-ge v3, v2, :cond_3

    .line 219
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_3
    const/4 v4, 0x0

    .line 221
    array-length v5, p1

    rem-int/2addr v5, v1

    sub-int v6, v3, v2

    .line 224
    new-array v7, v3, [I

    move v8, v5

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    .line 226
    invoke-static {p1, v8, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    aput v9, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v8, v1

    goto :goto_1

    .line 230
    :cond_4
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 231
    invoke-virtual {p1, v7, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    shl-int v0, p1, v1

    sub-int/2addr v0, p1

    move v3, v4

    move v5, v3

    :goto_2
    if-ge v3, v2, :cond_9

    .line 241
    aget v6, v7, v3

    if-eqz v6, :cond_8

    if-ne v6, v0, :cond_5

    goto :goto_3

    :cond_5
    if-eq v6, p1, :cond_6

    add-int/lit8 v8, v0, -0x1

    if-ne v6, v8, :cond_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 243
    :cond_8
    :goto_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_9
    mul-int v3, v2, v1

    sub-int/2addr v3, v5

    .line 249
    new-array v3, v3, [Z

    move v5, v4

    move v6, v5

    :goto_4
    if-ge v5, v2, :cond_f

    .line 252
    aget v8, v7, v5

    if-eq v8, p1, :cond_c

    add-int/lit8 v9, v0, -0x1

    if-ne v8, v9, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v1, -0x1

    :goto_5
    if-ltz v9, :cond_e

    add-int/lit8 v10, v6, 0x1

    shl-int v11, p1, v9

    and-int/2addr v11, v8

    if-eqz v11, :cond_b

    move v11, p1

    goto :goto_6

    :cond_b
    move v11, v4

    .line 259
    :goto_6
    aput-boolean v11, v3, v6

    add-int/lit8 v9, v9, -0x1

    move v6, v10

    goto :goto_5

    :cond_c
    :goto_7
    add-int v9, v6, v1

    sub-int/2addr v9, p1

    if-le v8, p1, :cond_d

    move v8, p1

    goto :goto_8

    :cond_d
    move v8, v4

    .line 255
    :goto_8
    invoke-static {v3, v6, v9, v8}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v8, v1, -0x1

    add-int/2addr v6, v8

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_f
    return-object v3

    :catch_0
    move-exception p1

    .line 233
    invoke-static {p1}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 1

    .line 175
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 188
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bad table"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :pswitch_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 183
    :pswitch_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 181
    :pswitch_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 179
    :pswitch_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 177
    :pswitch_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 93
    array-length v2, p0

    .line 94
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 95
    sget-object v4, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_a

    .line 99
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v7, 0x5

    if-ne v4, v6, :cond_5

    sub-int v4, v2, v1

    if-ge v4, v7, :cond_0

    goto/16 :goto_4

    .line 103
    :cond_0
    invoke-static {p0, v1, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v4

    add-int/lit8 v1, v1, 0x5

    if-nez v4, :cond_2

    sub-int v4, v2, v1

    const/16 v6, 0xb

    if-ge v4, v6, :cond_1

    goto/16 :goto_4

    .line 109
    :cond_1
    invoke-static {p0, v1, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    add-int/lit8 v1, v1, 0xb

    :cond_2
    move v6, v1

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    sub-int v7, v2, v6

    const/16 v8, 0x8

    if-ge v7, v8, :cond_3

    move v1, v2

    goto :goto_2

    .line 117
    :cond_3
    invoke-static {p0, v6, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    int-to-char v7, v7

    .line 118
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v6

    :goto_2
    move-object v4, v3

    goto :goto_0

    .line 124
    :cond_5
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v4, v6, :cond_6

    const/4 v6, 0x4

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    sub-int v8, v2, v1

    if-ge v8, v6, :cond_7

    goto :goto_4

    .line 128
    :cond_7
    invoke-static {p0, v1, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    add-int/2addr v1, v6

    .line 130
    invoke-static {v4, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CTRL_"

    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 133
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v6

    const/4 v7, 0x6

    .line 134
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x4c

    if-ne v4, v7, :cond_8

    move-object v3, v6

    goto :goto_2

    :cond_8
    move-object v4, v6

    goto :goto_0

    .line 138
    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 144
    :cond_a
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 164
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 157
    :pswitch_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 153
    :pswitch_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 155
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 159
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 161
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    shl-int/lit8 v1, v1, 0x1

    .line 328
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    const/16 v0, 0x10

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    mul-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 272
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    .line 273
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    if-eqz v2, :cond_0

    const/16 v4, 0xb

    :goto_0
    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v4, v5

    goto :goto_1

    :cond_0
    const/16 v4, 0xe

    goto :goto_0

    .line 275
    :goto_1
    new-array v5, v4, [I

    .line 276
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v6

    new-array v6, v6, [Z

    const/4 v8, 0x2

    if-eqz v2, :cond_1

    const/4 v9, 0x0

    .line 279
    :goto_2
    array-length v10, v5

    if-ge v9, v10, :cond_2

    .line 280
    aput v9, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v4, 0x1

    .line 283
    div-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v10, -0x1

    div-int/lit8 v11, v11, 0xf

    mul-int/2addr v11, v8

    add-int/2addr v9, v11

    .line 285
    div-int/2addr v9, v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_2

    .line 287
    div-int/lit8 v12, v11, 0xf

    add-int/2addr v12, v11

    sub-int v13, v10, v11

    add-int/lit8 v13, v13, -0x1

    sub-int v14, v9, v12

    add-int/lit8 v14, v14, -0x1

    .line 288
    aput v14, v5, v13

    add-int v13, v10, v11

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    .line 289
    aput v12, v5, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v9, v3, :cond_6

    const/4 v11, 0x4

    if-eqz v2, :cond_3

    sub-int v12, v3, v9

    mul-int/2addr v12, v11

    add-int/lit8 v12, v12, 0x9

    goto :goto_5

    :cond_3
    sub-int v12, v3, v9

    mul-int/2addr v12, v11

    add-int/lit8 v12, v12, 0xc

    :goto_5
    mul-int/lit8 v13, v9, 0x2

    add-int/lit8 v14, v4, -0x1

    sub-int/2addr v14, v13

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v12, :cond_5

    mul-int/lit8 v16, v15, 0x2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v8, :cond_4

    add-int v17, v10, v16

    add-int v17, v17, v7

    add-int v18, v13, v7

    .line 303
    aget v11, v5, v18

    add-int v19, v13, v15

    aget v8, v5, v19

    .line 304
    invoke-virtual {v1, v11, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v6, v17

    const/4 v8, 0x2

    mul-int v11, v8, v12

    add-int/2addr v11, v10

    add-int v11, v11, v16

    add-int/2addr v11, v7

    .line 306
    aget v8, v5, v19

    sub-int v17, v14, v7

    aget v0, v5, v17

    .line 307
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v11

    const/4 v0, 0x4

    mul-int v11, v0, v12

    add-int/2addr v11, v10

    add-int v11, v11, v16

    add-int/2addr v11, v7

    .line 309
    aget v8, v5, v17

    sub-int v17, v14, v15

    aget v0, v5, v17

    .line 310
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v11

    const/4 v0, 0x6

    mul-int/2addr v0, v12

    add-int/2addr v0, v10

    add-int v0, v0, v16

    add-int/2addr v0, v7

    .line 312
    aget v8, v5, v17

    aget v11, v5, v18

    .line 313
    invoke-virtual {v1, v8, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v6, v0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    const/4 v11, 0x4

    goto :goto_7

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    const/4 v11, 0x4

    goto :goto_6

    :cond_5
    mul-int/lit8 v12, v12, 0x8

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto :goto_4

    :cond_6
    return-object v6
.end method
