.class public Lcom/unisound/vui/util/StringToPyUtil;
.super Ljava/lang/Object;


# static fields
.field private static BEGIN:I

.field private static END:I

.field private static chartable:[C

.field private static initialtable:[C

.field private static table:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x1a

    const v0, 0xb0a1

    sput v0, Lcom/unisound/vui/util/StringToPyUtil;->BEGIN:I

    const v0, 0xf7fe

    sput v0, Lcom/unisound/vui/util/StringToPyUtil;->END:I

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unisound/vui/util/StringToPyUtil;->chartable:[C

    const/16 v0, 0x1b

    new-array v0, v0, [I

    sput-object v0, Lcom/unisound/vui/util/StringToPyUtil;->table:[I

    new-array v0, v3, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/unisound/vui/util/StringToPyUtil;->initialtable:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/unisound/vui/util/StringToPyUtil;->table:[I

    sget-object v2, Lcom/unisound/vui/util/StringToPyUtil;->chartable:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/unisound/vui/util/StringToPyUtil;->gbValue(C)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/unisound/vui/util/StringToPyUtil;->table:[I

    sget v1, Lcom/unisound/vui/util/StringToPyUtil;->END:I

    aput v1, v0, v3

    return-void

    nop

    :array_0
    .array-data 2
        0x554as
        -0x7d53s
        0x64e6s
        0x642ds
        -0x7902s
        0x53d1s
        0x5676s
        0x54c8s
        0x54c8s
        0x51fbs
        0x5580s
        0x5783s
        0x5988s
        0x62ffs
        0x54e6s
        0x556as
        0x671fs
        0x7136s
        0x6492s
        0x584cs
        0x584cs
        0x584cs
        0x6316s
        0x6614s
        0x538bs
        0x531ds
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x68s
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
        0x74s
        0x74s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Char2Initial(C)C
    .locals 4
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char p0, v0

    .end local p0    # "ch":C
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "ch":C
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-le p0, v0, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/unisound/vui/util/StringToPyUtil;->gbValue(C)I

    move-result v1

    sget v0, Lcom/unisound/vui/util/StringToPyUtil;->BEGIN:I

    if-lt v1, v0, :cond_0

    sget v0, Lcom/unisound/vui/util/StringToPyUtil;->END:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/unisound/vui/util/StringToPyUtil;->table:[I

    aget v2, v2, v0

    if-lt v1, v2, :cond_5

    sget-object v2, Lcom/unisound/vui/util/StringToPyUtil;->table:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_5

    :cond_3
    sget v2, Lcom/unisound/vui/util/StringToPyUtil;->END:I

    if-ne v1, v2, :cond_4

    const/16 v0, 0x19

    :cond_4
    sget-object v1, Lcom/unisound/vui/util/StringToPyUtil;->initialtable:[C

    aget-char p0, v1, v0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static cn2py(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "SourceStr"    # Ljava/lang/String;

    .prologue
    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/unisound/vui/util/StringToPyUtil;->Char2Initial(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static gbValue(C)I
    .locals 4
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
