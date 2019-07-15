.class public Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "IntegerFieldDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v6, 0x10

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 24
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 25
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v2

    .line 26
    .local v2, "val":I
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 27
    if-nez p2, :cond_1

    .line 28
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v2    # "val":I
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local v2    # "val":I
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto :goto_0

    .line 33
    .end local v2    # "val":I
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, "value":Ljava/lang/Integer;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 42
    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_0

    .line 47
    :cond_3
    if-nez p2, :cond_5

    .line 48
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "obj":Ljava/lang/Object;
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 50
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p2, v3}, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
