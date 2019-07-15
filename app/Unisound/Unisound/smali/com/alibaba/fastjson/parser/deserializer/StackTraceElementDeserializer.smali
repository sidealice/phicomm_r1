.class public Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
.super Ljava/lang/Object;
.source "StackTraceElementDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v4

    .line 19
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 20
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 21
    const/4 v7, 0x0

    .line 112
    :goto_0
    return-object v7

    .line 24
    :cond_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_1

    .line 25
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    .local v0, "declaringClass":Ljava/lang/String;
    const/4 v6, 0x0

    .line 30
    .local v6, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 31
    .local v2, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 35
    .local v5, "lineNumber":I
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 38
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    .line 39
    const/16 v7, 0x10

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 112
    :goto_1
    new-instance v7, Ljava/lang/StackTraceElement;

    invoke-direct {v7, v0, v6, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_4

    .line 43
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 49
    :cond_4
    const/4 v7, 0x4

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 50
    const-string v7, "className"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 51
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 52
    const/4 v0, 0x0

    .line 107
    :cond_5
    :goto_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    .line 108
    const/16 v7, 0x10

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 53
    :cond_6
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 54
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 56
    :cond_7
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 58
    :cond_8
    const-string v7, "methodName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 59
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_9

    .line 60
    const/4 v6, 0x0

    goto :goto_2

    .line 61
    :cond_9
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    .line 62
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 64
    :cond_a
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 66
    :cond_b
    const-string v7, "fileName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 67
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_c

    .line 68
    const/4 v2, 0x0

    goto :goto_2

    .line 69
    :cond_c
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_d

    .line 70
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 72
    :cond_d
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 74
    :cond_e
    const-string v7, "lineNumber"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 75
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_f

    .line 76
    const/4 v5, 0x0

    goto :goto_2

    .line 77
    :cond_f
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 78
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    goto/16 :goto_2

    .line 80
    :cond_10
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 82
    :cond_11
    const-string v7, "nativeMethod"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 83
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_12

    .line 84
    const/16 v7, 0x10

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 85
    :cond_12
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_13

    .line 86
    const/16 v7, 0x10

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 87
    :cond_13
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_14

    .line 88
    const/16 v7, 0x10

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 90
    :cond_14
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 92
    :cond_15
    sget-object v7, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v3, v7, :cond_17

    .line 93
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_16

    .line 94
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "elementType":Ljava/lang/String;
    const-string v7, "java.lang.StackTraceElement"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 96
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 99
    .end local v1    # "elementType":Ljava/lang/String;
    :cond_16
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5

    .line 100
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 104
    :cond_17
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0xc

    return v0
.end method
