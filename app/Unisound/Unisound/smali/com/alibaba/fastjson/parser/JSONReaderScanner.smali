.class public final Lcom/alibaba/fastjson/parser/JSONReaderScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONReaderScanner.java"


# static fields
.field public static BUF_INIT_LEN:I

.field private static final BUF_REF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private bufLength:I

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x2000

    sput v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_INIT_LEN:I

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 57
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "features"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    .line 62
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->features:I

    .line 64
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 65
    .local v0, "bufRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 67
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-nez v2, :cond_1

    .line 71
    sget v2, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_INIT_LEN:I

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 75
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p1, v2}, Ljava/io/Reader;->read([C)I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 83
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const v3, 0xfeff

    if-ne v2, v3, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 86
    :cond_2
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 45
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 49
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 50
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 53
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>([CII)V

    .line 54
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/io/CharArrayReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 90
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
    .line 143
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 1
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public final charAt(I)C
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x1a

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 93
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt p1, v3, :cond_4

    .line 94
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ne v3, v6, :cond_1

    .line 95
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-ge p1, v3, :cond_0

    .line 96
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v2, v2, p1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 101
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int v1, v3, v4

    .line 102
    .local v1, "rest":I
    if-lez v1, :cond_2

    .line 103
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v3, v4, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/Reader;->read([CII)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-nez v3, :cond_3

    .line 113
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "illegal stat, textLength is zero"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v3, v6, :cond_0

    .line 120
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 121
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr p1, v2

    .line 122
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 123
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 126
    .end local v1    # "rest":I
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v2, v2, p1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 252
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 255
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 256
    return-void
.end method

.method protected final copyTo(II[C)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    return-void
.end method

.method public final indexOf(CI)I
    .locals 3
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 130
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int v1, p2, v2

    .line 132
    .local v1, "offset":I
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int v0, v2, v1

    .line 133
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_0

    .line 134
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v2, v1

    .line 137
    :goto_1
    return v2

    .line 136
    :cond_0
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_1

    .line 137
    const/4 v2, -0x1

    goto :goto_1

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

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
    .locals 12

    .prologue
    const/16 v6, 0x1a

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 147
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 149
    .local v1, "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt v1, v7, :cond_6

    .line 150
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ne v7, v11, :cond_0

    .line 191
    :goto_0
    return v6

    .line 154
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-lez v7, :cond_2

    .line 156
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int v3, v7, v8

    .line 157
    .local v3, "offset":I
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v8, 0x22

    if-ne v7, v8, :cond_1

    .line 158
    add-int/lit8 v3, v3, -0x1

    .line 160
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v7, v3, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    .end local v3    # "offset":I
    :cond_2
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 164
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    .end local v1    # "index":I
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 167
    .restart local v1    # "index":I
    :try_start_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 168
    .local v5, "startPos":I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v7, v7

    sub-int v4, v7, v5

    .line 169
    .local v4, "readLength":I
    if-nez v4, :cond_3

    .line 170
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    new-array v2, v7, [C

    .line 171
    .local v2, "newBuf":[C
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v10, v10

    invoke-static {v7, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 173
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v7, v7

    sub-int v4, v7, v5

    .line 175
    .end local v2    # "newBuf":[C
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    invoke-virtual {v7, v8, v9, v4}, Ljava/io/Reader;->read([CII)I

    move-result v7

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-nez v7, :cond_4

    .line 181
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "illegal stat, textLength is zero"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    .end local v4    # "readLength":I
    .end local v5    # "startPos":I
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "readLength":I
    .restart local v5    # "startPos":I
    :cond_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ne v7, v11, :cond_5

    .line 185
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    goto :goto_0

    .line 188
    :cond_5
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 191
    .end local v4    # "readLength":I
    .end local v5    # "startPos":I
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v6, v6, v1

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 234
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 235
    .local v1, "offset":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 238
    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v0

    .line 240
    .local v0, "chLocal":C
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    .line 241
    .local v2, "sp":I
    const/16 v4, 0x4c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x53

    if-eq v0, v4, :cond_1

    const/16 v4, 0x42

    if-eq v0, v4, :cond_1

    const/16 v4, 0x46

    if-eq v0, v4, :cond_1

    const/16 v4, 0x44

    if-ne v0, v4, :cond_2

    .line 242
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 245
    :cond_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 246
    .local v3, "value":Ljava/lang/String;
    return-object v3
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->hasSpecial:Z

    if-nez v1, :cond_2

    .line 211
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v0, v1, 0x1

    .line 212
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 218
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 221
    .end local v0    # "offset":I
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sbuf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 226
    if-gez p2, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
