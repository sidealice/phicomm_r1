.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Lcom/alibaba/fastjson/parser/AbstractJSONParser;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2

.field private static final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected context:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected final input:Ljava/lang/Object;

.field protected final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field private resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    .line 104
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .prologue
    .line 162
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/AbstractJSONParser;-><init>()V

    .line 82
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 89
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 90
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 98
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 100
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 101
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 170
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 171
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    .line 172
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 173
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 175
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 150
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I

    .prologue
    .line 154
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 155
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 159
    return-void
.end method

.method private addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 6
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .prologue
    const/4 v5, 0x0

    .line 1160
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1161
    .local v0, "i":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 1162
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 1163
    .local v2, "newLen":I
    new-array v1, v2, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1164
    .local v1, "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1165
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1167
    .end local v1    # "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v2    # "newLen":I
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object p1, v3, v0

    .line 1168
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4
    .param p1, "token"    # I

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 1279
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1280
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1285
    return-void

    .line 1282
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final accept(II)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "nextExpectToken"    # I

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 1289
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1290
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1295
    return-void

    .line 1292
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2
    .param p1, "task"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    return-void
.end method

.method public checkListResolve(Ljava/util/Collection;)V
    .locals 6
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    const/4 v5, 0x0

    .line 937
    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 938
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 939
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    move-object v1, p1

    .line 940
    check-cast v1, Ljava/util/List;

    .line 941
    .local v1, "list":Ljava/util/List;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v2

    .line 942
    .local v2, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V

    .line 943
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 944
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 952
    .end local v0    # "index":I
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v2

    .line 947
    .restart local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V

    .line 948
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 949
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0
.end method

.method public checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 956
    iget v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 957
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 958
    .local v0, "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 959
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V

    .line 960
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 961
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 963
    .end local v0    # "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;
    .end local v1    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 1301
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 1303
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1309
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1267
    return-void
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraProcessorsDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProvidersDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 926
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v0, v1, :cond_1

    .line 927
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 932
    :goto_1
    return-object v1

    .line 926
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getResolveStatus()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return v0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1312
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v7, :cond_1

    .line 1339
    :cond_0
    return-void

    .line 1316
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1317
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1318
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1319
    .local v6, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getFieldDeserializer()Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 1321
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v0, :cond_2

    .line 1317
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1325
    :cond_2
    const/4 v2, 0x0

    .line 1326
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1327
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 1330
    .end local v2    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getReferenceValue()Ljava/lang/String;

    move-result-object v3

    .line 1332
    .local v3, "ref":Ljava/lang/String;
    const-string v7, "$"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1333
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1337
    .local v4, "refValue":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1335
    .end local v4    # "refValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "refValue":Ljava/lang/Object;
    goto :goto_2
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 1270
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/16 v13, 0x12

    const/16 v12, 0xa

    const/4 v5, 0x0

    .line 1184
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v3

    .line 1185
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1261
    :pswitch_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getBufferPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1187
    :pswitch_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1188
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1189
    .local v5, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1256
    .end local v5    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 1192
    :pswitch_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1193
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 1194
    .local v7, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v7, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v5, v7

    .line 1195
    goto :goto_0

    .line 1197
    .end local v7    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1198
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v5, v0

    .line 1199
    goto :goto_0

    .line 1201
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :pswitch_4
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1202
    .local v4, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v4, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 1204
    .end local v4    # "object":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_5
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1205
    .local v1, "intValue":Ljava/lang/Number;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v5, v1

    .line 1206
    goto :goto_0

    .line 1208
    .end local v1    # "intValue":Ljava/lang/Number;
    :pswitch_6
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v10

    .line 1209
    .local v10, "value":Ljava/lang/Number;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v5, v10

    .line 1210
    goto :goto_0

    .line 1212
    .end local v10    # "value":Ljava/lang/Number;
    :pswitch_7
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 1213
    .local v6, "stringLiteral":Ljava/lang/String;
    const/16 v11, 0x10

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1215
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1216
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1219
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1222
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_2
    move-object v5, v6

    .line 1226
    goto :goto_0

    .line 1222
    .restart local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v11

    .line 1228
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v6    # "stringLiteral":Ljava/lang/String;
    :pswitch_8
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 1231
    :pswitch_9
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 1234
    :pswitch_a
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1235
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1237
    :pswitch_b
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1238
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1240
    :pswitch_c
    invoke-interface {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1242
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    if-eq v11, v13, :cond_3

    .line 1243
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1245
    :cond_3
    invoke-interface {v3, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1247
    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1248
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 1249
    .local v8, "time":J
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1251
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1253
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 1255
    .end local v8    # "time":J
    :pswitch_d
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1258
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unterminated json string, pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getBufferPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1185
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 559
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 564
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 569
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x10

    .line 573
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x15

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_1

    .line 574
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 577
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0xe

    if-eq v6, v7, :cond_2

    .line 578
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 581
    :cond_2
    const/4 v1, 0x0

    .line 582
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, p1, :cond_3

    .line 583
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 584
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 593
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 594
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, "i":I
    :goto_1
    :try_start_0
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 598
    :goto_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 599
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 644
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v6

    .line 585
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v2    # "i":I
    :cond_3
    const-class v6, Ljava/lang/String;

    if-ne v6, p1, :cond_4

    .line 586
    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 587
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 589
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 590
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 604
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v2    # "i":I
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_6

    .line 644
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 647
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 648
    return-void

    .line 608
    :cond_6
    :try_start_2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, p1, :cond_8

    .line 609
    sget-object v6, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 610
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v4    # "val":Ljava/lang/Object;
    :goto_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 639
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 596
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 611
    :cond_8
    const-class v6, Ljava/lang/String;

    if-ne v6, p1, :cond_b

    .line 613
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v10, :cond_9

    .line 614
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v7, 0x10

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 625
    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 617
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 618
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_a

    .line 619
    const/4 v5, 0x0

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 621
    .end local v5    # "value":Ljava/lang/String;
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 628
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    .line 629
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 630
    const/4 v4, 0x0

    .line 634
    :goto_5
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    goto :goto_3

    .line 632
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, p0, p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_5
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    .line 978
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 979
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x10

    .line 983
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v4

    .line 985
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x15

    if-eq v8, v9, :cond_0

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_1

    .line 986
    :cond_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 989
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0xe

    if-eq v8, v9, :cond_2

    .line 990
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syntax error, expect [, actual "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    invoke-static {v10}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 994
    :cond_2
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 996
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 997
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1001
    :goto_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 1002
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1082
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v8

    .line 1008
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1069
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 1073
    :goto_2
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1074
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1076
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 1077
    const/4 v8, 0x4

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 999
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :pswitch_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v7

    .line 1011
    .local v7, "value":Ljava/lang/Number;
    const/16 v8, 0x10

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 1014
    .end local v7    # "value":Ljava/lang/Number;
    :pswitch_2
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1015
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    .line 1019
    .restart local v7    # "value":Ljava/lang/Number;
    :goto_3
    const/16 v8, 0x10

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 1017
    .end local v7    # "value":Ljava/lang/Number;
    :cond_5
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Number;
    goto :goto_3

    .line 1022
    .end local v7    # "value":Ljava/lang/Number;
    :pswitch_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 1023
    .local v6, "stringLiteral":Ljava/lang/String;
    const/16 v8, 0x10

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1025
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1026
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1028
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 1032
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_2

    .line 1030
    :cond_6
    move-object v7, v6

    .local v7, "value":Ljava/lang/String;
    goto :goto_4

    .line 1034
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    move-object v7, v6

    .line 1037
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_2

    .line 1039
    .end local v6    # "stringLiteral":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :pswitch_4
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1040
    .local v7, "value":Ljava/lang/Boolean;
    const/16 v8, 0x10

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 1043
    .end local v7    # "value":Ljava/lang/Boolean;
    :pswitch_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1044
    .restart local v7    # "value":Ljava/lang/Boolean;
    const/16 v8, 0x10

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 1047
    .end local v7    # "value":Ljava/lang/Boolean;
    :pswitch_6
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1048
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1049
    .local v7, "value":Ljava/lang/Object;
    goto :goto_2

    .line 1051
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_7
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1052
    .local v3, "items":Ljava/util/Collection;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1053
    move-object v7, v3

    .line 1054
    .local v7, "value":Ljava/util/Collection;
    goto/16 :goto_2

    .line 1056
    .end local v3    # "items":Ljava/util/Collection;
    .end local v7    # "value":Ljava/util/Collection;
    :pswitch_8
    const/4 v7, 0x0

    .line 1057
    .local v7, "value":Ljava/lang/Object;
    const/4 v8, 0x4

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 1060
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_9
    const/4 v7, 0x0

    .line 1061
    .restart local v7    # "value":Ljava/lang/Object;
    const/4 v8, 0x4

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 1064
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_a
    const/16 v8, 0x10

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-void

    .line 1067
    :pswitch_b
    :try_start_2
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "unclosed jsonArray"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 14
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 651
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    .line 652
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 653
    const/4 v7, 0x0

    .line 761
    :goto_0
    return-object v7

    .line 656
    :cond_0
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xe

    if-eq v11, v12, :cond_1

    .line 657
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 660
    :cond_1
    array-length v11, p1

    new-array v7, v11, [Ljava/lang/Object;

    .line 661
    .local v7, "list":[Ljava/lang/Object;
    array-length v11, p1

    if-nez v11, :cond_3

    .line 662
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 664
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_2

    .line 665
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 668
    :cond_2
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 669
    const/4 v11, 0x0

    new-array v7, v11, [Ljava/lang/Object;

    goto :goto_0

    .line 672
    :cond_3
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 674
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, p1

    if-ge v4, v11, :cond_4

    .line 677
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    .line 678
    const/4 v9, 0x0

    .line 679
    .local v9, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 738
    .end local v9    # "value":Ljava/lang/Object;
    :goto_2
    aput-object v9, v7, v4

    .line 740
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_10

    .line 755
    :cond_4
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_13

    .line 756
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 681
    :cond_5
    aget-object v8, p1, v4

    .line 682
    .local v8, "type":Ljava/lang/reflect/Type;
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v11, :cond_6

    const-class v11, Ljava/lang/Integer;

    if-ne v8, v11, :cond_8

    .line 683
    :cond_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 684
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 685
    .local v9, "value":Ljava/lang/Integer;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 687
    .end local v9    # "value":Ljava/lang/Integer;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 688
    .local v9, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v9, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 690
    .end local v9    # "value":Ljava/lang/Object;
    :cond_8
    const-class v11, Ljava/lang/String;

    if-ne v8, v11, :cond_a

    .line 691
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    .line 692
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 693
    .local v9, "value":Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 695
    .end local v9    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 696
    .local v9, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v9, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 699
    .end local v9    # "value":Ljava/lang/Object;
    :cond_a
    const/4 v5, 0x0

    .line 700
    .local v5, "isArray":Z
    const/4 v1, 0x0

    .line 701
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_b

    .line 702
    instance-of v11, v8, Ljava/lang/Class;

    if-eqz v11, :cond_b

    move-object v0, v8

    .line 703
    check-cast v0, Ljava/lang/Class;

    .line 704
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 705
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 710
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    if-eqz v5, :cond_f

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xe

    if-eq v11, v12, :cond_f

    .line 711
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v10, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 714
    .local v2, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v3

    .line 716
    .local v3, "fastMatch":I
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_d

    .line 718
    :goto_3
    const/4 v11, 0x0

    invoke-interface {v2, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 719
    .local v6, "item":Ljava/lang/Object;
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_c

    .line 722
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 723
    :cond_c
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_e

    .line 731
    .end local v6    # "item":Ljava/lang/Object;
    :cond_d
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v10, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .line 732
    .restart local v9    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 726
    .end local v9    # "value":Ljava/lang/Object;
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_e
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 733
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v3    # "fastMatch":I
    .end local v6    # "item":Ljava/lang/Object;
    .end local v10    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_f
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 734
    .restart local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v11, 0x0

    invoke-interface {v2, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 744
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v5    # "isArray":Z
    .end local v8    # "type":Ljava/lang/reflect/Type;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_10
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-eq v11, v12, :cond_11

    .line 745
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 748
    :cond_11
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_12

    .line 749
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 674
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 751
    :cond_12
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    .line 759
    :cond_13
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 847
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 848
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 849
    const/4 v2, 0x0

    .line 911
    :goto_0
    return-object v2

    :cond_0
    move-object v9, p1

    .line 852
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 854
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v9, v1

    if-eq v9, v12, :cond_1

    .line 855
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 858
    :cond_1
    aget-object v0, v1, v11

    .line 860
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v9, v0, Ljava/lang/Class;

    if-eqz v9, :cond_2

    .line 861
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 866
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v9, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_5

    move-object v8, v0

    .line 867
    check-cast v8, Ljava/lang/reflect/WildcardType;

    .line 870
    .local v8, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v7, v9, v11

    .line 873
    .local v7, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v9, Ljava/lang/Object;

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 874
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    .line 876
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 878
    :cond_3
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 882
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v7, Ljava/lang/Class;

    .end local v7    # "upperBoundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v7, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 890
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_5
    instance-of v9, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_7

    move-object v6, v0

    .line 891
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 892
    .local v6, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 894
    .local v4, "bounds":[Ljava/lang/reflect/Type;
    array-length v9, v4

    if-eq v9, v12, :cond_6

    .line 895
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 898
    :cond_6
    aget-object v3, v4, v11

    .line 899
    .local v3, "boundType":Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_7

    .line 900
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "boundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 906
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "bounds":[Ljava/lang/reflect/Type;
    .end local v6    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_7
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    move-object v5, v0

    .line 907
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 909
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 914
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TODO : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public parseKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1175
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1180
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 971
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 972
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    .line 973
    return-object v0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 525
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 526
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 548
    :goto_0
    return-object v0

    .line 530
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 531
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->unwrap(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 532
    const-class v4, [B

    if-ne p1, v4, :cond_1

    .line 533
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v0

    .line 534
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 538
    .end local v0    # "bytes":[B
    :cond_1
    const-class v4, [C

    if-ne p1, v4, :cond_2

    .line 539
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "strVal":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 541
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 545
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 548
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, p0, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v2

    .line 550
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    throw v2

    .line 551
    .end local v2    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 967
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 193
    .local v14, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 194
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 195
    const/16 p1, 0x0

    .line 504
    .end local p1    # "object":Ljava/util/Map;
    :goto_0
    return-object p1

    .line 198
    .restart local p1    # "object":Ljava/util/Map;
    :cond_0
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 199
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "syntax error, expect {, actual "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 202
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5

    .line 204
    .local v5, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const/16 v22, 0x0

    .line 206
    .local v22, "setContextFlag":Z
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 207
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 208
    .local v3, "ch":C
    sget-object v28, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 209
    :goto_2
    const/16 v28, 0x2c

    move/from16 v0, v28

    if-ne v3, v0, :cond_3

    .line 210
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 211
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 212
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    goto :goto_2

    .line 216
    :cond_3
    const/4 v11, 0x0

    .line 218
    .local v11, "isObjectKey":Z
    const/16 v28, 0x22

    move/from16 v0, v28

    if-ne v3, v0, :cond_4

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v28, v0

    const/16 v29, 0x22

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v13

    .line 220
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 221
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 222
    const/16 v28, 0x3a

    move/from16 v0, v28

    if-eq v3, v0, :cond_f

    .line 223
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "expect \':\' at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", name "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    .end local v3    # "ch":C
    .end local v11    # "isObjectKey":Z
    .end local v13    # "key":Ljava/lang/String;
    .end local p1    # "object":Ljava/util/Map;
    :catchall_0
    move-exception v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v28

    .line 225
    .restart local v3    # "ch":C
    .restart local v11    # "isObjectKey":Z
    .restart local p1    # "object":Ljava/util/Map;
    :cond_4
    const/16 v28, 0x7d

    move/from16 v0, v28

    if-ne v3, v0, :cond_5

    .line 226
    :try_start_1
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 227
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 228
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 230
    :cond_5
    const/16 v28, 0x27

    move/from16 v0, v28

    if-ne v3, v0, :cond_7

    .line 231
    :try_start_2
    sget-object v28, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 232
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    const-string v29, "syntax error"

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 235
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v28, v0

    const/16 v29, 0x27

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v13

    .line 236
    .restart local v13    # "key":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 237
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 238
    const/16 v28, 0x3a

    move/from16 v0, v28

    if-eq v3, v0, :cond_f

    .line 239
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "expect \':\' at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 241
    .end local v13    # "key":Ljava/lang/String;
    :cond_7
    const/16 v28, 0x1a

    move/from16 v0, v28

    if-ne v3, v0, :cond_8

    .line 242
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    const-string v29, "syntax error"

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 243
    :cond_8
    const/16 v28, 0x2c

    move/from16 v0, v28

    if-ne v3, v0, :cond_9

    .line 244
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    const-string v29, "syntax error"

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 245
    :cond_9
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v3, v0, :cond_a

    const/16 v28, 0x39

    move/from16 v0, v28

    if-le v3, v0, :cond_b

    :cond_a
    const/16 v28, 0x2d

    move/from16 v0, v28

    if-ne v3, v0, :cond_d

    .line 246
    :cond_b
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 247
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 248
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 249
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v13

    .line 253
    .local v13, "key":Ljava/lang/Number;
    :goto_3
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 254
    const/16 v28, 0x3a

    move/from16 v0, v28

    if-eq v3, v0, :cond_f

    .line 255
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "expect \':\' at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", name "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 251
    .end local v13    # "key":Ljava/lang/Number;
    :cond_c
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v13

    .restart local v13    # "key":Ljava/lang/Number;
    goto :goto_3

    .line 257
    .end local v13    # "key":Ljava/lang/Number;
    :cond_d
    const/16 v28, 0x7b

    move/from16 v0, v28

    if-eq v3, v0, :cond_e

    const/16 v28, 0x5b

    move/from16 v0, v28

    if-ne v3, v0, :cond_11

    .line 258
    :cond_e
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    .line 260
    .local v13, "key":Ljava/lang/Object;
    const/4 v11, 0x1

    .line 274
    .end local v13    # "key":Ljava/lang/Object;
    :cond_f
    if-nez v11, :cond_10

    .line 275
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 276
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 279
    :cond_10
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 281
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 283
    sget-object v28, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v28

    if-ne v13, v0, :cond_19

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v28, v0

    const/16 v29, 0x22

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v26

    .line 285
    .local v26, "typeName":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 287
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_13

    .line 288
    sget-object v28, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 262
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "typeName":Ljava/lang/String;
    :cond_11
    sget-object v28, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v28

    if-nez v28, :cond_12

    .line 263
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    const-string v29, "syntax error"

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 266
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v13

    .line 267
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 268
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 269
    const/16 v28, 0x3a

    move/from16 v0, v28

    if-eq v3, v0, :cond_f

    .line 270
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "expect \':\' at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", actual "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 292
    .end local v13    # "key":Ljava/lang/String;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "typeName":Ljava/lang/String;
    :cond_13
    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 293
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 294
    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    const/4 v10, 0x0

    .line 297
    .local v10, "instance":Ljava/lang/Object;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 298
    .local v7, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move/from16 v28, v0

    if-eqz v28, :cond_14

    .line 299
    check-cast v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .end local v7    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    .line 302
    .end local v10    # "instance":Ljava/lang/Object;
    :cond_14
    if-nez v10, :cond_15

    .line 303
    const-class v28, Ljava/lang/Cloneable;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_16

    .line 304
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 p1, v10

    goto/16 :goto_0

    .line 306
    :cond_16
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v10

    .restart local v10    # "instance":Ljava/lang/Object;
    goto :goto_4

    .line 311
    .end local v10    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 312
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    const-string v29, "create instance error"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v28

    .line 316
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_17
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v28, v0

    if-eqz v28, :cond_18

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v28, v0

    if-nez v28, :cond_18

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 322
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 323
    .restart local v7    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v7, v0, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object p1

    .line 504
    .end local p1    # "object":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 326
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v26    # "typeName":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_19
    :try_start_6
    const-string v28, "$ref"

    move-object/from16 v0, v28

    if-ne v13, v0, :cond_26

    .line 327
    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 328
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 329
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v19

    .line 330
    .local v19, "ref":Ljava/lang/String;
    const/16 v28, 0xd

    move/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 332
    const/16 v20, 0x0

    .line 333
    .local v20, "refValue":Ljava/lang/Object;
    const-string v28, "@"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v28

    if-eqz v28, :cond_23

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v24

    .line 336
    .local v24, "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v25

    .line 337
    .local v25, "thisObj":Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v28, v0

    if-nez v28, :cond_1a

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 338
    :cond_1a
    move-object/from16 v20, v25

    .end local v20    # "refValue":Ljava/lang/Object;
    :cond_1b
    :goto_5
    move-object/from16 p1, v20

    .line 368
    .end local v24    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v25    # "thisObj":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :goto_6
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_24

    .line 369
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    const-string v29, "syntax error"

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 339
    .restart local v20    # "refValue":Ljava/lang/Object;
    .restart local v24    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v25    # "thisObj":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v28

    if-eqz v28, :cond_1b

    .line 340
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v20

    goto :goto_5

    .line 343
    .end local v24    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v25    # "thisObj":Ljava/lang/Object;
    :cond_1d
    const-string v28, ".."

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 344
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v17

    .line 345
    .local v17, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_1e

    .line 346
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "refValue":Ljava/lang/Object;
    :goto_7
    move-object/from16 p1, v20

    .line 351
    goto :goto_6

    .line 348
    .restart local v20    # "refValue":Ljava/lang/Object;
    :cond_1e
    new-instance v28, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 349
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_7

    .line 351
    .end local v17    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1f
    const-string v28, "$"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 352
    move-object/from16 v21, v5

    .line 353
    .local v21, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_8
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v28

    if-eqz v28, :cond_20

    .line 354
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v21

    goto :goto_8

    .line 357
    :cond_20
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_21

    .line 358
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "refValue":Ljava/lang/Object;
    :goto_9
    move-object/from16 p1, v20

    .line 363
    goto/16 :goto_6

    .line 360
    .restart local v20    # "refValue":Ljava/lang/Object;
    :cond_21
    new-instance v28, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 361
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_9

    .line 364
    .end local v21    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_22
    new-instance v28, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 365
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    :cond_23
    move-object/from16 p1, v20

    goto/16 :goto_6

    .line 371
    .end local v20    # "refValue":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :cond_24
    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 375
    .end local v19    # "ref":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_25
    :try_start_7
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "illegal ref, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 379
    :cond_26
    if-nez v22, :cond_27

    .line 380
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 381
    const/16 v22, 0x1

    .line 384
    :cond_27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_28

    .line 385
    if-nez v13, :cond_2b

    const-string v13, "null"

    .line 389
    :cond_28
    :goto_a
    const/16 v28, 0x22

    move/from16 v0, v28

    if-ne v3, v0, :cond_2c

    .line 390
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 391
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v23

    .line 392
    .local v23, "strValue":Ljava/lang/String;
    move-object/from16 v27, v23

    .line 394
    .local v27, "value":Ljava/lang/String;
    sget-object v28, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 395
    new-instance v12, Lcom/alibaba/fastjson/parser/JSONScanner;

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 396
    .local v12, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v28

    if-eqz v28, :cond_29

    .line 397
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    .line 399
    .end local v27    # "value":Ljava/lang/String;
    :cond_29
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 402
    .end local v12    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_2a
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v23    # "strValue":Ljava/lang/String;
    :goto_b
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 486
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 487
    const/16 v28, 0x2c

    move/from16 v0, v28

    if-ne v3, v0, :cond_3c

    .line 488
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 385
    :cond_2b
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .line 403
    :cond_2c
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v3, v0, :cond_2d

    const/16 v28, 0x39

    move/from16 v0, v28

    if-le v3, v0, :cond_2e

    :cond_2d
    const/16 v28, 0x2d

    move/from16 v0, v28

    if-ne v3, v0, :cond_30

    .line 404
    :cond_2e
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 405
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2f

    .line 406
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v27

    .line 411
    .local v27, "value":Ljava/lang/Number;
    :goto_c
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 408
    .end local v27    # "value":Ljava/lang/Number;
    :cond_2f
    sget-object v28, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v28

    move/from16 v0, v28

    invoke-interface {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v27

    .restart local v27    # "value":Ljava/lang/Number;
    goto :goto_c

    .line 412
    .end local v27    # "value":Ljava/lang/Number;
    :cond_30
    const/16 v28, 0x5b

    move/from16 v0, v28

    if-ne v3, v0, :cond_32

    .line 413
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 414
    new-instance v15, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v15}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 415
    .local v15, "list":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 416
    move-object/from16 v27, v15

    .line 417
    .local v27, "value":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_31

    .line 420
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 422
    :cond_31
    :try_start_8
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 425
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    const-string v29, "syntax error"

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 427
    .end local v15    # "list":Lcom/alibaba/fastjson/JSONArray;
    .end local v27    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_32
    const/16 v28, 0x7b

    move/from16 v0, v28

    if-ne v3, v0, :cond_39

    .line 428
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 430
    if-eqz p2, :cond_36

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/lang/Integer;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_36

    const/16 v18, 0x1

    .line 432
    .local v18, "parentIsArray":Z
    :goto_d
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 433
    .local v9, "input":Lcom/alibaba/fastjson/JSONObject;
    const/4 v6, 0x0

    .line 435
    .local v6, "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v18, :cond_33

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v6

    .line 439
    :cond_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 440
    .local v16, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_34

    move-object/from16 v0, v16

    if-eq v9, v0, :cond_34

    .line 441
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 444
    :cond_34
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_37

    .line 447
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :goto_e
    if-eqz v18, :cond_35

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 456
    :cond_35
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_38

    .line 457
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 459
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 430
    .end local v6    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v18    # "parentIsArray":Z
    :cond_36
    const/16 v18, 0x0

    goto :goto_d

    .line 449
    .restart local v6    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "input":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "obj":Ljava/lang/Object;
    .restart local v18    # "parentIsArray":Z
    :cond_37
    :try_start_9
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 461
    :cond_38
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 464
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "syntax error, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 467
    .end local v6    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v18    # "parentIsArray":Z
    :cond_39
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v27

    .line 470
    .local v27, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3a

    .line 471
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 473
    :cond_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3b

    .line 476
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 478
    :cond_3b
    :try_start_a
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v28

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 481
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "syntax error, position at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", name "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 490
    .end local v27    # "value":Ljava/lang/Object;
    :cond_3c
    const/16 v28, 0x7d

    move/from16 v0, v28

    if-ne v3, v0, :cond_3d

    .line 491
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 492
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 493
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 495
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 499
    :cond_3d
    :try_start_b
    new-instance v28, Lcom/alibaba/fastjson/JSONException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "syntax error, position at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", name "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 765
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 766
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v9

    .line 768
    .local v9, "setters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 769
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syntax error, expect {, actual "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 781
    .local v8, "key":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_2

    .line 782
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 774
    .end local v8    # "key":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 776
    .restart local v8    # "key":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 777
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_0

    .line 778
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 844
    :goto_0
    return-void

    .line 788
    :cond_2
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 789
    .local v3, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v3, :cond_4

    if-eqz v8, :cond_4

    .line 790
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 791
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 792
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 798
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v3    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_4
    if-nez v3, :cond_6

    .line 799
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 800
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setter not found, class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 803
    :cond_5
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 804
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 806
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 807
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 813
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v2

    .line 814
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 816
    .local v4, "fieldType":Ljava/lang/reflect/Type;
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v10, :cond_7

    .line 817
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 818
    sget-object v10, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v4, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 832
    .local v5, "fieldValue":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v3, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 835
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 839
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 840
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    .line 819
    .end local v5    # "fieldValue":Ljava/lang/Object;
    :cond_7
    const-class v10, Ljava/lang/String;

    if-ne v2, v10, :cond_8

    .line 820
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 821
    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/StringCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 822
    .end local v5    # "fieldValue":Ljava/lang/Object;
    :cond_8
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v10, :cond_9

    .line 823
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 824
    sget-object v10, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v4, v11}, Lcom/alibaba/fastjson/serializer/LongCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 826
    .end local v5    # "fieldValue":Ljava/lang/Object;
    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 828
    .local v6, "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 829
    const/4 v10, 0x0

    invoke-interface {v6, p0, v4, v10}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "fieldValue":Ljava/lang/Object;
    goto :goto_1
.end method

.method public popContext()V
    .locals 3

    .prologue
    .line 1131
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1136
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1137
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    goto :goto_0
.end method

.method public setConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 515
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1
    .param p1, "parent"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1149
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return-object v0

    .line 1153
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1154
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1141
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    const/4 v0, 0x0

    .line 1145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    goto :goto_0
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 1
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .prologue
    .line 1124
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1127
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 143
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 139
    return-void
.end method

.method public setResolveStatus(I)V
    .locals 0
    .param p1, "resolveStatus"    # I

    .prologue
    .line 922
    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 923
    return-void
.end method
