.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# static fields
.field protected static final typeFieldName:[C


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 35
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 124
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    .line 125
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    .line 126
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    .line 39
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 45
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 63
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 64
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 67
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 467
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 473
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 476
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 480
    if-ne p4, v2, :cond_4

    .line 481
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 492
    :cond_2
    if-ne p6, v2, :cond_5

    .line 493
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 508
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    :cond_4
    if-ne p4, v3, :cond_0

    .line 485
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 496
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 497
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 500
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 501
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 412
    if-ne p1, v2, :cond_1

    .line 413
    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    .line 417
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    .line 428
    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 429
    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    .line 440
    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    .line 441
    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    .line 452
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 420
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    .line 421
    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 432
    :cond_6
    if-ne p3, v5, :cond_0

    .line 433
    if-eq p4, v2, :cond_3

    goto :goto_0

    .line 444
    :cond_7
    if-ne p5, v5, :cond_0

    .line 445
    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 6
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 457
    .local v1, "local":Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 458
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p1

    mul-int/lit16 v4, v4, 0x3e8

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p2

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p4

    add-int v3, v4, v5

    .line 459
    .local v3, "year":I
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p5

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p6

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 460
    .local v2, "month":I
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p7

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p8

    add-int v0, v4, v5

    .line 461
    .local v0, "day":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 462
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 463
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 464
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 518
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 52
    const/16 v0, 0x1a

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 72
    return-void
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()C
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 115
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 116
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 117
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 121
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 63
    .param p1, "strict"    # Z

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v17, v0

    sub-int v50, v10, v17

    .line 135
    .local v50, "rest":I
    if-nez p1, :cond_4

    const/16 v10, 0xd

    move/from16 v0, v50

    if-le v0, v10, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 137
    .local v30, "c0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v31

    .line 138
    .local v31, "c1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 139
    .local v32, "c2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 140
    .local v33, "c3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .line 141
    .local v34, "c4":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v35

    .line 143
    .local v35, "c5":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v50

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v36

    .line 144
    .local v36, "c_r0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v50

    add-int/lit8 v10, v10, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v37

    .line 145
    .local v37, "c_r1":C
    const/16 v10, 0x2f

    move/from16 v0, v30

    if-ne v0, v10, :cond_4

    const/16 v10, 0x44

    move/from16 v0, v31

    if-ne v0, v10, :cond_4

    const/16 v10, 0x61

    move/from16 v0, v32

    if-ne v0, v10, :cond_4

    const/16 v10, 0x74

    move/from16 v0, v33

    if-ne v0, v10, :cond_4

    const/16 v10, 0x65

    move/from16 v0, v34

    if-ne v0, v10, :cond_4

    const/16 v10, 0x28

    move/from16 v0, v35

    if-ne v0, v10, :cond_4

    const/16 v10, 0x2f

    move/from16 v0, v36

    if-ne v0, v10, :cond_4

    const/16 v10, 0x29

    move/from16 v0, v37

    if-ne v0, v10, :cond_4

    .line 147
    const/16 v49, -0x1

    .line 148
    .local v49, "plusIndex":I
    const/16 v41, 0x6

    .local v41, "i":I
    :goto_0
    move/from16 v0, v41

    move/from16 v1, v50

    if-ge v0, v1, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v41

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 150
    .local v29, "c":C
    const/16 v10, 0x2b

    move/from16 v0, v29

    if-ne v0, v10, :cond_1

    .line 151
    move/from16 v49, v41

    .line 148
    :cond_0
    add-int/lit8 v41, v41, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const/16 v10, 0x30

    move/from16 v0, v29

    if-lt v0, v10, :cond_2

    const/16 v10, 0x39

    move/from16 v0, v29

    if-le v0, v10, :cond_0

    .line 156
    .end local v29    # "c":C
    :cond_2
    const/4 v10, -0x1

    move/from16 v0, v49

    if-ne v0, v10, :cond_3

    .line 157
    const/4 v10, 0x0

    .line 408
    .end local v30    # "c0":C
    .end local v31    # "c1":C
    .end local v32    # "c2":C
    .end local v33    # "c3":C
    .end local v34    # "c4":C
    .end local v35    # "c5":C
    .end local v36    # "c_r0":C
    .end local v37    # "c_r1":C
    .end local v41    # "i":I
    .end local v49    # "plusIndex":I
    :goto_1
    return v10

    .line 159
    .restart local v30    # "c0":C
    .restart local v31    # "c1":C
    .restart local v32    # "c2":C
    .restart local v33    # "c3":C
    .restart local v34    # "c4":C
    .restart local v35    # "c5":C
    .restart local v36    # "c_r0":C
    .restart local v37    # "c_r1":C
    .restart local v41    # "i":I
    .restart local v49    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v48, v10, 0x6

    .line 160
    .local v48, "offset":I
    sub-int v10, v49, v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v47

    .line 161
    .local v47, "numberText":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    .line 163
    .local v44, "millis":J
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v42

    .line 164
    .local v42, "local":Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-static {v10, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 165
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-wide/from16 v0, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 167
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 168
    const/4 v10, 0x1

    goto :goto_1

    .line 172
    .end local v30    # "c0":C
    .end local v31    # "c1":C
    .end local v32    # "c2":C
    .end local v33    # "c3":C
    .end local v34    # "c4":C
    .end local v35    # "c5":C
    .end local v36    # "c_r0":C
    .end local v37    # "c_r1":C
    .end local v41    # "i":I
    .end local v42    # "local":Ljava/util/Locale;
    .end local v44    # "millis":J
    .end local v47    # "numberText":Ljava/lang/String;
    .end local v48    # "offset":I
    .end local v49    # "plusIndex":I
    :cond_4
    const/16 v10, 0x8

    move/from16 v0, v50

    if-eq v0, v10, :cond_5

    const/16 v10, 0xe

    move/from16 v0, v50

    if-eq v0, v10, :cond_5

    const/16 v10, 0x11

    move/from16 v0, v50

    if-ne v0, v10, :cond_11

    .line 173
    :cond_5
    if-eqz p1, :cond_6

    .line 174
    const/4 v10, 0x0

    goto :goto_1

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 178
    .local v2, "y0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 179
    .local v3, "y1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 180
    .local v4, "y2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 181
    .local v5, "y3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 182
    .local v6, "M0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 183
    .local v7, "M1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 184
    .local v8, "d0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 186
    .local v9, "d1":C
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_7

    .line 187
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 190
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 193
    const/16 v10, 0x8

    move/from16 v0, v50

    if-eq v0, v10, :cond_10

    .line 194
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 195
    .local v11, "h0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 196
    .local v12, "h1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 197
    .local v13, "m0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 198
    .local v14, "m1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 199
    .local v15, "s0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .local v16, "s1":C
    move-object/from16 v10, p0

    .line 201
    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_8

    .line 202
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 205
    :cond_8
    const/16 v10, 0x11

    move/from16 v0, v50

    if-ne v0, v10, :cond_f

    .line 206
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 207
    .local v26, "S0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v27

    .line 208
    .local v27, "S1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 209
    .local v28, "S2":C
    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_9

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_a

    .line 210
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 212
    :cond_a
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_b

    const/16 v10, 0x39

    move/from16 v0, v27

    if-le v0, v10, :cond_c

    .line 213
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 215
    :cond_c
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_d

    const/16 v10, 0x39

    move/from16 v0, v28

    if-le v0, v10, :cond_e

    .line 216
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 219
    :cond_e
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v26

    mul-int/lit8 v10, v10, 0x64

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v27

    mul-int/lit8 v17, v17, 0xa

    add-int v10, v10, v17

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v28

    add-int v44, v10, v17

    .line 224
    .end local v26    # "S0":C
    .end local v27    # "S1":C
    .end local v28    # "S2":C
    .local v44, "millis":I
    :goto_2
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v12

    add-int v40, v10, v17

    .line 225
    .local v40, "hour":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v14

    add-int v46, v10, v17

    .line 226
    .local v46, "minute":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v16

    add-int v51, v10, v17

    .line 234
    .end local v11    # "h0":C
    .end local v12    # "h1":C
    .end local v13    # "m0":C
    .end local v14    # "m1":C
    .end local v15    # "s0":C
    .end local v16    # "s1":C
    .local v51, "seconds":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 235
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v46

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 236
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 237
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 240
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 221
    .end local v40    # "hour":I
    .end local v44    # "millis":I
    .end local v46    # "minute":I
    .end local v51    # "seconds":I
    .restart local v11    # "h0":C
    .restart local v12    # "h1":C
    .restart local v13    # "m0":C
    .restart local v14    # "m1":C
    .restart local v15    # "s0":C
    .restart local v16    # "s1":C
    :cond_f
    const/16 v44, 0x0

    .restart local v44    # "millis":I
    goto :goto_2

    .line 228
    .end local v11    # "h0":C
    .end local v12    # "h1":C
    .end local v13    # "m0":C
    .end local v14    # "m1":C
    .end local v15    # "s0":C
    .end local v16    # "s1":C
    .end local v44    # "millis":I
    :cond_10
    const/16 v40, 0x0

    .line 229
    .restart local v40    # "hour":I
    const/16 v46, 0x0

    .line 230
    .restart local v46    # "minute":I
    const/16 v51, 0x0

    .line 231
    .restart local v51    # "seconds":I
    const/16 v44, 0x0

    .restart local v44    # "millis":I
    goto :goto_3

    .line 243
    .end local v2    # "y0":C
    .end local v3    # "y1":C
    .end local v4    # "y2":C
    .end local v5    # "y3":C
    .end local v6    # "M0":C
    .end local v7    # "M1":C
    .end local v8    # "d0":C
    .end local v9    # "d1":C
    .end local v40    # "hour":I
    .end local v44    # "millis":I
    .end local v46    # "minute":I
    .end local v51    # "seconds":I
    :cond_11
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    move/from16 v0, v50

    if-ge v0, v10, :cond_12

    .line 244
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 247
    :cond_12
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_13

    .line 248
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 250
    :cond_13
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_14

    .line 251
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 254
    :cond_14
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 255
    .restart local v2    # "y0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 256
    .restart local v3    # "y1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 257
    .restart local v4    # "y2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 258
    .restart local v5    # "y3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 259
    .restart local v6    # "M0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 260
    .restart local v7    # "M1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 261
    .restart local v8    # "d0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 262
    .restart local v9    # "d1":C
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_15

    .line 263
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v17, p0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    .line 266
    invoke-direct/range {v17 .. v25}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 268
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v52

    .line 269
    .local v52, "t":C
    const/16 v10, 0x54

    move/from16 v0, v52

    if-eq v0, v10, :cond_16

    const/16 v10, 0x20

    move/from16 v0, v52

    if-ne v0, v10, :cond_17

    if-nez p1, :cond_17

    .line 270
    :cond_16
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v50

    if-ge v0, v10, :cond_1a

    .line 271
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 273
    :cond_17
    const/16 v10, 0x22

    move/from16 v0, v52

    if-eq v0, v10, :cond_18

    const/16 v10, 0x1a

    move/from16 v0, v52

    if-ne v0, v10, :cond_19

    .line 274
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 275
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 276
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 277
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 279
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 281
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 282
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 284
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 287
    :cond_1a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1b

    .line 288
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 290
    :cond_1b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1c

    .line 291
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 294
    :cond_1c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 295
    .restart local v11    # "h0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 296
    .restart local v12    # "h1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 297
    .restart local v13    # "m0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 298
    .restart local v14    # "m1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 299
    .restart local v15    # "s0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .restart local v16    # "s1":C
    move-object/from16 v10, p0

    .line 301
    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 302
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 305
    :cond_1d
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v12

    add-int v40, v10, v17

    .line 306
    .restart local v40    # "hour":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v14

    add-int v46, v10, v17

    .line 307
    .restart local v46    # "minute":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v16

    add-int v51, v10, v17

    .line 308
    .restart local v51    # "seconds":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 309
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v46

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 310
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 312
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 313
    .local v38, "dot":C
    const/16 v10, 0x2e

    move/from16 v0, v38

    if-ne v0, v10, :cond_1e

    .line 314
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v50

    if-ge v0, v10, :cond_1f

    .line 315
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 318
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 320
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 322
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 323
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 326
    :cond_1f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 327
    .restart local v26    # "S0":C
    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_20

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_21

    .line 328
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 330
    :cond_21
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v44, v10, v26

    .line 331
    .restart local v44    # "millis":I
    const/16 v43, 0x1

    .line 334
    .local v43, "millisLen":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v27

    .line 335
    .restart local v27    # "S1":C
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_22

    const/16 v10, 0x39

    move/from16 v0, v27

    if-gt v0, v10, :cond_22

    .line 336
    mul-int/lit8 v10, v44, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v27

    add-int v44, v10, v17

    .line 337
    const/16 v43, 0x2

    .line 341
    :cond_22
    const/4 v10, 0x2

    move/from16 v0, v43

    if-ne v0, v10, :cond_23

    .line 342
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 343
    .restart local v28    # "S2":C
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_23

    const/16 v10, 0x39

    move/from16 v0, v28

    if-gt v0, v10, :cond_23

    .line 344
    mul-int/lit8 v10, v44, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v28

    add-int v44, v10, v17

    .line 345
    const/16 v43, 0x3

    .line 349
    .end local v28    # "S2":C
    :cond_23
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 351
    const/16 v62, 0x0

    .line 352
    .local v62, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    add-int v10, v10, v43

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v59

    .line 353
    .local v59, "timeZoneFlag":C
    const/16 v10, 0x2b

    move/from16 v0, v59

    if-eq v0, v10, :cond_24

    const/16 v10, 0x2d

    move/from16 v0, v59

    if-ne v0, v10, :cond_2c

    .line 354
    :cond_24
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    add-int v10, v10, v43

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v53

    .line 355
    .local v53, "t0":C
    const/16 v10, 0x30

    move/from16 v0, v53

    if-lt v0, v10, :cond_25

    const/16 v10, 0x31

    move/from16 v0, v53

    if-le v0, v10, :cond_26

    .line 356
    :cond_25
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 359
    :cond_26
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    add-int v10, v10, v43

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v54

    .line 360
    .local v54, "t1":C
    const/16 v10, 0x30

    move/from16 v0, v54

    if-lt v0, v10, :cond_27

    const/16 v10, 0x39

    move/from16 v0, v54

    if-le v0, v10, :cond_28

    .line 361
    :cond_27
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 364
    :cond_28
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    add-int v10, v10, v43

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v55

    .line 365
    .local v55, "t2":C
    const/16 v10, 0x3a

    move/from16 v0, v55

    if-ne v0, v10, :cond_2d

    .line 366
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    add-int v10, v10, v43

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v56

    .line 367
    .local v56, "t3":C
    const/16 v10, 0x30

    move/from16 v0, v56

    if-eq v0, v10, :cond_29

    .line 368
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 371
    :cond_29
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    add-int v10, v10, v43

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v57

    .line 372
    .local v57, "t4":C
    const/16 v10, 0x30

    move/from16 v0, v57

    if-eq v0, v10, :cond_2a

    .line 373
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 375
    :cond_2a
    const/16 v62, 0x6

    .line 386
    .end local v56    # "t3":C
    .end local v57    # "t4":C
    :goto_4
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v53

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v54

    add-int v10, v10, v17

    mul-int/lit16 v10, v10, 0xe10

    mul-int/lit16 v0, v10, 0x3e8

    move/from16 v61, v0

    .line 387
    .local v61, "timeZoneOffset":I
    const/16 v10, 0x2d

    move/from16 v0, v59

    if-ne v0, v10, :cond_2b

    .line 388
    move/from16 v0, v61

    neg-int v0, v0

    move/from16 v61, v0

    .line 391
    :cond_2b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    move/from16 v0, v61

    if-eq v10, v0, :cond_2c

    .line 392
    invoke-static/range {v61 .. v61}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v60

    .line 393
    .local v60, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v60

    array-length v10, v0

    if-lez v10, :cond_2c

    .line 394
    const/4 v10, 0x0

    aget-object v10, v60, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v58

    .line 395
    .local v58, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v58

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 401
    .end local v53    # "t0":C
    .end local v54    # "t1":C
    .end local v55    # "t2":C
    .end local v58    # "timeZone":Ljava/util/TimeZone;
    .end local v60    # "timeZoneIDs":[Ljava/lang/String;
    .end local v61    # "timeZoneOffset":I
    :cond_2c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v17, v43, 0x14

    add-int v17, v17, v62

    add-int v10, v10, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v39

    .line 402
    .local v39, "end":C
    const/16 v10, 0x1a

    move/from16 v0, v39

    if-eq v0, v10, :cond_30

    const/16 v10, 0x22

    move/from16 v0, v39

    if-eq v0, v10, :cond_30

    .line 403
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 376
    .end local v39    # "end":C
    .restart local v53    # "t0":C
    .restart local v54    # "t1":C
    .restart local v55    # "t2":C
    :cond_2d
    const/16 v10, 0x30

    move/from16 v0, v55

    if-ne v0, v10, :cond_2f

    .line 377
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    add-int v10, v10, v43

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v56

    .line 378
    .restart local v56    # "t3":C
    const/16 v10, 0x30

    move/from16 v0, v56

    if-eq v0, v10, :cond_2e

    .line 379
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 381
    :cond_2e
    const/16 v62, 0x5

    .line 382
    goto/16 :goto_4

    .line 383
    .end local v56    # "t3":C
    :cond_2f
    const/16 v62, 0x3

    goto/16 :goto_4

    .line 405
    .end local v53    # "t0":C
    .end local v54    # "t1":C
    .end local v55    # "t2":C
    .restart local v39    # "end":C
    :cond_30
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v17, v43, 0x14

    add-int v17, v17, v62

    add-int v10, v10, v17

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 407
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 408
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 98
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 105
    new-array v0, p2, [C

    .line 106
    .local v0, "chars":[C
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 107
    sub-int v2, v1, p1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
