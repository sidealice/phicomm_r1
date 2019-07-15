.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_KEYWORDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final INT_N_MULTMAX_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field protected static final N_MULTMAX_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C

.field protected static whitespaceFlags:[Z


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected keywods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "null"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v2, "new"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "true"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v2, "false"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v2, "undefined"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->DEFAULT_KEYWORDS:Ljava/util/Map;

    .line 89
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 1815
    const/16 v2, 0x100

    new-array v2, v2, [Z

    sput-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    .line 1817
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v3, 0x20

    aput-boolean v4, v2, v3

    .line 1818
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v3, 0xa

    aput-boolean v4, v2, v3

    .line 1819
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v3, 0xd

    aput-boolean v4, v2, v3

    .line 1820
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    aput-boolean v4, v2, v6

    .line 1821
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v3, 0xc

    aput-boolean v4, v2, v3

    .line 1822
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    aput-boolean v4, v2, v5

    .line 1831
    const/16 v2, 0x67

    new-array v2, v2, [I

    sput-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 1834
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 1835
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v3, v0, -0x30

    aput v3, v2, v0

    .line 1834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1838
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x66

    if-gt v0, v2, :cond_1

    .line 1839
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0xa

    aput v3, v2, v0

    .line 1838
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1841
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v2, 0x46

    if-gt v0, v2, :cond_2

    .line 1842
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v3, v0, -0x41

    add-int/lit8 v3, v3, 0xa

    aput v3, v2, v0

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1844
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 85
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 90
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->DEFAULT_KEYWORDS:Ljava/util/Map;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->keywods:Ljava/util/Map;

    .line 93
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 95
    .local v0, "sbufRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 97
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-nez v1, :cond_1

    .line 101
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 103
    :cond_1
    return-void
.end method

.method public static final isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1812
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final scanStringSingleQuote()V
    .locals 15

    .prologue
    .line 1492
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1493
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 1496
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 1498
    .local v4, "chLocal":C
    const/16 v11, 0x27

    if-ne v4, v11, :cond_0

    .line 1614
    const/4 v11, 0x4

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1615
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1616
    return-void

    .line 1502
    :cond_0
    const/16 v11, 0x1a

    if-ne v4, v11, :cond_1

    .line 1503
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "unclosed single-quote string"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1506
    :cond_1
    const/16 v11, 0x5c

    if-ne v4, v11, :cond_4

    .line 1507
    iget-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v11, :cond_3

    .line 1508
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 1510
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v12, v12

    if-le v11, v12, :cond_2

    .line 1511
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    mul-int/lit8 v11, v11, 0x2

    new-array v5, v11, [C

    .line 1512
    .local v5, "newsbuf":[C
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    invoke-static {v11, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1513
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1517
    .end local v5    # "newsbuf":[C
    :cond_2
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v11, v12, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 1521
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 1523
    sparse-switch v4, :sswitch_data_0

    .line 1596
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1597
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "unclosed single-quote string"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1525
    :sswitch_0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 1528
    :sswitch_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 1531
    :sswitch_2
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 1534
    :sswitch_3
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 1537
    :sswitch_4
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 1540
    :sswitch_5
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 1543
    :sswitch_6
    const/4 v11, 0x6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 1546
    :sswitch_7
    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1549
    :sswitch_8
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1552
    :sswitch_9
    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1555
    :sswitch_a
    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1558
    :sswitch_b
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1562
    :sswitch_c
    const/16 v11, 0xc

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1565
    :sswitch_d
    const/16 v11, 0xd

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1568
    :sswitch_e
    const/16 v11, 0x22

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1571
    :sswitch_f
    const/16 v11, 0x27

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1574
    :sswitch_10
    const/16 v11, 0x2f

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1577
    :sswitch_11
    const/16 v11, 0x5c

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1580
    :sswitch_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    move v7, v4

    .line 1581
    .local v7, "x1":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    move v8, v4

    .line 1583
    .local v8, "x2":C
    sget-object v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v11, v11, v7

    mul-int/lit8 v11, v11, 0x10

    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v12, v12, v8

    add-int v10, v11, v12

    .line 1584
    .local v10, "x_val":I
    int-to-char v9, v10

    .line 1585
    .local v9, "x_char":C
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1588
    .end local v7    # "x1":C
    .end local v8    # "x2":C
    .end local v9    # "x_char":C
    .end local v10    # "x_val":I
    :sswitch_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    move v0, v4

    .line 1589
    .local v0, "c1":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    move v1, v4

    .line 1590
    .local v1, "c2":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    move v2, v4

    .line 1591
    .local v2, "c3":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    move v3, v4

    .line 1592
    .local v3, "c4":C
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x4

    new-array v12, v12, [C

    const/4 v13, 0x0

    aput-char v0, v12, v13

    const/4 v13, 0x1

    aput-char v1, v12, v13

    const/4 v13, 0x2

    aput-char v2, v12, v13

    const/4 v13, 0x3

    aput-char v3, v12, v13

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 1593
    .local v6, "val":I
    int-to-char v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1602
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "c3":C
    .end local v3    # "c4":C
    .end local v6    # "val":I
    :cond_4
    iget-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v11, :cond_5

    .line 1603
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 1607
    :cond_5
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v12, v12

    if-ne v11, v12, :cond_6

    .line 1608
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1610
    :cond_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v4, v11, v12

    goto/16 :goto_0

    .line 1523
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 3

    .prologue
    .line 986
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 987
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 989
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 990
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 505
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 506
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 4
    .param p1, "decimal"    # Z

    .prologue
    .line 1788
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1789
    .local v0, "chLocal":C
    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 1790
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1802
    :goto_0
    return-object v1

    .line 1794
    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 1795
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 1799
    :cond_1
    if-eqz p1, :cond_2

    .line 1800
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 1802
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 1807
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final getBufferPosition()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 517
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getKeyword(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->keywods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public final intValue()I
    .locals 11

    .prologue
    const v6, -0xccccccc

    .line 929
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 930
    const/4 v9, 0x0

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 933
    :cond_0
    const/4 v8, 0x0

    .line 934
    .local v8, "result":I
    const/4 v7, 0x0

    .line 935
    .local v7, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v5, v9, v10

    .line 940
    .local v5, "max":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_4

    .line 941
    const/4 v7, 0x1

    .line 942
    const/high16 v4, -0x80000000

    .line 943
    .local v4, "limit":I
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 947
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-eqz v7, :cond_1

    .line 948
    .local v6, "multmin":I
    :cond_1
    if-ge v3, v5, :cond_2

    .line 949
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    aget v1, v9, v10

    .line 950
    .local v1, "digit":I
    neg-int v8, v1

    move v3, v2

    .line 952
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_2
    :goto_1
    if-ge v3, v5, :cond_a

    .line 954
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 956
    .local v0, "chLocal":C
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_3

    const/16 v9, 0x53

    if-eq v0, v9, :cond_3

    const/16 v9, 0x42

    if-ne v0, v9, :cond_5

    .line 972
    .end local v0    # "chLocal":C
    :cond_3
    :goto_2
    if-eqz v7, :cond_9

    .line 973
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_8

    .line 979
    .end local v8    # "result":I
    :goto_3
    return v8

    .line 945
    .end local v4    # "limit":I
    .end local v6    # "multmin":I
    .restart local v8    # "result":I
    :cond_4
    const v4, -0x7fffffff

    .restart local v4    # "limit":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 960
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v6    # "multmin":I
    :cond_5
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v9, v0

    .line 962
    .restart local v1    # "digit":I
    if-ge v8, v6, :cond_6

    .line 963
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 965
    :cond_6
    mul-int/lit8 v8, v8, 0xa

    .line 966
    add-int v9, v4, v1

    if-ge v8, v9, :cond_7

    .line 967
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 969
    :cond_7
    sub-int/2addr v8, v1

    move v3, v2

    .line 970
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 976
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_8
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 979
    :cond_9
    neg-int v8, v8

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_a
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 404
    const-wide/16 v10, 0x0

    .line 405
    .local v10, "result":J
    const/4 v8, 0x0

    .line 406
    .local v8, "negative":Z
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 407
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 409
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v1, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v3, v12, v13

    .line 414
    .local v3, "max":I
    const/16 v9, 0x20

    .line 416
    .local v9, "type":C
    add-int/lit8 v12, v3, -0x1

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 433
    :goto_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    .line 434
    const/4 v8, 0x1

    .line 435
    const-wide/high16 v4, -0x8000000000000000L

    .line 436
    .local v4, "limit":J
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 440
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-eqz v8, :cond_3

    const-wide v6, -0xcccccccccccccccL

    .line 441
    .local v6, "multmin":J
    :goto_2
    if-ge v2, v3, :cond_1

    .line 442
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 443
    .local v0, "digit":I
    neg-int v12, v0

    int-to-long v10, v12

    move v2, v1

    .line 445
    .end local v0    # "digit":I
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    :goto_3
    if-ge v2, v3, :cond_6

    .line 447
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 448
    .restart local v0    # "digit":I
    cmp-long v12, v10, v6

    if-gez v12, :cond_4

    .line 449
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 488
    .end local v0    # "digit":I
    :goto_4
    return-object v12

    .line 418
    .end local v4    # "limit":J
    .end local v6    # "multmin":J
    :sswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 419
    const/16 v9, 0x4c

    .line 420
    goto :goto_0

    .line 422
    :sswitch_1
    add-int/lit8 v3, v3, -0x1

    .line 423
    const/16 v9, 0x53

    .line 424
    goto :goto_0

    .line 426
    :sswitch_2
    add-int/lit8 v3, v3, -0x1

    .line 427
    const/16 v9, 0x42

    .line 428
    goto :goto_0

    .line 438
    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v4    # "limit":J
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 440
    :cond_3
    const-wide v6, -0xcccccccccccccccL

    goto :goto_2

    .line 451
    .end local v2    # "i":I
    .restart local v0    # "digit":I
    .restart local v1    # "i":I
    .restart local v6    # "multmin":J
    :cond_4
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 452
    int-to-long v12, v0

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_5

    .line 453
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 455
    :cond_5
    int-to-long v12, v0

    sub-long/2addr v10, v12

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 458
    .end local v0    # "digit":I
    :cond_6
    if-eqz v8, :cond_b

    .line 459
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_a

    .line 460
    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_9

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_9

    .line 461
    const/16 v12, 0x53

    if-ne v9, v12, :cond_7

    .line 462
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 465
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    const/16 v12, 0x42

    if-ne v9, v12, :cond_8

    .line 466
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 469
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_8
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 471
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 473
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_a
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 476
    :cond_b
    neg-long v10, v10

    .line 477
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_e

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_e

    .line 478
    const/16 v12, 0x53

    if-ne v9, v12, :cond_c

    .line 479
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_4

    .line 482
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_c
    const/16 v12, 0x42

    if-ne v9, v12, :cond_d

    .line 483
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_4

    .line 486
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_d
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_4

    .line 488
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_e
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_4

    .line 416
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 3

    .prologue
    .line 1466
    const/4 v1, 0x0

    .line 1467
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1468
    .local v0, "chLocal":C
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    .line 1477
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1472
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1473
    const/4 v2, 0x0

    goto :goto_1

    .line 1466
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 509
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 993
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 997
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 61
    return-void
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide v8, -0xcccccccccccccccL

    .line 1738
    const-wide/16 v10, 0x0

    .line 1739
    .local v10, "result":J
    const/4 v7, 0x0

    .line 1740
    .local v7, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v6, v12, v13

    .line 1745
    .local v6, "max":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    .line 1746
    const/4 v7, 0x1

    .line 1747
    const-wide/high16 v4, -0x8000000000000000L

    .line 1748
    .local v4, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 1752
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-eqz v7, :cond_0

    .line 1753
    .local v8, "multmin":J
    :cond_0
    if-ge v3, v6, :cond_1

    .line 1754
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    aget v1, v12, v13

    .line 1755
    .local v1, "digit":I
    neg-int v12, v1

    int-to-long v10, v12

    move v3, v2

    .line 1757
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    :goto_1
    if-ge v3, v6, :cond_9

    .line 1759
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1761
    .local v0, "chLocal":C
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_2

    const/16 v12, 0x53

    if-eq v0, v12, :cond_2

    const/16 v12, 0x42

    if-ne v0, v12, :cond_4

    .line 1776
    .end local v0    # "chLocal":C
    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    .line 1777
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    .line 1783
    .end local v10    # "result":J
    :goto_3
    return-wide v10

    .line 1750
    .end local v4    # "limit":J
    .end local v8    # "multmin":J
    .restart local v10    # "result":J
    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v4    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1765
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v8    # "multmin":J
    :cond_4
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v12, v0

    .line 1766
    .restart local v1    # "digit":I
    cmp-long v12, v10, v8

    if-gez v12, :cond_5

    .line 1767
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1769
    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 1770
    int-to-long v12, v1

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 1771
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1773
    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 1774
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1780
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1783
    :cond_8
    neg-long v10, v10

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .prologue
    .line 347
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 350
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 355
    :goto_1
    return-void

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 106
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 109
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 111
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 206
    :goto_1
    return-void

    .line 116
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 118
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 122
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 127
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 132
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v0, v2, :cond_5

    .line 196
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    goto :goto_1

    .line 145
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 148
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    goto :goto_1

    .line 151
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTreeSet()V

    goto :goto_1

    .line 154
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSet()V

    goto :goto_1

    .line 157
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    goto :goto_1

    .line 160
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    goto :goto_1

    .line 163
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanUndefined()V

    goto :goto_1

    .line 166
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 167
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 170
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 171
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 174
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 175
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 178
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 179
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 182
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 183
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 186
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 187
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 190
    :sswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 191
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 199
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 200
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    goto/16 :goto_1

    .line 202
    :cond_6
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x3a -> :sswitch_e
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x5b -> :sswitch_a
        0x5d -> :sswitch_b
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_2
        0x75 -> :sswitch_7
        0x7b -> :sswitch_c
        0x7d -> :sswitch_d
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7
    .param p1, "expect"    # I

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 216
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 336
    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 218
    :pswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_2

    .line 219
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 344
    :goto_1
    return-void

    .line 223
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_0

    .line 224
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 230
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 231
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 236
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 237
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 242
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 243
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 248
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 249
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 254
    :pswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 255
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 256
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 260
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 261
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 262
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto :goto_1

    .line 266
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_8

    .line 267
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 272
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 273
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 280
    :pswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 281
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto/16 :goto_1

    .line 286
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 287
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto/16 :goto_1

    .line 292
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_b

    .line 293
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 298
    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 299
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 305
    :pswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_c

    .line 306
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 311
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 312
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 318
    :pswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    .line 319
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 320
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 324
    :cond_d
    :pswitch_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 325
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 330
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    goto/16 :goto_1

    .line 341
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 365
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 368
    return-void

    .line 371
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 359
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1
    .param p1, "expect"    # I

    .prologue
    .line 493
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 494
    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .param p1, "ch"    # C

    .prologue
    const/4 v3, 0x0

    .line 1645
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 1647
    .local v0, "newsbuf":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1648
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1650
    .end local v0    # "newsbuf":[C
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v1, v2

    .line 1651
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 743
    return-void
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 2
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p3, "serperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1079
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1081
    const/4 v1, 0x0

    .line 1083
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_0
.end method

.method public final scanFalse()V
    .locals 2

    .prologue
    .line 1404
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 1405
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1409
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    .line 1410
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1414
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1415
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1419
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    .line 1420
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1424
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    .line 1425
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1429
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_6

    .line 1431
    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1435
    return-void

    .line 1433
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanIdent()V
    .locals 3

    .prologue
    .line 1438
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1439
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 1442
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1444
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1445
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1449
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "ident":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getKeyword(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1452
    .local v1, "tok":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1453
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1457
    :goto_0
    return-void

    .line 1455
    :cond_1
    const/16 v2, 0x12

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public scanInt(C)I
    .locals 10
    .param p1, "expectNext"    # C

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 1152
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1154
    const/4 v1, 0x0

    .line 1155
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1158
    .local v0, "chLocal":C
    if-lt v0, v8, :cond_2

    if-gt v0, v9, :cond_2

    .line 1159
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v3, v5, v0

    .local v3, "value":I
    move v1, v2

    .line 1161
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1162
    if-lt v0, v8, :cond_0

    if-gt v0, v9, :cond_0

    .line 1163
    mul-int/lit8 v5, v3, 0xa

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v6, v6, v0

    add-int v3, v5, v6

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    .line 1164
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_0
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_1

    .line 1165
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v3, v4

    .line 1188
    .end local v3    # "value":I
    :goto_1
    return v3

    .line 1171
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    .restart local v3    # "value":I
    :cond_1
    if-gez v3, :cond_3

    .line 1172
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v3, v4

    .line 1173
    goto :goto_1

    .line 1176
    .end local v1    # "offset":I
    .end local v3    # "value":I
    .restart local v2    # "offset":I
    :cond_2
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v3, v4

    .line 1177
    goto :goto_1

    .line 1180
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    .restart local v3    # "value":I
    :cond_3
    if-ne v0, p1, :cond_4

    .line 1181
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1183
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1184
    const/16 v4, 0x10

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v1, v2

    .line 1185
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1187
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_4
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .line 1188
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1
.end method

.method public scanLong(C)J
    .locals 10
    .param p1, "expectNextChar"    # C

    .prologue
    .line 1193
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1195
    const/4 v1, 0x0

    .line 1196
    .local v1, "offset":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1199
    .local v0, "chLocal":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 1200
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v3, v3, v0

    int-to-long v4, v3

    .local v4, "value":J
    move v1, v2

    .line 1202
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1203
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 1204
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v3, v3, v0

    int-to-long v8, v3

    add-long v4, v6, v8

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    .line 1205
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_0
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 1206
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1207
    const-wide/16 v4, 0x0

    move v1, v2

    .line 1229
    .end local v2    # "offset":I
    .end local v4    # "value":J
    .restart local v1    # "offset":I
    :goto_1
    return-wide v4

    .line 1212
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    .restart local v4    # "value":J
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 1213
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1214
    const-wide/16 v4, 0x0

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1217
    .end local v1    # "offset":I
    .end local v4    # "value":J
    .restart local v2    # "offset":I
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1218
    const-wide/16 v4, 0x0

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1221
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    .restart local v4    # "value":J
    :cond_3
    if-ne v0, p1, :cond_4

    .line 1222
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v3, v6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1223
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1224
    const/4 v3, 0x3

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1225
    const/16 v3, 0x10

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v1, v2

    .line 1226
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1228
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .line 1229
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1
.end method

.method public final scanNullOrNew()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 1306
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 1307
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1311
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    .line 1312
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1313
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    .line 1314
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1318
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1319
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1323
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_4

    .line 1325
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1348
    :goto_0
    return-void

    .line 1327
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    .line 1333
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse e"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1335
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1337
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    .line 1338
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse w"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1342
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_9

    .line 1344
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1346
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x46

    const/16 v6, 0x44

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1654
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1656
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v5, :cond_0

    .line 1657
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1658
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1662
    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_1

    .line 1663
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1667
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 1670
    :cond_1
    const/4 v0, 0x0

    .line 1672
    .local v0, "isDouble":Z
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 1673
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1674
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1675
    const/4 v0, 0x1

    .line 1678
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_2

    .line 1679
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1683
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 1687
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    .line 1688
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1689
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1730
    :cond_3
    :goto_2
    if-eqz v0, :cond_f

    .line 1731
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1735
    :goto_3
    return-void

    .line 1690
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    .line 1691
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1692
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1693
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_6

    .line 1694
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1695
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1696
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_7

    .line 1697
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1698
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1699
    const/4 v0, 0x1

    goto :goto_2

    .line 1700
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_8

    .line 1701
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1702
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1703
    const/4 v0, 0x1

    goto :goto_2

    .line 1704
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    .line 1705
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1706
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1708
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_a

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v5, :cond_b

    .line 1709
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1710
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1714
    :cond_b
    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_c

    .line 1715
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1719
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 1722
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v6, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_e

    .line 1723
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1724
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1727
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1733
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3
.end method

.method public final scanSet()V
    .locals 2

    .prologue
    .line 1619
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    .line 1620
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1622
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1624
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 1625
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1627
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1629
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    .line 1630
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1634
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 1635
    :cond_3
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1639
    return-void

    .line 1637
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 14
    .param p1, "expectNextChar"    # C

    .prologue
    const/16 v13, 0x6c

    const/16 v10, 0x22

    const/4 v12, 0x3

    const/4 v7, 0x0

    const/4 v11, -0x1

    .line 1007
    const/4 v9, 0x0

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1009
    const/4 v4, 0x0

    .line 1010
    .local v4, "offset":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1012
    .local v0, "chLocal":C
    const/16 v9, 0x6e

    if-ne v0, v9, :cond_2

    .line 1013
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    const/16 v10, 0x75

    if-ne v9, v10, :cond_0

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_0

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_0

    .line 1014
    add-int/lit8 v4, v5, 0x3

    .line 1015
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1021
    if-ne v0, p1, :cond_1

    .line 1022
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1023
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1024
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1073
    :goto_0
    return-object v7

    .line 1017
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_0
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1018
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1027
    :cond_1
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1032
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_2
    if-eq v0, v10, :cond_3

    .line 1033
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1035
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v7

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1038
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_3
    const/4 v2, 0x0

    .line 1041
    .local v2, "hasSpecial":Z
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v9, 0x1

    .line 1042
    .local v6, "startIndex":I
    invoke-virtual {p0, v10, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    .line 1043
    .local v1, "endIndex":I
    if-ne v1, v11, :cond_4

    .line 1044
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "unclosed str"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1047
    :cond_4
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x1

    sub-int v10, v1, v6

    invoke-virtual {p0, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 1048
    .local v8, "stringVal":Ljava/lang/String;
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v9, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 1049
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 1050
    const/4 v2, 0x1

    .line 1055
    :cond_5
    if-eqz v2, :cond_7

    .line 1056
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1058
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v7

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1048
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1061
    :cond_7
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x1

    sub-int v9, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v9, 0x1

    .line 1062
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1063
    move-object v7, v8

    .line 1066
    .local v7, "strVal":Ljava/lang/String;
    if-ne v0, p1, :cond_8

    .line 1067
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v5, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1068
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1069
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1070
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1072
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_8
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1073
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0
.end method

.method public final scanString()V
    .locals 17

    .prologue
    .line 794
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 795
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 798
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 800
    .local v1, "ch":C
    const/16 v13, 0x22

    if-ne v1, v13, :cond_0

    .line 920
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 922
    return-void

    .line 804
    :cond_0
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_1

    .line 805
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 808
    :cond_1
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_5

    .line 809
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v13, :cond_4

    .line 810
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 812
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-lt v13, v14, :cond_3

    .line 813
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v13, v13

    mul-int/lit8 v2, v13, 0x2

    .line 814
    .local v2, "newCapcity":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-le v13, v2, :cond_2

    .line 815
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 817
    :cond_2
    new-array v3, v2, [C

    .line 818
    .local v3, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 822
    .end local v2    # "newCapcity":I
    .end local v3    # "newsbuf":[C
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 827
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 829
    sparse-switch v1, :sswitch_data_0

    .line 902
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 903
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 831
    :sswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 834
    :sswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 837
    :sswitch_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 840
    :sswitch_3
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 843
    :sswitch_4
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 846
    :sswitch_5
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 849
    :sswitch_6
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 852
    :sswitch_7
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 855
    :sswitch_8
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 858
    :sswitch_9
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 861
    :sswitch_a
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 864
    :sswitch_b
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 868
    :sswitch_c
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 871
    :sswitch_d
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 874
    :sswitch_e
    const/16 v13, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 877
    :sswitch_f
    const/16 v13, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 880
    :sswitch_10
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 883
    :sswitch_11
    const/16 v13, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 886
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v9, v1

    .line 887
    .local v9, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v10, v1

    .line 889
    .local v10, "x2":C
    sget-object v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v13, v13, v9

    mul-int/lit8 v13, v13, 0x10

    sget-object v14, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v14, v14, v10

    add-int v12, v13, v14

    .line 890
    .local v12, "x_val":I
    int-to-char v11, v12

    .line 891
    .local v11, "x_char":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 894
    .end local v9    # "x1":C
    .end local v10    # "x2":C
    .end local v11    # "x_char":C
    .end local v12    # "x_val":I
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v4, v1

    .line 895
    .local v4, "u1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v5, v1

    .line 896
    .local v5, "u2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v6, v1

    .line 897
    .local v6, "u3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v7, v1

    .line 898
    .local v7, "u4":C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [C

    const/4 v15, 0x0

    aput-char v4, v14, v15

    const/4 v15, 0x1

    aput-char v5, v14, v15

    const/4 v15, 0x2

    aput-char v6, v14, v15

    const/4 v15, 0x3

    aput-char v7, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 899
    .local v8, "val":I
    int-to-char v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 908
    .end local v4    # "u1":C
    .end local v5    # "u2":C
    .end local v6    # "u3":C
    .end local v7    # "u4":C
    .end local v8    # "val":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v13, :cond_6

    .line 909
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 913
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-ne v13, v14, :cond_7

    .line 914
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 916
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v13, v14

    goto/16 :goto_0

    .line 829
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 527
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v2, :cond_0

    .line 528
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 531
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v3, :cond_2

    .line 532
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 540
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 541
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 545
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 546
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 547
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 551
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 552
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 556
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 557
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 25
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quote"    # C

    .prologue
    .line 568
    const/4 v11, 0x0

    .line 570
    .local v11, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 571
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 572
    const/4 v10, 0x0

    .line 575
    .local v10, "hasSpecial":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 577
    .local v9, "chLocal":C
    move/from16 v0, p2

    if-ne v9, v0, :cond_0

    .line 719
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 722
    if-nez v10, :cond_9

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 726
    const/4 v14, 0x0

    .line 730
    .local v14, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v16

    .line 735
    .end local v14    # "offset":I
    .local v16, "value":Ljava/lang/String;
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 738
    return-object v16

    .line 581
    .end local v16    # "value":Ljava/lang/String;
    :cond_0
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v9, v0, :cond_1

    .line 582
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "unclosed.str"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 585
    :cond_1
    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v9, v0, :cond_5

    .line 586
    if-nez v10, :cond_4

    .line 587
    const/4 v10, 0x1

    .line 589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v12, v21, 0x2

    .line 591
    .local v12, "newCapcity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v12, :cond_2

    .line 592
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 594
    :cond_2
    new-array v13, v12, [C

    .line 595
    .local v13, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 601
    .end local v12    # "newCapcity":I
    .end local v13    # "newsbuf":[C
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    .line 604
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 606
    sparse-switch v9, :sswitch_data_0

    .line 699
    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 700
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "unclosed.str.lit"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 608
    :sswitch_0
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 609
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 612
    :sswitch_1
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 613
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 616
    :sswitch_2
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 617
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 620
    :sswitch_3
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 621
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 624
    :sswitch_4
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 625
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 628
    :sswitch_5
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 629
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 632
    :sswitch_6
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 633
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 636
    :sswitch_7
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 637
    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 640
    :sswitch_8
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x8

    .line 641
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 644
    :sswitch_9
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x9

    .line 645
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 648
    :sswitch_a
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xa

    .line 649
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 652
    :sswitch_b
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xb

    .line 653
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 657
    :sswitch_c
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xc

    .line 658
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 661
    :sswitch_d
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xd

    .line 662
    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 665
    :sswitch_e
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x22

    .line 666
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 669
    :sswitch_f
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x27

    .line 670
    const/16 v21, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 673
    :sswitch_10
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x2f

    .line 674
    const/16 v21, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 677
    :sswitch_11
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x5c

    .line 678
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 681
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 682
    .local v17, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 684
    .local v18, "x2":C
    sget-object v21, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v21, v21, v17

    mul-int/lit8 v21, v21, 0x10

    sget-object v22, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v22, v22, v18

    add-int v20, v21, v22

    .line 685
    .local v20, "x_val":I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 686
    .local v19, "x_char":C
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v19

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 690
    .end local v17    # "x1":C
    .end local v18    # "x2":C
    .end local v19    # "x_char":C
    .end local v20    # "x_val":I
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v5, v9

    .line 691
    .local v5, "c1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v6, v9

    .line 692
    .local v6, "c2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v7, v9

    .line 693
    .local v7, "c3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v8, v9

    .line 694
    .local v8, "c4":C
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-char v5, v22, v23

    const/16 v23, 0x1

    aput-char v6, v22, v23

    const/16 v23, 0x2

    aput-char v7, v22, v23

    const/16 v23, 0x3

    aput-char v8, v22, v23

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([C)V

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 695
    .local v15, "val":I
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v15

    .line 696
    int-to-char v0, v15

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 705
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "c4":C
    .end local v15    # "val":I
    :cond_5
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 707
    if-nez v10, :cond_6

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 712
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 713
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 715
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v9, v21, v22

    goto/16 :goto_0

    .line 728
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v14, v21, 0x1

    .restart local v14    # "offset":I
    goto/16 :goto_1

    .line 732
    .end local v14    # "offset":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 606
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 11
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v10, 0x6c

    const/4 v7, 0x1

    .line 746
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 747
    .local v4, "firstIdentifierFlags":[Z
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 749
    .local v2, "first":C
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v9, v4

    if-ge v8, v9, :cond_0

    aget-boolean v8, v4, v2

    if-eqz v8, :cond_1

    :cond_0
    move v3, v7

    .line 750
    .local v3, "firstFlag":Z
    :goto_0
    if-nez v3, :cond_2

    .line 751
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal identifier : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 749
    .end local v3    # "firstFlag":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 754
    .restart local v3    # "firstFlag":Z
    :cond_2
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 756
    .local v6, "identifierFlags":[Z
    move v5, v2

    .line 758
    .local v5, "hash":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 759
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 762
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 764
    .local v1, "chLocal":C
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 765
    aget-boolean v7, v6, v1

    if-nez v7, :cond_3

    .line 776
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 777
    const/16 v7, 0x12

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 779
    const v0, 0x33c587

    .line 780
    .local v0, "NULL_HASH":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    const v7, 0x33c587

    if-ne v5, v7, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    .line 782
    const/4 v7, 0x0

    .line 787
    :goto_2
    return-object v7

    .line 770
    .end local v0    # "NULL_HASH":I
    :cond_3
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v1

    .line 772
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_1

    .line 787
    .restart local v0    # "NULL_HASH":I
    :cond_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v7, v8, v5, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 12
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "serperator"    # C

    .prologue
    const/16 v11, 0x6c

    const/16 v8, 0x22

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1087
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1089
    const/4 v3, 0x0

    .line 1090
    .local v3, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1092
    .local v0, "chLocal":C
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_2

    .line 1093
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    .line 1094
    add-int/lit8 v3, v4, 0x3

    .line 1095
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1101
    if-ne v0, p2, :cond_1

    .line 1102
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1104
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1147
    :goto_0
    return-object v6

    .line 1097
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_0
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1098
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1107
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1112
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    if-eq v0, v8, :cond_3

    .line 1113
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1114
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1119
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "hash":I
    move v3, v4

    .line 1121
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1122
    if-ne v0, v8, :cond_4

    .line 1125
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x0

    add-int/lit8 v5, v7, 0x1

    .line 1126
    .local v5, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v5

    add-int/lit8 v2, v7, -0x1

    .line 1127
    .local v2, "len":I
    invoke-virtual {p0, v5, v2, v1, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1128
    .local v6, "strVal":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1140
    if-ne v0, p2, :cond_5

    .line 1141
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1142
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1143
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1132
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_4
    mul-int/lit8 v7, v1, 0x1f

    add-int v1, v7, v0

    .line 1134
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_6

    .line 1135
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1136
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1146
    .restart local v2    # "len":I
    .restart local v5    # "start":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_5
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_6
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1
.end method

.method public final scanTreeSet()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 1263
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 1264
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1268
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1269
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1273
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_2

    .line 1274
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1278
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_3

    .line 1279
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1283
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    .line 1284
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1288
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_5

    .line 1289
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1291
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1293
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    .line 1294
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1298
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    .line 1299
    :cond_7
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1303
    return-void

    .line 1301
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanTrue()V
    .locals 2

    .prologue
    .line 1234
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 1235
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1239
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1240
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1244
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 1245
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1247
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1249
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 1250
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1254
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    .line 1256
    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1260
    return-void

    .line 1258
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanUndefined()V
    .locals 5

    .prologue
    const/16 v4, 0x6e

    const/16 v3, 0x65

    const/16 v2, 0x64

    .line 1351
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    .line 1352
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1356
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_1

    .line 1357
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1361
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_2

    .line 1362
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1366
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_3

    .line 1367
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1371
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    .line 1372
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1374
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1376
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_5

    .line 1377
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1381
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_6

    .line 1382
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1384
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1386
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_7

    .line 1387
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1390
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_8

    .line 1391
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1395
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 1397
    :cond_9
    const/16 v0, 0x17

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1401
    return-void

    .line 1399
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipWhitespace()V
    .locals 2

    .prologue
    .line 1482
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 1489
    :cond_0
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, ""

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
