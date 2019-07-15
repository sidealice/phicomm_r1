.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_singleQuotes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v3, 0x100

    const/16 v8, 0x5c

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 25
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    .line 28
    new-array v2, v3, [Z

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 30
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 31
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    .line 32
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v6, v2, v0

    .line 30
    :cond_0
    :goto_1
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_0

    .line 33
    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 34
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v6, v2, v0

    goto :goto_1

    .line 35
    :cond_2
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_0

    .line 36
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v6, v2, v0

    goto :goto_1

    .line 41
    :cond_3
    new-array v2, v3, [Z

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 44
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 45
    const/16 v2, 0x41

    if-lt v0, v2, :cond_5

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_5

    .line 46
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v6, v2, v0

    .line 44
    :cond_4
    :goto_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_2

    .line 47
    :cond_5
    const/16 v2, 0x61

    if-lt v0, v2, :cond_6

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_6

    .line 48
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v6, v2, v0

    goto :goto_3

    .line 49
    :cond_6
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_7

    .line 50
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v6, v2, v0

    goto :goto_3

    .line 51
    :cond_7
    const/16 v2, 0x30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    if-gt v0, v2, :cond_4

    .line 52
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v6, v2, v0

    goto :goto_3

    .line 57
    :cond_8
    new-array v2, v3, [B

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 58
    new-array v2, v3, [B

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 60
    const/16 v2, 0x80

    new-array v2, v2, [C

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 62
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x0

    aput-byte v5, v2, v3

    .line 63
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v2, v6

    .line 64
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x2

    aput-byte v5, v2, v3

    .line 65
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x3

    aput-byte v5, v2, v3

    .line 66
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v2, v5

    .line 67
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x5

    aput-byte v5, v2, v3

    .line 68
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x6

    aput-byte v5, v2, v3

    .line 69
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x7

    aput-byte v5, v2, v3

    .line 70
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0x8

    aput-byte v6, v2, v3

    .line 71
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0x9

    aput-byte v6, v2, v3

    .line 72
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v6, v2, v7

    .line 73
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0xb

    aput-byte v5, v2, v3

    .line 74
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0xc

    aput-byte v6, v2, v3

    .line 75
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0xd

    aput-byte v6, v2, v3

    .line 76
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0x22

    aput-byte v6, v2, v3

    .line 77
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v6, v2, v8

    .line 79
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x0

    aput-byte v5, v2, v3

    .line 80
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v2, v6

    .line 81
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x2

    aput-byte v5, v2, v3

    .line 82
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x3

    aput-byte v5, v2, v3

    .line 83
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v2, v5

    .line 84
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x5

    aput-byte v5, v2, v3

    .line 85
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x6

    aput-byte v5, v2, v3

    .line 86
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x7

    aput-byte v5, v2, v3

    .line 87
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x8

    aput-byte v6, v2, v3

    .line 88
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x9

    aput-byte v6, v2, v3

    .line 89
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v6, v2, v7

    .line 90
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xb

    aput-byte v5, v2, v3

    .line 91
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xc

    aput-byte v6, v2, v3

    .line 92
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xd

    aput-byte v6, v2, v3

    .line 93
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v6, v2, v8

    .line 94
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x27

    aput-byte v6, v2, v3

    .line 96
    const/16 v1, 0xe

    .local v1, "i":I
    :goto_4
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_9

    .line 97
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v2, v1

    .line 98
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v2, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 101
    :cond_9
    const/16 v1, 0x7f

    :goto_5
    const/16 v2, 0xa0

    if-gt v1, v2, :cond_a

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v2, v1

    .line 103
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v2, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 106
    :cond_a
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v3, 0x0

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 107
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x31

    aput-char v3, v2, v6

    .line 108
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v3, 0x2

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 109
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v3, 0x3

    const/16 v4, 0x33

    aput-char v4, v2, v3

    .line 110
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x34

    aput-char v3, v2, v5

    .line 111
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v3, 0x5

    const/16 v4, 0x35

    aput-char v4, v2, v3

    .line 112
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v3, 0x6

    const/16 v4, 0x36

    aput-char v4, v2, v3

    .line 113
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v3, 0x7

    const/16 v4, 0x37

    aput-char v4, v2, v3

    .line 114
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x8

    const/16 v4, 0x62

    aput-char v4, v2, v3

    .line 115
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x9

    const/16 v4, 0x74

    aput-char v4, v2, v3

    .line 116
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x6e

    aput-char v3, v2, v7

    .line 117
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0xb

    const/16 v4, 0x76

    aput-char v4, v2, v3

    .line 118
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0xc

    const/16 v4, 0x66

    aput-char v4, v2, v3

    .line 119
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0xd

    const/16 v4, 0x72

    aput-char v4, v2, v3

    .line 120
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x22

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 121
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x27

    const/16 v4, 0x27

    aput-char v4, v2, v3

    .line 122
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v3, 0x2f

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    .line 123
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aput-char v8, v2, v8

    .line 126
    const/16 v2, 0x60

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    .line 203
    const/16 v2, 0x24

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    .line 206
    const/16 v2, 0x64

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    .line 212
    const/16 v2, 0x64

    new-array v2, v2, [C

    fill-array-data v2, :array_4

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    .line 218
    new-array v2, v7, [I

    fill-array-data v2, :array_5

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    return-void

    .line 25
    :array_0
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 126
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    .line 203
    :array_2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 206
    :array_3
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 212
    :array_4
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
    .end array-data

    .line 218
    :array_5
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "x"    # Ljava/io/Closeable;

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 136
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getChars(JI[C)V
    .locals 12
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 156
    move v0, p2

    .line 157
    .local v0, "charPos":I
    const/4 v6, 0x0

    .line 159
    .local v6, "sign":C
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_0

    .line 160
    const/16 v6, 0x2d

    .line 161
    neg-long p0, p0

    .line 165
    :cond_0
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, p0, v8

    if-lez v7, :cond_1

    .line 166
    const-wide/16 v8, 0x64

    div-long v2, p0, v8

    .line 168
    .local v2, "q":J
    const/4 v7, 0x6

    shl-long v8, v2, v7

    const/4 v7, 0x5

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    const/4 v7, 0x2

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v5, v8

    .line 169
    .local v5, "r":I
    move-wide p0, v2

    .line 170
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 171
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    .line 176
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v1, p0

    .line 177
    .local v1, "i2":I
    :goto_1
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_2

    .line 178
    div-int/lit8 v4, v1, 0x64

    .line 180
    .local v4, "q2":I
    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 181
    .restart local v5    # "r":I
    move v1, v4

    .line 182
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 183
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    .line 189
    .end local v4    # "q2":I
    .end local v5    # "r":I
    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    .line 190
    .restart local v4    # "q2":I
    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 191
    .restart local v5    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 192
    move v1, v4

    .line 193
    if-nez v1, :cond_2

    .line 195
    if-eqz v6, :cond_3

    .line 196
    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    .line 198
    :cond_3
    return-void
.end method

.method public static stringSize(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 224
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 6
    .param p0, "x"    # J

    .prologue
    const/16 v1, 0x13

    .line 145
    const-wide/16 v2, 0xa

    .line 146
    .local v2, "p":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 147
    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    .line 150
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 148
    .restart local v0    # "i":I
    :cond_0
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 150
    goto :goto_1
.end method
